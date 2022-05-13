; Append applications to deactivate the mappings here
GroupAdd, NoDVP, ahk_exe RainbowSix_Vulkan.exe
GroupAdd, NoDVP, ahk_exe RainbowSix.exe
GroupAdd, NoDVP, ahk_exe Warframe.x64.exe
GroupAdd, NoDVP, ahk_exe csgo.exe
GroupAdd, NoDVP, ahk_exe SC2_x64.exe
GroupAdd, NoDVP, ahk_exe Overwatch.exe
GroupAdd, NoDVP, ahk_exe RelicCardinal.exe
GroupAdd, NoDVP, ahk_exe Cyberpunk2077.exe
GroupAdd, NoDVP, ahk_exe DSPGAME.exe
GroupAdd, NoDVP, ahk_exe Megaquarium.exe
GroupAdd, NoDVP, ahk_exe GRW.exe
GroupAdd, NoDVP, ahk_exe BF2042.exe
GroupAdd, NoDVP, ahk_exe factorio.exe
GroupAdd, NoDVP, ahk_exe Legion TD 2.exe
GroupAdd, NoDVP, ahk_exe PummelParty.exe
GroupAdd, NoDVP, ahk_exe Among Us.exe
GroupAdd, NoDVP, ahk_exe krita.exe
GroupAdd, NoDVP, ahk_exe dota2.exe
GroupAdd, NoDVP, ahk_exe StardewModdingAPI.exe
GroupAdd, NoDVP, ahk_exe bf1.exe
GroupAdd, NoDVP, ahk_exe VampireSurvivors.exe
GroupAdd, NoDVP, ahk_exe anki.exe

; IDK what this really does just for fun
;#InstallKeybdHook
;#UseHook
#z::
    Reload
    Sleep, 1000
    MsgBox, Failed Reload
    Return
#Escape:: Suspend 

#IfWinNotActive ahk_group NoDVP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Shift
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
+`::Send, {~} ;; +Zenkaku

+1::Send, +5
+2::Send, 7
+3::Send, 5
+4::Send, 3
+5::Send, 1
+6::Send, 9
+7::Send, 0
+8::Send, 2
+9::Send, 4
+0::Send, 6
+-::Send, 8
+=::Send, ``

+q::Send, :
+[::Send, ?
+]::Send, +6

+'::Send, _ ;; +Colon

+z::Send, "

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Plane
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

`::$

1::&
2::[
3::{
4::}
5::(
6::=
7::*
8::)
9::+
0::]
-::+1
=::#


q::`;
w::,
e::.
r::p
t::y
y::f
u::g
i::c
o::r
p::l
[::/
]::@

; a::a
s::o
d::e
f::u
g::i
h::d
;;  ^j::Send, ^h
j::h
k::t
l::n
`;::s ;; Semicolon
'::- ;; Colon

z::'
x::q
c::j
v::k
b::x
n::b
; m::m
,::w
.::v
/::z

$~*Ctrl:: 
if !state 
        state :=  (GetKeyState("Shift", "P") ||  GetKeyState("Alt", "P") || GetKeyState("LWin", "P") || GetKeyState("RWin", "P"))
    return 

$~ctrl up::
if instr(A_PriorKey, "control") && !state
        send {esc}
    state := 0 
return

#IfWinNotActive
