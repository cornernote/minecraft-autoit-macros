#include <AutoItConstants.au3>

HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc

While True

   ; ConsoleWrite(PixelChecksum(600, 360, 735, 380) & @CRLF)
   ; ConsoleWrite(PixelChecksum(600, 420, 735, 440) & @CRLF)
   If PixelChecksum(600, 360, 735, 380) == 798767292 Or PixelChecksum(600, 420, 735, 440) == 3641774978 Or PixelChecksum(600, 360, 735, 380) == 2760285231 Then
	  $sold = false
	  For $i = 1 To 3 Step 1
		 ; trade pumpkins
		 If PixelChecksum(600, 360, 735, 380) == 798767292 Then
			Sleep(10)
			MouseClick('right', 600, 360, 1, 0)
			$sold = true
		 EndIf
		 ; trade melons
		 If PixelChecksum(600, 420, 735, 440) == 3641774978 Then
			Sleep(10)
			MouseClick('right', 600, 420, 1, 0)
			$sold = true
		 EndIf
		 ; trade books
		 If PixelChecksum(600, 360, 735, 380) == 2760285231 Then
			Sleep(10)
			MouseClick('right', 600, 360, 1, 0)
			$sold = true
		 EndIf
	  Next
	  If $sold Then
		 Sleep(100)
		 Send('{ESC}')
	  EndIf
   EndIf

   Sleep(50)
WEnd

