; include file for command line functions

Func _Check_Cli(); checks if script was called with CLI arguments
	If $CmdLine[0] = 0 Then
		GUISetState()
	Else
		$adapter3 = IniRead($SettingsFile, "Last Used Adapter", "Name", $Adapter3)
		If $CmdLine[1] = "-p" Then
			If Not $CmdLine[2] = "" Then
				_Apply_Button($CmdLine[2] - 1)
			Else
				CLIERROR()
			EndIf
;			If $CmdLine[1] = "-undo" Then UndoChanges($adapter3)
			Else
				CLIERROR()
			EndIf
	EndIf
EndFunc

Func CLIERROR()
	Exit MsgBox(0, "", "Command Line Options:" & @CRLF & @CRLF & "ipchanger.exe -p <preset config number 1 - " & $num4 + 1 & ">" & @CRLF & "ipchanger.exe -undo" & @CRLF & "(Note uses the last used adapter as specified in the ini)")
EndFunc

