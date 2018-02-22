StartTrainingGame()
{
	Click 150, 48
	Sleep 450
	
	Click 310, 121
	Sleep 200
	
	Click 939, 275
	Sleep 200
	
	Click 671, 858
	
	Loop
	{
		ImageSearch, , , 320, 140, 460, 180, %A_ScriptDir%/Images/Practice Tool.png
	} Until ErrorLevel != 1
	
	Click 671, 858
}