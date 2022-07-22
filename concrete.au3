#include <AutoItConstants.au3>

HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc

HotKeySet('{F2}', 'Toggle')
Global $farm = False
Func Toggle()
   If $farm Then
	  $farm = False
	  MouseUp('right')
	  Sleep(100)
	  MouseUp('left')
   Else
	  $farm = True
	  MouseDown('right')
	  Sleep(100)
	  MouseDown('left')
   EndIf
EndFunc

While True
   Sleep(50)
WEnd

