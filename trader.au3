#include <AutoItConstants.au3>

HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc

While True

   $sale1 = PixelChecksum(600, 360, 735, 380)
   $sale2 = PixelChecksum(600, 420, 735, 440)
   ; ConsoleWrite($sale1 & @CRLF)
   ; ConsoleWrite($sale2 & @CRLF)

   $pumpkin = $sale1 == 798767292
   $melon = $sale2 == 3641774978
   $book = $sale1 == 2760285231
   $bottleOEnchanting = $sale1 == 1686234105
   $apple = $sale1 == 2386195132

   If $pumpkin Or $melon Or $book Or $bottleOEnchanting Or $apple Then
	  $sold = false
	  For $i = 1 To 3 Step 1
		 ; trade sale1
		 If $pumpkin Or $book Or $bottleOEnchanting Or $apple Then
			Sleep(10)
			MouseClick('right', 600, 360, 1, 0)
			$sold = true
		 EndIf
		 ; trade sale2
		 If $melon Then
			Sleep(10)
			MouseClick('right', 600, 420, 1, 0)
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

