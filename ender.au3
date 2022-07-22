; put sword in slot 9, axe in slot 8

HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc


HotKeySet('{F2}', 'ToggleFarmXp')
Global $farmXp = False
Func ToggleFarmXp()
   If $farmXp Then
	  $farmXp = False
   Else
	  $farmXp = True
   EndIf
EndFunc

While True

   ; farm swords/axes/unarmed
   If $farmXp Then
	  Send('7')
	  Sleep(250)
	  For $i = 1 To 25 Step 1
		 Send('{CTRLDOWN}q{CTRLUP}')
		 MouseClick('left')
		 Sleep(150)
	  Next
	  Send('8')
	  Sleep(250)
	  For $i = 1 To 5 Step 1
		 MouseClick('left')
		 Sleep(800)
	  Next
	  Send('9')
	  Sleep(250)
	  For $i = 1 To 5 Step 1
		 MouseClick('left')
		 Sleep(800)
	  Next
   EndIf

Sleep(50)
WEnd
