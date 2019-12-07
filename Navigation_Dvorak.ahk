; -------------------------------------
; Layer 1: Navigation
; -------------------------------------

; Make sure CapsLock only toggles on the upstroke, and only if a function from the list below is 
; not used. Also, only toggles when Control* is first held down to prevent buggy behaviour (below):
;
;  I have found just using CapsLock to occasionally be buggy when performing multiple commands
;  quickly when using the mapped Space->Shift: it gets out of sync with the state of the light
;  IE when the Caps light is on, lower case letters are typed. Additionally Shift ends up staying
;  depressed which can cause issues doing many keyboard commands, especially those involving Ctrl.
;
; * I also found that as Shift is right next to Caps, occasionally if you miss Caps and accidentally
; knock the Shift key or are early / late coming off shift when you want to access a function layer
; you can end up accidentally toggling Caps.
CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		;SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
			;The above command would get Caps to toggle if no hotkeys were used.
		SetCapsLockState, AlwaysOff
	Return

^CapsLock::CapsLock ; Toggle Caps only when Ctrl is pressed first.
; N.B.: The way AHK works, this means that this will toggle on the downstroke of Caps, rather than 

; Modifiers
CapsLock & ,::Ctrl
CapsLock & .::Alt
CapsLock & '::LWin
CapsLock & Space::Shift
;  N.B.: If these are inside the IF statement, if the Function Layer key (Caps) is released before the
;  modifiers, they bug out to be 

;#UseHook
; When CapsLock is pressed, but "i" is not (as to not overwrite Layer 2 commands)
#If, GetKeyState("CapsLock", "P") && !GetKeyState("i", "P") ;Your CapsLock hotkeys go below

; Miscellaneous
Enter::Tab


; Navigation
r::Up
t::Left
n::Down
s::Right

; More Navigation
c::Home
l::End
h::PgUp
-::PgDn

1::F1
2::F2
3::F3
4::F4
5::F5
6::F6
7::F7
8::F8
9::F9
0::F10
[::F11
]::F12


#if



; -------------------------------------
; Layer 2: Numpad
; -------------------------------------
i::
	If (A_PriorKey="CapsLock" && !GetKeyState("CapsLock", "P"))
		i::i ; Don't rebind "i" when CapsLock is not depressed.
Return

; When both CapsLock and "i" are pressed
#If, GetKeyState("CapsLock", "P") && GetKeyState("i", "P") ;Your NumLock hotkeys go below

i::Return ; Disable "i" inputting anything when initiating the layer

; Miscellaneous
Backspace::Delete

0::NumpadDiv
[::NumpadMult
=::NumpadSub

l::Numpad9
r::Numpad8
c::Numpad7
s::Numpad6
n::Numpad5
t::Numpad4
z::Numpad3
v::Numpad2
w::Numpad1

RAlt::Numpad0
AppsKey::.
-::NumpadSub
RShift::Enter
Enter::NumpadAdd

