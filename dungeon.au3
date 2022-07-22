HotKeySet('^X', 'ExitScript')
Func ExitScript()
   Exit
EndFunc

HotKeySet('{F1}', 'GoHome')
Func GoHome()
   Send('/')
   Sleep(100)
   Send('home main{ENTER}')
EndFunc

While True
   Sleep(50)
WEnd