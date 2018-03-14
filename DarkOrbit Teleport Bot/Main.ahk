#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

^F5::

Loop
{
	Loop
	{
		ImageSearch portalX, portalY, 0, 0, 1920, 1080, %A_ScriptDir%\Portal.png
		
		if (ErrorLevel != 1)
		{
			portalX := portalX + 11
			portalY := portalY + 10
			
			Sleep 3000
			
			ImageSearch, , , 900, 900, 1000, 1000, %A_ScriptDir%\No Jumps Left.png
	
			if (ErrorLevel != 1)
			{
				Send ^{Tab}

				Click 1291, 665
				Sleep 400
				Click 819, 591
				Sleep 400
				Click 976, 613
				
				Send ^{Tab}
			}
		
			Click %portalX%, %portalY%
			break
		}
	}

	Loop
	{
		ImageSearch portX, portY, 0, 0, 1920, 1080, %A_ScriptDir%\Coordinates.png
		
		if (ErrorLevel != 1)
		{
			Sleep 500
		
			Send J
			break
		}
	}

	Loop
	{
		ImageSearch, , , 0, 0, 1920, 1080, %A_ScriptDir%\2-2.png
		
		if (ErrorLevel != 1)
		{
			break
		}
	}

	Sleep 11000
	Send 6
	
	Sleep 200
}