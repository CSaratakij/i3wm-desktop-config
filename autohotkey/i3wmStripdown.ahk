; Script Setting
#NoEnv
#Warn
#Persistent
#SingleInstance ignore
SendMode Input
SetWorkingDir %A_Desktop%

; User Constant
TERMINAL := "Cmd"
RUN_DIALOG_COMMAND := "Explorer shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}"

; App Constant
APP_NAME := "i3wmStripdown"

; Event Binding
OnExit, On_Event_Exit

; Simple Keybind that doesn't deal with Window
^[::Send {Esc}
#Enter::Run %TERMINAL%
#d::Run %RUN_DIALOG_COMMAND%
#+e::ExitApp
LWin & n::AltTab
LWin & p::ShiftAltTab

; Toggle Fullscreen
#f::
	WinGetActiveTitle, targetWindow
	IfWinExist, %targetWindow%
		WinGet, isMaximized, MinMax
		if isMaximized = 1
			WinRestore
		else
			WinMaximize
Return

; Minimized Window (Temponary biding for minimize stack window)
; tiing window manager have no concept of minimize, will remove these after have proper tiling wm functional
;
; Minimized active window
#m::
	WinGetActiveTitle, targetWindow
	IfWinExist, %targetWindow%
        WinMinimize
Return

; Minimized all window
#+m::
    WinMinimizeAll
Return

; Close Window
#+q::
	WinGetActiveTitle, targetWindow
	IfWinExist, %targetWindow%
		WinClose
Return

; Event Implementation
On_Event_Exit:
if A_ExitReason not in Logoff,Shutdown
{
	MsgBox, 4, Quit, Are you sure to close :  ["%APP_NAME%"] ?
	IfMsgBox, Yes
		ExitApp
	Else
		return
}

; Disable Default Windows Shortcuts
#Up::Return
#Down::Return
#Left::Return
#Right::Return
#e::Return
#u::Return
#Space::Return
#+Space::Return
#h::Return
