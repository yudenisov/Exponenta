; include file for GUI functions

Func _Set_Gui($a); enables or disables the gui
	If $a = "Enable" Then
		For $i = 0 To $num4 - 1
			GUICtrlSetState($DHCPCheck[$i], $GUI_ENABLE)
			If GUICtrlRead($DHCPCheck[$i]) = $GUI_CHECKED Then
				GUICtrlSetState($IPaddressSet[$i], $GUI_DISABLE)
				GUICtrlSetState($SubnetSet[$i], $GUI_DISABLE)
				GUICtrlSetState($DefaultGWSet[$i], $GUI_DISABLE)
				GUICtrlSetState($DNSSet[$i], $GUI_DISABLE)
				GUICtrlSetState($WINSSet[$i], $GUI_DISABLE)
				$check1 = 0
			Else
				GUICtrlSetState($IPaddressSet[$i], $GUI_ENABLE)
				GUICtrlSetState($SubnetSet[$i], $GUI_ENABLE)
				GUICtrlSetState($DefaultGWSet[$i], $GUI_ENABLE)
				GUICtrlSetState($DNSSet[$i], $GUI_ENABLE)
				GUICtrlSetState($WINSSet[$i], $GUI_ENABLE)
			EndIf
			GUICtrlSetState($ConfigName[$i], $GUI_ENABLE)
			GUICtrlSetState($ButtonSave[$i], $GUI_ENABLE)
			GUICtrlSetState($SetConfig[$i], $GUI_ENABLE)
		Next
		GUICtrlSetState($Adapter, $GUI_ENABLE)
		GUICtrlSetState($GetAdp, $GUI_ENABLE)
		GUICtrlSetState($ButtonRefresh, $GUI_ENABLE)

	ElseIf $a = "Disable" Then
		For $i = 0 To $num4 - 1
			GUICtrlSetState($ConfigName[$i], $GUI_DISABLE)
			GUICtrlSetState($IPaddressSet[$i], $GUI_DISABLE)
			GUICtrlSetState($SubnetSet[$i], $GUI_DISABLE)
			GUICtrlSetState($DefaultGWSet[$i], $GUI_DISABLE)
			GUICtrlSetState($DHCPCheck[$i], $GUI_DISABLE)
			GUICtrlSetState($DNSSet[$i], $GUI_DISABLE)
			GUICtrlSetState($WINSSet[$i], $GUI_DISABLE)
			GUICtrlSetState($ButtonSave[$i], $GUI_DISABLE)
			GUICtrlSetState($SetConfig[$i], $GUI_DISABLE)
		Next
		GUICtrlSetState($Adapter, $GUI_DISABLE)
		GUICtrlSetState($GetAdp, $GUI_DISABLE)
		GUICtrlSetState($ButtonRefresh, $GUI_DISABLE)
	EndIf
EndFunc
