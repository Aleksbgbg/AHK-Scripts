#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

^F3::

InputBox dataType, , Enter property data type:
InputBox field, , Enter field name (lower camel case):

StringUpper property, field, T

property := SubStr(property, 1, 1) . SubStr(field, 2)
field := _%field%

clipboardBackup := Clipboard

Clipboard =
(
private %dataType% %field%;
public %dataType% %property%
{
	get => %field%;

	set
	{
		if (%field% == value) return;

		%field% = value;
		NotifyOfPropertyChange(() => %property%);
	}
}
)

Send ^v^s

Sleep 500

Clipboard := clipboardBackup