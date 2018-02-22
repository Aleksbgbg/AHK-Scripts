#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

^F5::CreateFile("Class")
^F6::CreateFile("Interface")
^F7::CreateFile("User Control (WPF)")
^F8::CreateFile("Window (WPF)")

CreateFile(type)
{
	clipboardBackup := ClipboardAll
	Clipboard = %type%
	
	Send +{F10}
	Send {Down}{Right}{Down}{Enter}
	Send ^e
	Send ^v
	
	Sleep 2000
	
	Send {Tab}{Tab}
	
	Clipboard := clipboardBackup
}