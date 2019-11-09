#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;; Remap Capslock
CapsLock::
    Send, {Escape}
return

;;; Home/End Keys
!Right::
    Send, {End}
return

+!Right::
    Send, +{End}
return

!Left::
    Send, {Home}
return

+!Left::
    Send, +{Home}
return
