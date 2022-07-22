HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc

HotKeySet('{F2}', 'ToggleFarmHerb')
Global $farmHerb = False
Func ToggleFarmHerb()
   If $farmHerb Then
	  $farmHerb = False
	  MouseUp('left')
   Else
	  $farmHerb = True
	  MouseDown('left')
   EndIf
EndFunc

While True
   Sleep(50)
WEnd
