#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

Loop
{
	ImageSearch x, y, 0, 0, 1920, 1080, %A_ScriptDir%\Target.png
	
	
	if (ErrorLevel != 1)
	{
		x := x + 5
		y := y + 5
	
		Click %x%, %y%
		Sleep 10
	}
}