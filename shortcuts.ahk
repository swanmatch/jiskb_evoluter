SetTitleMatchMode, 2
#InstallKeybdHook
#UseHook

vk1C & j::Send, {Blind}{Left}
vk1C & l::Send, {Blind}{Right}
vk1C & i::Send, {Blind}{Up}
vk1C & k::Send, {Blind}{Down}
vk1C & s::Send, {Blind}{Home}
vk1C & f::Send, {Blind}{End}
vk1C & e::Send, {Blind}{Pgup}
vk1C & d::Send, {Blind}{Pgdn}
vk1C & g::Send, {Blind}(
vk1C & h::Send, {Blind})
 
vk1D & a::Send, {Blind}{@}
vk1D & s::Send, {Blind}{#}
vk1D & d::Send, {Blind}{$}
vk1D & f::Send, {Blind}{`%}
vk1D & z::Send, {Blind}{``}
vk1D & x::Send, {Blind}{&}
vk1D & c::Send, {Blind}{*}
vk1D & v::Send, {Blind}{!}
vk1D & g::Send, {Blind}[
vk1D & h::Send, {Blind}]
vk1D & b::Send, {Blind}{{}
vk1D & n::Send, {Blind}{}}

`;::Send, {Blind}{:}
{`+}::Send, {Blind}{;}
:::Send, {Blind}"
;*:::Send, {Blind}{'}
+++

+Space::Send, {Blind}{vkF3sc029}

$Space::
  KeyWait, Space, T0.15
  if ErrorLevel
    send,{ShiftDown}
  else
    send,{Space}
  keywait, PrintScreen
return
Space up::send, {ShiftUp}

$Alt::
  KeyWait, Alt, T0.2
  if ErrorLevel
    send,{Alt}
  else
    send,{F5}
  keywait, Alt
return

;無変換→BackSpace
$Vk1D::
  KeyWait, Vk1D, T0.2
  if ErrorLevel
    send,{Vk1D}
  else
    send,{Backspace}
  keywait, Vk1D
return

;変換→Enter
$Vk1C::
  KeyWait, Vk1C, T0.2
  if ErrorLevel
    send,{Vk1C}
  else
    send,{Enter}
  keywait, Vk1C
return

;かたかな→Del
$sc070::Del

;Capslock→Esc
$sc03A::Esc


#IfWinActive, .ahk ahk_exe HIDEMARU.EXE
  ^s::
    send, ^s
    Sleep, 250
    Reload
    return
#IfWinActive
