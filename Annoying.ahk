#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

program = 1

^s::
{
  Random, prog, 1, 3
  program = %prog%
  Msgbox %program%
  return
}

;Testing Controls
NumPad1::
{
  program = 1
  Msgbox %program%
  return
}

NumPad2::
{
  program = 2
  Msgbox %program%
  return
}

NumPad3::
{
  program = 3
  Msgbox %program%
  return
}
;END testing controls

Esc::
{
  Suspend, On
  Sleep, 15000
  Suspend, Off
  Send ^s
  return
}

#If (program = 1)
{
  n::
  {
    Random, rand , 1, 3
    if (rand = 1)
    {
      Run, https://media.tenor.com/images/24a1e63039bda5680977f06ae50fb72b/tenor.gif
    }
    else if (rand = 2)
    {
      Run, https://media.tenor.com/images/b5b7f7ac8b9d5934eb142c9a8d87dab9/tenor.gif
    }
    else
    {
      Run, https://media.tenor.com/images/22d0aba3ac82ecb861ceb7bfd4d8f53b/tenor.gif
    }
    return
  }
}

#If (program = 2)
{
  ;Hotstrings
  ::hi::howdy
  ::hello::hoLA
  ::goodbye::I don't want to see you ever again
  ::I love you::I hate you
  ::the::teh
  ::business::sneks
  ::Cornell::Bornell
  ::thank you::i am your father
  ::I::eye
  ::was::were
}

#If (program = 3)
{
  ::c::b
}

^m::ExitApp
