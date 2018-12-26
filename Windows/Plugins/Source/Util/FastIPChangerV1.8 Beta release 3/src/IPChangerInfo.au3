; include file for infomation functions

Func _Refresh_Config()
	SplashTextOn($WinTitle, "Please Wait...", 170, 40)
	GUICtrlDelete($label1)
	GUICtrlDelete($label2)
	GUICtrlDelete($label3)
	GUICtrlDelete($label4)
	GUICtrlDelete($label5)
	GUICtrlDelete($label6)
	GUICtrlDelete($label7)
	GUICtrlSetData($statuslabel, "")
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapter", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
	for $objItem in $colItems
		If $objItem.NetConnectionID = GUICtrlRead($Adapter) Then
			$Adapter2 = $objItem.caption
			ExitLoop
		EndIf
	Next
	$IPaddress = _Refresh_IP($Adapter2)
	$Subnet = _Refresh_Subnet($Adapter2)
	$DefaultGW = _Refresh_DefaultGW($Adapter2)
	$DNSServer = _Refresh_DNSServer($Adapter2)
	$WINSServer = _Refresh_WINS($Adapter2)
	$DHCP = _Test_DHCP($Adapter2)
	$DHCPServer = _Refresh_DHCPServer($Adapter2)

	SplashOff()
	$Lab1Pos2 = $Lab1Pos2 - 120
	$label1 = GUICtrlCreateLabel($IPaddress, $Lab1Pos1, $Lab1Pos2)
	$Lab1Pos2 = $Lab1Pos2 + 20
	$label2 = GUICtrlCreateLabel($Subnet, $Lab1Pos1, $Lab1Pos2)
	$Lab1Pos2 = $Lab1Pos2 + 20
	$label3 = GUICtrlCreateLabel($DefaultGW, $Lab1Pos1, $Lab1Pos2)
	$Lab1Pos2 = $Lab1Pos2 + 20
	$label4 = GUICtrlCreateLabel($DNSServer, $Lab1Pos1, $Lab1Pos2)
	$Lab1Pos2 = $Lab1Pos2 + 20
	$label5 = GUICtrlCreateLabel($WINSServer, $Lab1Pos1, $Lab1Pos2)
	$Lab1Pos2 = $Lab1Pos2 + 20
	$label6 = GUICtrlCreateLabel($DHCP, $Lab1Pos1, $Lab1Pos2)
	$Lab1Pos2 = $Lab1Pos2 + 20
	$label7 = GUICtrlCreateLabel($DHCPServer, $Lab1Pos1, $Lab1Pos2)
	If $IPaddress = "0.0.0.0" Then GUICtrlSetData($statuslabel, $NoteString1)
EndFunc

Func _Refresh_IP($a)
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
	For $objItem In $colItems
		If $objItem.caption = $a Then
			$IPaddress = $objItem.IPAddress(0)
			Return $IPaddress
		EndIf
	Next
EndFunc

Func _Refresh_Subnet($a)
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
	For $objItem In $colItems
		$Subnet = $objItem.IPSubnet(0)
		If $objItem.caption = $a Then
			Return $Subnet
		EndIf
	Next
EndFunc

Func _Refresh_DefaultGW($a)
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
	For $objItem In $colItems
		$DefaultGW = $objItem.DefaultIPGateway(0)
		If $objItem.caption = $a Then
			Return $DefaultGW
		EndIf
	Next
EndFunc

Func _Refresh_DNSServer($a)
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
		For $objItem In $colItems
		$DNSServer = $objItem.DNSServerSearchOrder(0)
		If $objItem.caption = $a Then
			If $DNSServer = "0" Then $DNSServer = "Not Set"
			Return $DNSServer
		EndIf
	Next
EndFunc

Func _Refresh_WINS($a)
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
		For $objItem In $colItems
		$WINSServer = $objItem.WINSPrimaryServer
		If $objItem.caption = $a Then
			If $WINSServer = "0" or $WINSServer = "" Then $WINSServer = "Not Set"
			Return $WINSServer
		EndIf
	Next
EndFunc

Func _Test_DHCP($a)
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
	For $objItem In $colItems
		$DHCPEnabled = $objItem.DHCPEnabled
		If $objItem.caption = $a Then
			If $DHCPEnabled <> 0 Then
				$DHCPEnabled2 = "Yes"
			Else
				$DHCPEnabled2 = "No"
			EndIf
			Return $DHCPEnabled2
		EndIf
	Next
EndFunc

Func _Refresh_DHCPServer($a)
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
		For $objItem In $colItems
		$DHCPServer = $objItem.DHCPServer
		If $objItem.caption = $a Then
			If $DHCPServer = "0" or $DHCPServer = "" Then $DHCPServer = "Not Set"
			Return $DHCPServer
		EndIf
	Next
EndFunc

Func _Get_Adapters()
	GUICtrlSetData($statuslabel, "")
	$Adapters = ""
	SplashTextOn($WinTitle, "Please Wait...", 170, 40)
	$colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapter", "WQL", $wbemFlagReturnImmediately + $wbemFlagForwardOnly)
	For	$objItem in $colItems
		If $objItem.NetConnectionID <> "" Then $Adapters = $Adapters & "|" & $objItem.NetConnectionID
	Next
	SplashOff()
	If $Adapters = "" Then GUICtrlSetData($statuslabel, $NoteString2)
	Return $Adapters
EndFunc
