HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc

HotKeySet('{F2}', 'ToggleFarm')
Global $farm = False
Func ToggleFarm()
   If $farm Then
	  $farm = False
   Else
	  $farm = True
   EndIf
EndFunc

While True

   If $farm Then
	  MouseDown('right')
	  Sleep(1000)
	  MouseUp('right')
	  Sleep(200)
   EndIf

   Sleep(50)
WEnd
