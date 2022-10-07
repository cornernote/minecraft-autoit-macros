;
; keep sellstick in slot 9
; slot 8 will be used when right-clicking chests to open
;

HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc


HotKeySet('{F2}', 'SellStick')
Func SellStick()
   Send('8')
   Sleep(100)
   MouseClick('right')
   Sleep(200)
   If (Hex(PixelGetColor(1178, 552), 6) = '8B8B8B') Then
	  Send('{ESC}')
   Else
	  Send('{ESC}')
	  Sleep(100)
	  Send('9')
	  Sleep(100)
	  MouseClick('right')
   EndIf
EndFunc


While True
   Sleep(100)
WEnd
