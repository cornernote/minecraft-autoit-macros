HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc

HotKeySet('{F2}', 'ToggleClickRepair')
Global $clickRepair = False
Func ToggleClickRepair()
   If $clickRepair Then
	  $clickRepair = False
   Else
	  $clickRepair = True
   EndIf
EndFunc

While True

   ; repair
   If $clickRepair Then
	  MouseClick('right')
   EndIf

   Sleep(50)
WEnd

