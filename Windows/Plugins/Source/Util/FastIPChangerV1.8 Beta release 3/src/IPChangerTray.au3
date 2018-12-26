; include file for tray and related functions

Func _CheckInput($hWnd, $ID, $i); check if the config name is unfocused and apply config name
    If $Mark = 0 And ControlGetHandle($hWnd, '', $ID) = ControlGetHandle($hWnd, '', ControlGetFocus($hWnd)) Then
        $Mark = 1

    ElseIf $Mark = 1 And Not ControlGetHandle($hWnd, '', $ID) = ControlGetHandle($hWnd, '', ControlGetFocus($hWnd)) Then
		; new code




	;#cs old code
		$Mark = 0
		GUICtrlSetData($tab[$i], GUICtrlRead($ConfigName[$i]))
		TrayItemDelete($TrayEnableCon[$i])
		$TrayEnableCon[$i] = TrayCreateItem(GUICtrlRead($ConfigName[$i]), $TraySubMenu)
	;#ce end old code
	EndIf
EndFunc

Func show_hide_win(); shows and hides the gui and change the tray item to show/hide
	If $hide = 0 Then
		TrayItemSetText($trayshowhidewin, "Show")
		$hide = 1
		GUISetState(@SW_MINIMIZE, $WinTitle)
		GUISetState(@SW_HIDE, $WinTitle)
	ElseIf $hide = 1 Then
		TrayItemSetText($trayshowhidewin, "Hide")
		$hide = 0
		GUISetState(@SW_SHOW, $WinTitle)
		GUISetState(@SW_RESTORE, $WinTitle)
	Else
		Return
	EndIf
EndFunc