#include <AutoItConstants.au3>

HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc

HotKeySet('{F7}', 'MenuSteal')
Func MenuSteal()
   Send('{SHIFTDOWN}')
   MouseClick('left')
   Send('{SHIFTUP}')
   Sleep(1)
   Send('ee')
   ;Send('!+{F4}')
   ;Sleep(10)
   ;Send('shop 2{ENTER}')
EndFunc


While True
   Sleep(50)
WEnd

