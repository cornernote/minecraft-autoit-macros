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
	  Send('{CTRLDOWN}q{CTRLUP}')
	  MouseClick('left')
   EndIf

Sleep(100)
WEnd
