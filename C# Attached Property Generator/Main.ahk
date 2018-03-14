#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

^F2::

InputBox name, , Enter property name:
InputBox dataType, , Enter property data type:
InputBox ownerType, , Enter property owner type:

clipboardBackup := Clipboard

Clipboard =
(
private static readonly DependencyProperty %name%Property = DependencyProperty.RegisterAttached("%name%",
                                                                                                typeof(%dataType%),
                                                                                                typeof(%ownerType%),
                                                                                                new FrameworkPropertyMetadata(%name%PropertyChanged));

internal static %dataType% Get%name%(DependencyObject dependencyObject)
{
    return (%dataType%)dependencyObject.GetValue(%name%Property);
}

internal static void Set%name%(DependencyObject dependencyObject, %dataType% value)
{
    dependencyObject.SetValue(%name%Property, value);
}

private static void %name%PropertyChanged(DependencyObject dependencyObject, DependencyPropertyChangedEventArgs e)
{

}
)

Send ^v^s

Sleep 500

Clipboard := clipboardBackup