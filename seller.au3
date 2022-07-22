#include <AutoItConstants.au3>

HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc

HotKeySet('{F1}', 'FastSellLoad')
Func FastSellLoad()
   MouseClick('right')
   Sleep(400)
   MouseMove(750, 285, 0)
   Send("{SHIFTDOWN}{ALTDOWN}")
   Sleep(50)
   MouseWheel('up', 1)
   Sleep(50)
   Send("{SHIFTUP}{ALTUP}")
   Sleep(100)
   If (Hex(PixelGetColor(745, 650), 6) = '8B8B8B') Then
	  Send('{ESC}')
   Else
	  Send('{ESC}')
	  Sleep(100)
	  Send('/')
	  Sleep(100)
	  Send('back{ENTER}')
   EndIf
EndFunc
Func FastSellLoadVanilla()
   MouseClick('right')
   Sleep(100)
   MouseClick('right',750, 285, 1, 0)
   Sleep(50)
   Send("{SHIFTDOWN}")
   Sleep(50)
   MouseClick('left', 800, 285, 2, 0)
   Sleep(50)
   Send("{SHIFTUP}")
   Sleep(100)
   Send('{ESC}')
   Sleep(100)
   Send('/')
   Sleep(100)
   Send('back{ENTER}')
EndFunc


HotKeySet('{F2}', 'FastSellUnload')
Func FastSellUnload()
   MouseClick('left')
   Sleep(100)
   Send('t')
   Sleep(100)
   Send('all{ENTER}')
   Send('/')
   Sleep(100)
   Send('back{ENTER}')
EndFunc


While True
   Sleep(50)
WEnd

