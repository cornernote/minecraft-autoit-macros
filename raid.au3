HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc

HotKeySet('{F2}', 'Toggle')
Global $farm = False
Func Toggle()
   If $farm Then
	  $farm = False
   Else
	  $farm = True
   EndIf
EndFunc

While True

   If $farm Then
	  MouseClick('left')
	  Sleep(1000)
   EndIf

   Sleep(50)
WEnd
