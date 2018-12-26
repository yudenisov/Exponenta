; include file for changing ip functions

Func _Apply_Button($a)
	If GUICtrlRead($DHCPCheck[$a]) = $GUI_CHECKED Then
		_Set_DHCP(GUICtrlRead($Adapter))
	Else
		_Set_ip(GUICtrlRead($Adapter), _Check_Ip_Format(GUICtrlRead($IPaddressSet[$a]),"address"), _Check_Ip_Format(GUICtrlRead($SubnetSet[$a]), "subnet"), _Check_Ip_Format(GUICtrlRead($DefaultGWSet[$a]),"address"), _Check_Ip_Format(GUICtrlRead($DNSSet[$a]),"address"), _Check_Ip_Format(GUICtrlRead($WINSSet[$a]),"address"))
	EndIf
EndFunc

Func _Set_ip($name, $IP, $Subnet, $DefaultGW, $DNS, $WINS)
	If $IP = "0.0.0.0" or $Subnet = "0.0.0.0" Then
		msgbox (0, "", "Incorrect address format" & @CRLF & "Please check the address and try again")
		Return
	EndIf
	$run = 999
	$iperror = 999
	$gwerror = 999
	$dnserror = 999
	$winserror = 999
	$ipaddy[0] = $IP
	$subnetaddy[0] = $Subnet

	ProgressOn($WinTitle, "Changing IP Address")
	GUICtrlSetData($statuslabel, "")

	If Not $DefaultGW = "0.0.0.0" And Not $DNS = "0.0.0.0" And Not $WINS = "0.0.0.0" Then
		If $DefaultGW = "0.0.0.0" Then
			ProgressSet(20, "Setting Static IP settings.")
			$run = RunWait(@ComSpec & " /c " & 'netsh interface ip set address name="' & $name & '" static ' & $IP & " " & $Subnet, "", $show)
		Else
			ProgressSet(20, "Setting Static IP and gateway settings.")
			$run = RunWait(@ComSpec & " /c " & 'netsh interface ip set address name="' & $name & '" static ' & $IP & " " & $Subnet & " " & $DefaultGW & " 1", "", $show)
		EndIf
		If Not $DNS = "0.0.0.0" Then
			ProgressSet(50, "Setting DNS information.")
			$rundns = RunWait(@ComSpec & " /c " & 'netsh interface ip set dns name="' & $name & '" static ' & $DNS, "", $show)
		EndIf
		If Not $WINS = "0.0.0.0" Then
			ProgressSet(50, "Setting WINS information")
			$runwins = RunWait(@ComSpec & " /c " & 'netsh interface ip set wins name="' & $name & '" static ' & $WINS, "", $show)
		EndIf
	Else
		$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapter", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
		$enableDHCP = 100
		For $objItem In $colItems
			If $objItem.NetConnectionID = $name Then
				$name2 = $objItem.caption
			EndIf
		Next
		$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
		For $objItem In $colItems
			If $objItem.caption = $name2 Then
				ProgressSet(50, "Setting Static IP settings.")
				$iperror = $objItem.EnableStatic($ipaddy, $subnetaddy)
			EndIf
		Next
	EndIf
	ProgressSet(100, "Done!")
	ProgressOff()
	If $run = 0 Then
		MsgBox(0,$WinTitle, $NoteString3)
		GUICtrlSetData($statuslabel, $NoteString3)
	ElseIf Not $iperror = 0 And Not $iperror = 999 Then
		MsgBox(0, "", "IP change failed, please check settings and try again" & @CRLF & "WMI returned with error: " & @CRLF & _return_error_info($iperror))
	Else
		MsgBox(0,$WinTitle, $NoteString0)
		GUICtrlSetData($statuslabel, $NoteString0)
	EndIf

	_Refresh_Config()
EndFunc

Func _Set_DHCP($name)
	ProgressOn($WinTitle, "Changing IP Address")
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapter", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
	$dhcperror = 999
	For $objItem In $colItems
		If $objItem.NetConnectionID = $name Then
			$name = $objItem.caption
		EndIf
	Next

	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
	For $objItem In $colItems
		If $objItem.caption = $name Then
			ProgressSet(0, "Setting DHCP settings and getting address from DHCP server")
			ProgressSet(33, "Requesting new address.")
			$objItem.ReleaseDHCPLease()
			$objItem.RenewDHCPLease()
			$dhcperror = $objItem.EnableDHCP()
			ProgressSet(66, "Registering DNS.")
			$objItem.SetDynamicDNSRegistration
			ProgressSet(100, "Done!")
		EndIf
	Next
	sleep(50)
	ProgressOff()
	If Not $dhcperror = 0 Then MsgBox(0, "", "Change Failed, please check settings and try again" & @CRLF & "WMI returned with error: " & @CRLF & _return_error_info($dhcperror))
	_Refresh_Config()
EndFunc

Func _Check_Ip_Format($IP, $type) ;checks ip address
	$errorout = "0.0.0.0"
	If $IP = "" Then $IP = $errorout
	$test = StringSplit($IP, ".")
;	If Not $test[0] = 4 Then Return $errorout
	Select
		Case $type = "address"
			If $test[1] > 224 Then Return $errorout
			If $test[2] > 255 or $test[3] > 255 or $test[4] > 255 Then Return $errorout

		Case $type = "subnet"
			If $test[4] > 254 Or $test[3] > 255 Or $test[2] > 255 Or $test[1] > 255 Then Return $errorout
			If $test[4] > 0 Then
				If Not $test[3] = 255 Or Not $test[2] = 255 Or Not $test[1] = 255 Then Return $errorout
			ElseIf $test[4] = 0 And $test[3] > 0 Then
				If Not $test[2] = 255 And Not $test[1] = 255 Then Return $errorout
			ElseIf $test[4] = 0 And $test[3] = 0 And $test[2] > 0 Then
				If Not $test[1] = 255 Then Return $errorout
			ElseIf $test[4] = 0 And $test[3] = 0 And $test[2] = 0 And $test[1] = 0 Then
				Return $errorout
			EndIf
	EndSelect
	Return $IP
EndFunc

Func _return_error_info($a)
	Select
		Case $a = 1
			Return "Successful completion, reboot required."
		Case $a = 64
			Return "Method not supported on this platform."
		Case $a = 65
			Return "Unknown failure."
		Case $a = 66
			Return "Invalid subnet mask."
		Case $a = 67
			Return "An error occurred while processing an instance that was returned."
		Case $a = 68
			Return "Invalid input parameter."
		Case $a = 69
			Return "More than five gateways specified."
		Case $a = 70
			Return "Invalid IP address."
		Case $a = 71
			Return "Invalid gateway IP address."
		Case $a = 72
			Return "An error occurred while accessing the registry for the requested information."
		Case $a = 73
			Return "Invalid domain name."
		Case $a = 74
			Return "Invalid host name."
		Case $a = 75
			Return "No primary or secondary WINS server defined."
		Case $a = 76
			Return "Invalid file."
		Case $a = 77
			Return "Invalid system path."
		Case $a = 78
			Return "File copy failed."
		Case $a = 79
			Return "Invalid security parameter."
		Case $a = 80
			Return "Unable to configure TCP/IP service."
		Case $a = 81
			Return "Unable to configure DHCP service."
		Case $a = 82
			Return "Unable to renew DHCP lease."
		Case $a = 83
			Return "Unable to release DHCP lease."
		Case $a = 84
			Return "IP not enabled on adapter."
		Case $a = 85
			Return "IPX not enabled on adapter."
		Case $a = 86
			Return "Frame or network number bounds error."
		Case $a = 87
			Return "Invalid frame type."
		Case $a = 88
			Return "Invalid network number."
		Case $a = 89
			Return "Duplicate network number."
		Case $a = 90
			Return "Parameter out of bounds."
		Case $a = 91
			Return "Access denied."
		Case $a = 92
			Return "Out of memory."
		Case $a = 93
			Return "Already exists."
		Case $a = 94
			Return "Path, file, or object not found."
		Case $a = 95
			Return "Unable to notify service."
		Case $a = 96
			Return "Unable to notify DNS service."
		Case $a = 97
			Return "Interface not configurable."
		Case $a = 98
			Return "Not all DHCP leases could be released or renewed."
		Case $a = 100
			Return "DHCP not enabled on adapter."
		Case $a = 999
			Return "Failed to run command."
	EndSelect
EndFunc
