; include file for exit, saving ini and any other functions

Func _Exit()
	If _CheckChanges() = 1 Then
		$ExitMsgBox = MsgBox(3, $WinTitle, "Changes have been made." & @CRLF & @CRLF & "Would you like to save?")
		If $ExitMsgBox = 6 Then
			FileDelete($UndoFile)
			_SaveIniFile()
			Exit
		ElseIf $ExitMsgBox = 7 Then
			FileDelete($UndoFile)
			Exit
		Else
			_Set_Gui("Enable")
			Return
		EndIf
	Else
		Exit
	EndIf
EndFunc

Func MakeBackup($a)
	If FileExists($UndoFile) Then FileDelete($UndoFile)
	IniWrite($UndoFile, "Backup", "AdapterName", $a)
	If _Test_DHCP($a) = "Yes" Then
		IniWrite($UndoFile, "Backup", "DHCP", "Yes")
	Else
		IniWrite($UndoFile, "Backup", "IPAddress", _Refresh_IP($a))
		IniWrite($UndoFile, "Backup", "Subnet", _Refresh_Subnet($a))
		IniWrite($UndoFile, "Backup", "DefaultGW", _Refresh_DefaultGW($a))
		IniWrite($UndoFile, "Backup", "DNSServer", _Refresh_DNSServer($a))
		IniWrite($UndoFile, "Backup", "WINS", _Refresh_WINS($a))
	EndIf
	GUICtrlSetState($ButtonUndo, $GUI_ENABLE)
EndFunc

Func UndoChanges($a)
	If IniRead($UndoFile, "Backup", "DHCP", "Yes") = "Yes" Then
		_Set_DHCP(IniRead($UndoFile, "Backup", "AdapterName", ""))
	Else
		_Set_ip(IniRead($UndoFile, "Backup", "AdapterName", ""), IniRead($UndoFile, "Backup", "IPAddress", ""), IniRead($UndoFile, "Backup", "Subnet", ""), IniRead($UndoFile, "Backup", "DefaultGW", ""), IniRead($UndoFile, "Backup", "DNSServer", ""), IniRead($UndoFile, "Backup", "WINS", ""))
	EndIf
EndFunc

Func _SaveIniFile()
	FileDelete($SettingsFile)
	IniWrite($SettingsFile, "Program Options", "Welcome MSG", $WelcomeEnable)
	If $show = @SW_SHOW Then
		IniWrite($SettingsFile, "Program Options", "Debug", "1")
	Else
		IniWrite($SettingsFile, "Program Options", "Debug", "0")
	EndIf

	IniWrite($SettingsFile, "Program Options", "Number of config tabs", $num4)
	FileWriteLine($SettingsFile, @CRLF & @CRLF)
	IniWrite($SettingsFile, "Last Used Adapter", "Name", GUICtrlRead($Adapter))
	For $i = 0 To $num4 - 1
		FileWriteLine($SettingsFile, @CRLF & @CRLF)
		IniWrite($SettingsFile, "IPConfig" & $i, "Name", GUICtrlRead($ConfigName[$i]))
		IniWrite($SettingsFile, "IPConfig" & $i, "IPAddress", GUICtrlRead($IPaddressSet[$i]))
		IniWrite($SettingsFile, "IPConfig" & $i, "SubnetMask", GUICtrlRead($SubnetSet[$i]))
		IniWrite($SettingsFile, "IPConfig" & $i, "DefaultGW", GUICtrlRead($DefaultGWSet[$i]))
		IniWrite($SettingsFile, "IPConfig" & $i,"DNS", GUICtrlRead($DNSSet[$i]))
		IniWrite($SettingsFile, "IPConfig" & $i,"WINS", GUICtrlRead($WINSSet[$i]))
		If GUICtrlRead($DHCPCheck[$i]) = $GUI_CHECKED Then
			IniWrite($SettingsFile, "IPConfig" & $i, "Use DHCP", "1")
		Else
			IniWrite($SettingsFile, "IPConfig" & $i, "Use DHCP", "0")
		EndIf
	Next
EndFunc

Func _CheckChanges()
		If Not FileExists($SettingsFile) Then Return 1
		If GUICtrlRead($Adapter) <> IniRead($SettingsFile, "Last Used Adapter", "Name", "") Then Return 1
	For $i = 0 To $num4 - 1
		If GUICtrlRead($DHCPCheck[$i]) = $GUI_CHECKED Then
			$DHCPchanged[$i] = 1
		Else
			$DHCPchanged[$i] = 0
		EndIf
		Select
			Case GUICtrlRead($ConfigName[$i]) <> IniRead($SettingsFile, "IPConfig" & $i, "Name", "")
				Return 1
			Case GUICtrlRead($IPaddressSet[$i]) <> IniRead($SettingsFile, "IPConfig" & $i, "IPAddress", "")
				Return 1
			Case GUICtrlRead($SubnetSet[$i]) <> IniRead($SettingsFile, "IPConfig" & $i, "SubnetMask", "")
				Return 1
			Case GUICtrlRead($DefaultGWSet[$i]) <> IniRead($SettingsFile, "IPConfig" & $i, "DefaultGW", "")
				Return 1
			Case GUICtrlRead($DNSSet[$i]) <> IniRead($SettingsFile, "IPConfig" & $i,"DNS", "")
				Return 1
			Case GUICtrlRead($WINSSet[$i]) <> IniRead($SettingsFile, "IPConfig" & $i,"WINS", "")
				Return 1
			Case $DHCPchanged[$i] <> IniRead($SettingsFile, "IPConfig" & $i, "Use DHCP", "")
				Return 1
		EndSelect
	Next
	Return 0
EndFunc

