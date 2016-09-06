#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Brings Chrome to the front if open, else it opens the program
+^c::
{
    SetTitleMatchMode 2
    IfWinExist, Chrome
        WinActivate
    else
        Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
    return
}

;Brings E2 Shop to the front if open, else it opens the program
+^s::
{
    SetTitleMatchMode 2
    IfWinExist, Release 7.2
        WinActivate
    else
        Run, "\\cri-app-02\E2\Blswin32\Source\e2ss.exe"
    return
}

+^z::
{
    SetTitleMatchMode 2
    IfWinExist, Calculator
        WinActivate
    else
        Run, "C:\Windows\system32\calc.exe"
    return
}

+^a::
{
  SetTitleMatchMode 2
  IfWinExist, Atom
      WinActivate
  else
      Run, "C:\Users\nicole\AppData\Local\atom\Update.exe --processStart atom.exe"
  return
}
