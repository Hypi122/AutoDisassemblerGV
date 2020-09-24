#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

coordMode, Mouse, Window

SlotIndexX:=0
SlotIndexY:=0

FirstSlotX:=700
FirstSlotY:=350

ActualSlotX:=FirstSlotX+(SlotIndexX*34)
ActualSlotY:=FirstSlotY+(SlotIndexY*34)

x:=ActualSlotX+77
y:=ActualSlotY+100

^j::
Loop,{
;---------------
ActualSlotX:=FirstSlotX+(SlotIndexX*34)
ActualSlotY:=FirstSlotY+(SlotIndexY*34)
;click, right ,%ActualSlotX% ,%ActualSlotY% ;klika slot
MouseMove,%ActualSlotX% ,%ActualSlotY%
Sleep,200


if(SlotIndexX<7){
x:=ActualSlotX+77
y:=ActualSlotY+100
}
if(SlotIndexX=8){
x:=x
y:=y
}
Sleep,200
;click, %x%,%y% ;klika rozlozenie
MouseMove,%x%,%y%
Sleep,200
;click, 440,410 ;TAK button		nie da sie go przesunac xdd


;---------------
if(SlotIndexY=4){
pause
}

if(SlotIndexX<8){
SlotIndexX:=SlotIndexX+1
}
if(SlotIndexX>=8){
SlotIndexY:=SlotIndexY+1
SlotIndexX:=0
}



} ;koniec loopa


return

^k::
SplashTextOn,100,100, ezz, %SlotIndexX% %SlotIndexY%
Sleep,500
SplashTextOff
return
Esc::

Pause
Suspend

return	