SetTitleMatchMode, 2
#InstallKeybdHook
#UseHook


; 無変換 → BackSpace
$Vk1D::
  KeyWait, Vk1D, T0.2
  if ErrorLevel
    Send, {Vk1D}
  else
    Send, {Backspace}
  keywait, Vk1D
return

; 変換 → Enter
$Vk1C::
  KeyWait, Vk1C, T0.2
  if ErrorLevel
    Send, {Vk1C}
  else
    Send, {Enter}
  keywait, Vk1C
return

; かたかな → Del
;$sc070::
;  KeyWait, sc070, T0.2
;  if ErrorLevel
;    Send, {Ctrl}
;  else
;    Send, Del
;  keywait, sc070
;return
$sc070::Del

; Capslock → Esc
$sc03A::Send, {Esc}

; Ctrl + Space → ZenHan
^Space::Send, {Blind}{vkF3sc029}

; SpaceShift
Space::
  KeyWait, Space, T0.15
  if ErrorLevel
    Send, {ShiftDown}
  else
    Send, {Space}
  keywait, Space
return
Space up::Send, {ShiftUp}

; AltF5
$Alt::
  KeyWait, Alt, T0.2
  if ErrorLevel
    Send, {Alt}
  else
    Send, {F5}
  keywait, Alt
return


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
vk1C & q::Send, {F1}
vk1C & w::Send, {F2}
vk1C & c::Send, {F3}
vk1C & r::Send, {F4}
vk1C & t::Send, {F5}
vk1C & y::Send, {F6}
vk1C & u::Send, {F7}
vk1C & ,::Send, {F8}
vk1C & o::Send, {F9}
vk1C & p::Send, {F10}
vk1C & m::Send, {F11}
vk1C & .::Send, {F12}
vk1C & a::Send, ~
vk1C & z::Send, {Blind}{^}
vk1C & ^:::Send, {Blind}{|}
vk1C & /::Send, \
 
vk1D & a::Send, {@}
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
vk1D & q::Send, 1
vk1D & w::Send, 2
vk1D & e::Send, 3
vk1D & r::Send, 4
vk1D & t::Send, 5
vk1D & y::Send, 6
vk1D & u::Send, 7
vk1D & i::Send, 8
vk1D & o::Send, 9
vk1D & p::Send, 0
vk1D & m::Send, 1
vk1D & ,::Send, 2
vk1D & .::Send, 3
vk1D & j::Send, 4
vk1D & k::Send, 5
vk1D & l::Send, 6
vk1D & vk1C::Send, 0
vk1D & Space::Send, 00



; れ → :/;
`;::Send, {Blind}{:}
+`;::Send, {`;}
;`+::Send, {`;}

; け → "/'
:::Send, {Blind}"
*::Send, {Blind}`'
;Space & :::Send, {Blind}`'

; ろ → -/_
sc073::Send, -

; @ → =/+
@::Send, {=}
`::Send, {+}
+@::Send, {Blind}{+}
