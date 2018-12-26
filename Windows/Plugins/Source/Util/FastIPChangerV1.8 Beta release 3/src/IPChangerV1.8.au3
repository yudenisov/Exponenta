#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_icon=icon.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GuiConstants.au3>
#include <StaticConstants.au3>

Opt("TrayMenuMode",1)

Global $version = "Version 1.8 Beta release 4"
Global $WinTitle = "Fast IP Changer (" & $version & ") - Timmo - written in AutoIT"
Global $SettingsFile = @ScriptDir & "\Settings.ini"
Global $UndoFile = @ScriptDir & "\IPChangerBackup.ini"
Global $DefaultWelcome = 0
Global $WelcomeMSG = "Fast IP Changer (" & $version & ")" & @CRLF & "written and designed by Timmo" & @CRLF & @CRLF & "special thanks go to anyone and everyone who has used this and supplied input."
Global $WelcomeWarning = @CRLF & @CRLF & "*****WARNING*****" & @CRLF & "This program is designed to be used by personel who administrate LAN's and have a fair understanding of the Network addressing sceme's of their networks." & @CRLF & "Using this program incorrectly may stop your computer from accessing or being accessed by the network." & @CRLF & "This also means that you may loose internet connection."
Global $WelcomeExtra = @CRLF & @CRLF & 'This message can be removed in the settings.ini file and changing the "Welcome MSG" option to "0"'
Global $DefaultDebug = 0

Global $Adapters, $Adapter3
Global $DefaultGW = ""
Global $IPaddress = ""
Global $Subnet = ""
Global $DHCP = ""
Global $Mark = 0

Global $num4 = IniRead($SettingsFile, "Program Options", "Number of config tabs", "4" ) ; number of saved configs, be cautious as may have enexpected errors with interface
Global $ButtonSave[$num4]
Global $ConfigName[$num4]
Global $conpos[$num4][2]
Global $check[$num4]
Global $DefaultGWSet[$num4]
Global $DefautTabName[$num4]
Global $DHCPCheck[$num4]
Global $DNSSet[$num4]
Global $IPaddressSet[$num4]
Global $SetConfig[$num4]
Global $SubnetSet[$num4]
Global $tab[$num4]
Global $TrayEnableCon[$num4]
Global $WINSSet[$num4]
Global $ipaddy[1]
Global $subnetaddy[1]
Global $gwaddy[1]
Global $dnsaddy[1]
Global $winsaddy[1]
Global $DHCPchanged[$num4]



$wbemFlagReturnImmediately = 0x10
$wbemFlagForwardOnly = 0x20
$colItems1 = ""
$colItems2 = ""

$objWMIService = ObjGet("winmgmts:\\localhost\root\CIMV2")

$GUI = GuiCreate ($WinTitle, 700, 300, -1, -1)
$statuslabel = GUICtrlCreateLabel ("",1,280,698,19,BitOr($SS_SIMPLE,$SS_SUNKEN))

GUICtrlCreateLabel("Network Adapter: ", 10, 15)

If IniRead($SettingsFile, "Program Options", "Welcome MSG" , $DefaultWelcome) = 1 Then
	Global $WelcomeEnable = 1
Else
	Global $WelcomeEnable = 0
EndIf

If IniRead($SettingsFile, "Program Options", "Debug", $DefaultDebug) = 1 Then
	Global $show = @SW_SHOW
Else
	Global $show = @SW_HIDE
EndIf

$NoteXPos = 8
$NoteYPos = 257
$NoteString0 = "Note: IP Change Failed, Please Check settings (and cable?)"
$NoteString1 = "Note: No IP detected please check cable/connection"
$NoteString2 = "Note: No adapters detected, please check system config"
$NoteString3 = "IP Changed successfully"
$NoteString4 = "Please make sure you have selected your adapter"
$NoteString5 = "Failed to get IP via DHCP, make sure you are connected to a DHCP server."
$NoteString6 = "Failed to set DNS server (settings might still work)"

If $WelcomeEnable = 1 Then MsgBox(0,$WinTitle,$WelcomeMSG & $WelcomeWarning & $WelcomeExtra)

$Lab1Pos1 = 105 ;left position of the stats label
$Lab1Pos2 = 55 ;top position of the stats label
GUICtrlCreateGroup("", $Lab1Pos1, $Lab1Pos2, 190, 156)
$Lab1Pos1 = $Lab1Pos1 + 8
$Lab1Pos2 = $Lab1Pos2 + 13
GUICtrlCreateLabel("IP Address: ", $Lab1Pos1, $Lab1Pos2)
$Lab1Pos2 = $Lab1Pos2 + 20
GUICtrlCreateLabel("Subnet Mask: ", $Lab1Pos1, $Lab1Pos2)
$Lab1Pos2 = $Lab1Pos2 + 20
GUICtrlCreateLabel("Default GW: ", $Lab1Pos1, $Lab1Pos2)
$Lab1Pos2 = $Lab1Pos2 + 20
GUICtrlCreateLabel("Pri DNS Server: ", $Lab1Pos1, $Lab1Pos2)
$Lab1Pos2 = $Lab1Pos2 + 20
GUICtrlCreateLabel("Pri WINS Server: ", $Lab1Pos1, $Lab1Pos2)
$Lab1Pos2 = $Lab1Pos2 + 20
GUICtrlCreateLabel("DHCP Enabled: ", $Lab1Pos1, $Lab1Pos2)
$Lab1Pos2 = $Lab1Pos2 + 20
GUICtrlCreateLabel("DHCP Server: ", $Lab1Pos1, $Lab1Pos2)
$Lab1Pos1 = $Lab1Pos1 + 85
$Lab1Pos2 = $Lab1Pos2 - 120
$label1 = GUICtrlCreateLabel("", $Lab1Pos1, $Lab1Pos2, 70)
$Lab1Pos2 = $Lab1Pos2 + 20
$label2 = GUICtrlCreateLabel("", $Lab1Pos1, $Lab1Pos2, 70)
$Lab1Pos2 = $Lab1Pos2 + 20
$label3 = GUICtrlCreateLabel("", $Lab1Pos1, $Lab1Pos2, 70)
$Lab1Pos2 = $Lab1Pos2 + 20
$label4 = GUICtrlCreateLabel("", $Lab1Pos1, $Lab1Pos2, 70)
$Lab1Pos2 = $Lab1Pos2 + 20
$label5 = GUICtrlCreateLabel("", $Lab1Pos1, $Lab1Pos2, 70)
$Lab1Pos2 = $Lab1Pos2 + 20
$label6 = GUICtrlCreateLabel("", $Lab1Pos1, $Lab1Pos2, 70)
$Lab1Pos2 = $Lab1Pos2 + 20
$label7 = GUICtrlCreateLabel("", $Lab1Pos1, $Lab1Pos2, 70)
$Lab1Pos1 = $Lab1Pos1 - 38
$Lab1Pos2 = $Lab1Pos2 + 32
$ButtonRefresh = GUICtrlCreateButton(" Refresh ", $Lab1Pos1, $Lab1Pos2, 80)
$Lab1Pos1 = $Lab1Pos1 + 90
$ButtonUndo = GUICtrlCreateButton(" Undo ", $Lab1Pos1, $Lab1Pos2, 40, 20)
GUICtrlSetState($ButtonUndo, $GUI_DISABLE)
$Lab1Pos1 = $Lab1Pos1 - 52
$Lab1Pos2 = $Lab1Pos2 - 32

$Adapters = _Get_Adapters()
$Adapter = GUICtrlCreateCombo("", 100, 12, 200)
GUICtrlSetData($Adapter,$Adapters , IniRead($SettingsFile, "Last Used Adapter", "Name", $Adapter3))
if not GUICtrlRead($Adapter) = "" Then _Refresh_Config()
$GetAdp = GUICtrlCreateButton(" Get Adapters ", 310, 10, 80)

$hidewin = GUICtrlCreateButton("Tray", 665, 5, 30, 17)

$trayabout = TrayCreateItem("About")
$trayshowhidewin = TrayCreateItem("Hide")
$hide = 0
TrayCreateItem("")
$TraySubMenu = TrayCreateMenu("Enable Config")

TrayCreateItem("")
$trayexit = TrayCreateItem("Exit")

$tabs = GUICtrlCreateTab(415, 15, 240, 260)
For $i = 0 To $num4 - 1
	$DefautTabName[$i] = "Config " & $i
	$check[$i] = 0
	$TrayEnableCon[$i] = TrayCreateItem(IniRead($SettingsFile, "IPConfig" & $i, "Name", $DefautTabName[$i]), $TraySubMenu)
	$ConPos[$i][0] = 425 ; lefthand row
	$ConPos[$i][1] = 40 ; top row
	$tab[$i] = GUICtrlCreateTabItem(IniRead($SettingsFile, "IPConfig" & $i, "Name", $DefautTabName[$i]))
	GUICtrlCreateGroup ("", $ConPos[$i][0], $ConPos[$i][1], 220, 220)
	$ConPos[$i][0] = $ConPos[$i][0] + 18
	$ConPos[$i][1] = $ConPos[$i][1] + 23
	GUICtrlCreateLabel("Name: ", $ConPos[$i][0], $ConPos[$i][1])
	$ConPos[$i][1] = $ConPos[$i][1] + 30
	GUICtrlCreateLabel("IP Address: ", $ConPos[$i][0], $ConPos[$i][1])
	$ConPos[$i][1] = $ConPos[$i][1] + 25
	GUICtrlCreateLabel("Subnet Mask: ", $ConPos[$i][0], $ConPos[$i][1])
	$ConPos[$i][1] = $ConPos[$i][1] + 25
	GUICtrlCreateLabel("Default GW: ", $ConPos[$i][0], $ConPos[$i][1])
	$ConPos[$i][1] = $ConPos[$i][1] + 25
	GUICtrlCreateLabel("DNS Server: ", $ConPos[$i][0], $ConPos[$i][1])
	$ConPos[$i][1] = $ConPos[$i][1] + 25
	GUICtrlCreateLabel("WINS Server: ", $ConPos[$i][0], $ConPos[$i][1])
	$ConPos[$i][0] = $ConPos[$i][0] + 40
	$ConPos[$i][1] = $ConPos[$i][1] - 135
	$ConfigName[$i] = GUICtrlCreateInput(IniRead($SettingsFile, "IPConfig" & $i, "Name", $DefautTabName[$i]), $ConPos[$i][0], $ConPos[$i][1], 90)
	$ConPos[$i][0] = $ConPos[$i][0] + 30
	$ConPos[$i][1] = $ConPos[$i][1] + 30
	$IPaddressSet[$i] = GUICtrlCreateInput(IniRead($SettingsFile, "IPConfig" & $i, "IPAddress", "0.0.0.0"), $ConPos[$i][0], $ConPos[$i][1], 90)
	$ConPos[$i][1] = $ConPos[$i][1] + 25
	$SubnetSet[$i] = GUICtrlCreateInput(IniRead($SettingsFile, "IPConfig" & $i,"SubnetMask","0.0.0.0"), $ConPos[$i][0], $ConPos[$i][1], 90)
	$ConPos[$i][1] = $ConPos[$i][1] + 25
	$DefaultGWSet[$i] = GUICtrlCreateInput(IniRead($SettingsFile, "IPConfig" & $i,"DefaultGW","0.0.0.0"), $ConPos[$i][0], $ConPos[$i][1], 90)
	$ConPos[$i][1] = $ConPos[$i][1] + 25
	$DNSSet[$i] = GUICtrlCreateInput(IniRead($SettingsFile, "IPConfig" & $i,"DNS","0.0.0.0"), $ConPos[$i][0], $ConPos[$i][1], 90)
	$ConPos[$i][1] = $ConPos[$i][1] + 25
	$WINSSet[$i] = GUICtrlCreateInput(IniRead($SettingsFile, "IPConfig" & $i,"WINS","0.0.0.0"), $ConPos[$i][0], $ConPos[$i][1], 90)
	$ConPos[$i][0] = $ConPos[$i][0] - 45
	$ConPos[$i][1] = $ConPos[$i][1] + 25
	$DHCPCheck[$i] = GUICtrlCreateCheckbox("DHCP ", $ConPos[$i][0], $ConPos[$i][1])
	If IniRead($SettingsFile, "IPConfig" & $i, "Use DHCP", "0") = "1" Then GUICtrlSetState($DHCPCheck[$i], $GUI_CHECKED)
	$ConPos[$i][0] = $ConPos[$i][0] + 60
	$ConPos[$i][1] = $ConPos[$i][1] + 5
	$SetConfig[$i] = GUICtrlCreateButton(" Set ", $ConPos[$i][0], $ConPos[$i][1], 35, 20)
	$ConPos[$i][0] = $ConPos[$i][0] + 50
	$ButtonSave[$i] = GUICtrlCreateButton(" Save ", $ConPos[$i][0], $ConPos[$i][1], 40, 20)
Next

;#include <Array.au3>
#include <IPChangerCliOptions.au3>
#include <IPChangerTray.au3>
#include <IPChangerGUI.au3>
#include <IPChangerChange.au3>
#include <IPChangerInfo.au3>
#include <IPChangerExitOther.au3>

;If Not FileExists($UndoFile) Then _SaveOldConfigMain($Adapters)

_Check_Cli()

while 1
	$msg = GUIGetMsg()
	$traymsg = TrayGetMsg()
	for $e = 0 To $num4 -1
		_CheckInput($WinTitle, $ConfigName[$e], 0)
		Select
			Case $traymsg = $TrayEnableCon[$e]
				$adapter3 = IniRead($SettingsFile, "Last Used Adapter", "Name", $Adapter3)
				_Apply_Button($e)

			Case $msg = $ButtonSave[$e]
				;guictrldelete($tabs)
				_Set_Gui("Disable")
				If MsgBox(4, $WinTitle, "This will overwrite the settings file (if exists). Continue?") = 6 Then _SaveIniFile()
				_Set_Gui("Enable")

			Case $msg = $SetConfig[$e]
				_Set_Gui("Disable")
				If GUICtrlRead($Adapter) = "" Then
					MsgBox(0, $WinTitle, $NoteString4)
					GUICtrlSetData($statuslabel, $NoteString4)
				Else
					_Apply_Button($e)
				EndIf
				_Set_Gui("Enable")
		EndSelect
	Next

	Select
		Case $msg = $GUI_EVENT_CLOSE
			_Set_Gui("Disable")
			_Exit()

		Case $msg = $ButtonRefresh
			_Set_Gui("Disable")
			If GUICtrlRead($Adapter) = "" Then
				MsgBox(0, $WinTitle, $NoteString4)
				GUICtrlSetData($statuslabel[0], $NoteString4)
			Else
				_Refresh_Config()
			EndIf
			_Set_Gui("Enable")

		Case $msg = $Adapter
			_Set_Gui("Disable")
			_Refresh_Config()
			_Set_Gui("Enable")

		Case $msg = $GetAdp
			_Set_Gui("Disable")
			GUICtrlSetData($Adapter, _Get_Adapters(), GUICtrlRead($Adapter))
			_Refresh_Config()
			_Set_Gui("Enable")

		Case $msg = $hidewin
			show_hide_win()

		Case $traymsg = $trayexit
			_Exit()

		Case $traymsg = $trayabout
			MsgBox(0,$WinTitle,$WelcomeMSG & $WelcomeWarning)

		Case $traymsg = $trayshowhidewin
			show_hide_win()


	EndSelect

	For $i = 0 To $num4 - 1
		If GUICtrlRead($DHCPCheck[$i]) = $GUI_CHECKED and $check[$i] = 0 Then
			GUICtrlSetState($IPaddressSet[$i], $GUI_DISABLE)
			GUICtrlSetState($SubnetSet[$i], $GUI_DISABLE)
			GUICtrlSetState($DefaultGWSet[$i], $GUI_DISABLE)
			GUICtrlSetState($DNSSet[$i], $GUI_DISABLE)
			GUICtrlSetState($WINSSet[$i], $GUI_DISABLE)
			$check[$i] = 1
		EndIf
		If GUICtrlRead($DHCPCheck[$i]) = $GUI_UNCHECKED and $check[$i] = 1 Then
			GUICtrlSetState($IPaddressSet[$i], $GUI_ENABLE)
			GUICtrlSetState($SubnetSet[$i], $GUI_ENABLE)
			GUICtrlSetState($DefaultGWSet[$i], $GUI_ENABLE)
			GUICtrlSetState($DNSSet[$i], $GUI_ENABLE)
			GUICtrlSetState($WINSSet[$i], $GUI_ENABLE)
			$check[$i] = 0
		EndIf
	Next
WEnd
