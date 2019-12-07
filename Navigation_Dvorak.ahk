CapsLock & Backspace:: Send, {Delete}
CapsLock & Shift::CapsLock
CapsLock::


GetKeyState, state, CapsLock
if (state = "D")
	t::	Send, {Left}
 ;else {
;	Send, ^{Left}
;}

CapsLock & r:: Send, {Up}
CapsLock & n:: Send, {Down}
CapsLock & s:: Send, {Right}

CapsLock & c:: Send, {Home}
CapsLock & l:: Send, {End}
CapsLock & h:: Send, {PgUp}
CapsLock & -:: Send, {PgDn}

CapsLock & ,:: Send, ^

;CapsLock & t:: Send, ^{Left}

/*
;CapsLock & , & r:: Send, ^{Up}
CapsLock & , & n:: Send, ^{Down}
CapsLock & , & s:: Send, ^{Right}

CapsLock & , & c:: Send, ^{Home}
CapsLock & , & l:: Send, ^{End}
CapsLock & , & h:: Send, ^{PgUp}
CapsLock & , & -:: Send, ^{PgDn};
*/
