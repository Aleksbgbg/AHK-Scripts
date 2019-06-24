#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

#include LanePicker.ahk
#Include StartTrainingGame.ahk

^F2::LanePicker("Mid", "Katarina")
^F3::StartTrainingGame()