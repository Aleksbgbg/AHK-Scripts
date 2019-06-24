LanePicker(lane, character)
{
    Loop
    {
    	ImageSearch, acceptX, acceptY, 747, 686, 853, 710, %A_ScriptDir%/Images/Accept.png
    	
    	if (ErrorLevel != 1)
    	{
    		Click %acceptX%, %acceptY%
    	}
    	
    	ImageSearch, chatX, chatY, 761, 749, 838, 768, %A_ScriptDir%/Images/Lock In Inactive.png
    	
    	if (ErrorLevel != 1)
    	{
    		break
    	}
    }
    
    PastePosition(lane)
    
    Click 948, 130
    Send %character%
    
    Loop	
    {	
    	ImageSearch, , , 439, 168, 520, 248, %A_ScriptDir%/Images/%character%.png	
    } Until ErrorLevel != 1	

     Click 483, 210	

     Loop	
    {	
    	ImageSearch, , , 745, 738, 849, 778, %A_ScriptDir%/Images/Lock In.png	
    } Until ErrorLevel != 1	

     Click 797, 759	

     PastePosition(lane)
}
    
PastePosition(lane)
{
	Click 61, 853
	Send %lane%{Enter}
}