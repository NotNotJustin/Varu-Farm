#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay, 250

Hotkey  !^q,	autofarm		; Pressing ctrl + alt + q will start autofarm.

return

autofarm:
{
	RandSleep(4500,12500)
	Loop, 9999999
	{
		Loop, 9999999
		{
			RandSleep(x,y) {
				Random, rand, %x%, %y%
				Sleep %rand%
			}
			Send, v{!}c{Enter}
			Sleep, 60 * 1000
		}
	}
}

F9::Pause
F10::Reload

F8:
{
	ExitApp
	return
}