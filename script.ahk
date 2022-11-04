#SingleInstance, Force

Gui, Add, Text,, Ctrl+Alt+q:
Gui, Add, Edit, r5 vEditBoxT1 w200, Dear user,`nPlease inform us if the issue persists.`nKind regards
Gui, Add, Text,, Ctrl+Alt+w:
Gui, Add, Edit, r5 vEditBoxT2 w200, Dear Team,`ncould you please assist?`nKind Regards
Gui, Add, Text,, Ctrl+Alt+r:
Gui, Add, Edit, r5 vEditBoxT3 w200, Dear user,`nFollowing this message the ticket will be set as "Awaiting User Resolution Confirmation" status, so you will have 10 days to close the case by yourself.`nIf you don't perform any action, your ticket's status will be automatically set to "Closed" after that period without the possibility of being reopened.`nKind regards
Gui, Add, Text,, Ctrl+Alt+t:
Gui, Add, Edit, r5 vEditBoxT4 w200, Dear user,`nIn order to progress your issue we need to establish remote connection with your device. Please contact us at your convenience via call: https://fujitsu.service-now.com/ask_it?id=askit_contact_us `nKind regards
Gui, Add, Text,, Ctrl+Alt+d:
Gui, Add, Edit, r5 vEditBoxT5 w200, Closing as per latest update from the user
Gui, Add, Text,, Ctrl+Alt+a:
Gui, Add, Edit, r5 vEditBoxT6 w200, R01\R01U-EMEIA-VPN-CBL

Gui, Add, Button,x20 y601 w80 h22 vapply, Apply
Gui, Add, Button,x20 y601 w80 h22 vedit, Edit
Gui, Add, Button,x120 y601 w80 h22 gQuitButton, Quit

Gui, +Alwaysontop
Gui, Show, w220 h630, Paste Template Tool
GuiControl, Hide, Edit
Return

ButtonApply:
GuiControl, Hide, Apply
GuiControl, Show, Edit

ControlGetText, Var1 , edit1
ControlGetText, Var2 , edit2
ControlGetText, Var3 , edit3
ControlGetText, Var4 , edit4
ControlGetText, Var5 , edit5
ControlGetText, Var6 , edit6

GuiControl, Disable, edit1
GuiControl, Disable, edit2
GuiControl, Disable, edit3
GuiControl, Disable, edit4
GuiControl, Disable, edit5
GuiControl, Disable, edit6

Return

ButtonEdit:
GuiControl, Show, Apply
GuiControl, Hide, Edit

GuiControl, Enable, edit1
GuiControl, Enable, edit2
GuiControl, Enable, edit3
GuiControl, Enable, edit4
GuiControl, Enable, edit5
GuiControl, Enable, edit6

Return


QuitButton:
 ExitApp
return

GuiClose:
    ExitApp
return


^!q::
	OldClip := Clipboard
	Clipboard = %Var1%
	Send, ^v 
	Sleep 100
	Clipboard = %OldClip%
return

^!w::
	OldClip := Clipboard
	Clipboard = %Var2%
	Send, ^v
	Sleep 100
	Clipboard = %OldClip%
return

^!r::
	OldClip := Clipboard
	Clipboard = %Var3%	
	Send, ^v
	Sleep 100
	Clipboard = %OldClip%
return

^!t::
	OldClip := Clipboard
	Clipboard = %Var4%
	Send, ^v
	Sleep 100
	Clipboard = %OldClip%
return

^!d::
	OldClip := Clipboard
	Clipboard = %Var5%
	Send, ^v
	Sleep 100
	Clipboard = %OldClip%
return

^!a::
	OldClip := Clipboard
	Clipboard = %Var6%
	Send, ^v 
	Sleep 100
	Clipboard = %OldClip%
return
