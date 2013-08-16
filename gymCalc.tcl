#!/usr/bin/wish
#init
#==========================================================
#== Simple Gym Calculator            by Mariusz Galus =====
#==========================================================
#= Special thanks to Rani Ahmad from youtube.com/ranixlb ==
#= for your educational series on tcl/tk gui programming ==
#==========================================================
option add *tearOff 0
#Vars
set exer0 "OHP"
set exer1 "DL"
set exer2 "LPD"
set percent 10
set perDisp "x $percent\t\t\t\t="
set frm0 135
set frm1 135
set frm2 135
set nfrm0 [expr round($frm0*$percent*0.01) ]
set nfrm1 [expr round($frm1*$percent*0.01) ]
set nfrm2 [expr round($frm2*$percent*0.01) ]


set ex0(0) [expr round($nfrm0*0.6)]
set ex0(1) [expr round($nfrm0*0.7)]
set ex0(2) [expr round($nfrm0*0.8)]
set ex0(3) [expr round($nfrm0*0.9)]
set ex0(4) [expr round($nfrm0*1)]

set ex2(0) [expr round($nfrm2*0.6)]
set ex2(1) [expr round($nfrm2*0.7)]
set ex2(2) [expr round($nfrm2*0.8)]
set ex2(3) [expr round($nfrm2*0.9)]
set ex2(4) [expr round($nfrm2*1)]

set ex1(0) [expr round($nfrm1*0.6)]
set ex1(1) [expr round($nfrm1*0.7)]
set ex1(2) [expr round($nfrm1*0.8)]
set ex1(3) [expr round($nfrm1*0.9)]
set ex1(4) [expr round($nfrm1*1)]
set exTitle	 "60%\t70%\t80%\t90%\t100%"
set ex0stuff "$ex0(0)\t $ex0(1)\t $ex0(2)\t $ex0(3)\t $ex0(4)"
set ex1stuff "$ex1(0)\t $ex1(1)\t $ex1(2)\t $ex1(3)\t $ex1(4)"
set ex2stuff "$ex2(0)\t $ex2(1)\t $ex2(2)\t $ex2(3)\t $ex2(4)"

proc Nupdate {} {
	#tk_messageBox -message "Why?"
	global percent
	global frm0
	global frm1
	global frm2
	global nfrm0
	global nfrm1
	global nfrm2
	global perDisp
	global ex0
	global ex1
	global ex2
	global ex0stuff
	global ex1stuff
	global ex2stuff
set perDisp "x $percent\t\t\t\t="
set nfrm0 [expr round($frm0*$percent*0.01) ]
set nfrm1 [expr round($frm1*$percent*0.01) ]
set nfrm2 [expr round($frm2*$percent*0.01) ]


set ex0(0) [expr round($nfrm0*0.6)]
set ex0(1) [expr round($nfrm0*0.7)]
set ex0(2) [expr round($nfrm0*0.8)]
set ex0(3) [expr round($nfrm0*0.9)]
set ex0(4) [expr round($nfrm0*1)]

set ex2(0) [expr round($nfrm2*0.6)]
set ex2(1) [expr round($nfrm2*0.7)]
set ex2(2) [expr round($nfrm2*0.8)]
set ex2(3) [expr round($nfrm2*0.9)]
set ex2(4) [expr round($nfrm2*1)]

set ex1(0) [expr round($nfrm1*0.6)]
set ex1(1) [expr round($nfrm1*0.7)]
set ex1(2) [expr round($nfrm1*0.8)]
set ex1(3) [expr round($nfrm1*0.9)]
set ex1(4) [expr round($nfrm1*1)]

set ex0stuff "$ex0(0)\t $ex0(1)\t $ex0(2)\t $ex0(3)\t $ex0(4)"
set ex1stuff "$ex1(0)\t $ex1(1)\t $ex1(2)\t $ex1(3)\t $ex1(4)"
set ex2stuff "$ex2(0)\t $ex2(1)\t $ex2(2)\t $ex2(3)\t $ex2(4)"
}


bind . <Double-Button-1> {
    Nupdate 
}


proc getPer {} {
tk_messageBox -message \
	"Not Implemented." }
#Menus
menu .menubar
. configure -menu .menubar
set m .menubar
menu $m.file
menu $m.help
$m add cascade -menu $m.file -label File
$m add cascade -menu $m.help -label Help
$m.file add command -label "New" -command getPer
$m.file add command -label "Exit" -command exit
$m.help add command -label "About" -command getPer

#Widgets
wm title . "Deff Kosz - Gym Shit"
frame .frm
frame .frmEntry
frame .frmText


label .lab3 -text "MJG Progression Calculator" 
label .lab0 -text "Exercise 1 Weight"
label .lab1 -text "Exercise 2 Weight"
label .lab2 -text "Exercise 3 Weight"
label .labCycleN -text "Cycle # "
label .pSymbol -text "%"
label .dateText -text " Date"
label .labExercise -text "Exercise"
label .labfrm -text "5RM"
label .labMultiplier -text "%"
label .labnewfrm -text "new5RM"
label .perValue0 -textvariable perDisp
label .perValue1 -textvariable perDisp
label .perValue2 -textvariable perDisp
label .asciiweight0 -text "|||-----|||\n\\o/\n|\n/ \\"
label .asciiweight1 -text "|"
label .asciiweight2 -text "|||-----|||"
label .asciiweight3 -text "/ \\mjg"
label .labnfrm0 -textvariable nfrm0
label .labnfrm1 -textvariable nfrm1
label .labnfrm2 -textvariable nfrm2
label .exnTitle -textvariable exTitle

label .labex0 -textvariable ex0stuff
label .labex1 -textvariable ex1stuff
label .labex2 -textvariable ex2stuff

label .labexer0 -textvariable exer0
label .labexer1 -textvariable exer1
label .labexer2 -textvariable exer2

label .labTitleExer -text "Exercise"
label .labWarmUp0 -text "WarmUps\t"
label .labWarmUp1 -text "WarmUps\t"
label .labWarmUp2 -text "WarmUps\t"


label .signature -text "mjg"

button .butUpdate -text "Update" -width 12 -command Nupdate
button .but0 -text "Calc" -width 12 -command getPer
entry .date -width 8 
entry .percent -width 4 -textvariable percent
entry .eName -width 10
entry .frm0 -width 4 -textvariable frm0
entry .frm1 -width 4 -textvariable frm1
entry .frm2 -width 4 -textvariable frm2
entry .wup -width 4 
entry .ent0 -width 8 -textvariable exer0
entry .ent1 -width 8 -textvariable exer1
entry .ent2 -width 8 -textvariable exer2
entry .cycleNumber -width 4


text .txt -width 40 -height 20 \
	 -yscrollcommand ".srl_y set" -xscrollcommand ".srl_x set"\
	 -state disabled
scrollbar .srl_y -command ".txt yview" -orient v
scrollbar .srl_x -command ".txt xview" -orient h
#TRYING TO GET SHIT TO WORK MENU AND BUTTONZ
#Geography Mgmt
#grid .txt -in .frmText -row 1 -column 1 
#grid .srl_y -in .frmText -row 1 -column 2 -sticky ns
#grid .srl_x -in .frmText -row 2 -column 1 -sticky ew

#grid .lab3 -row 1 -column 1 -in .frm


grid .date -in .frmEntry 		-row 1 -column 1
grid .dateText -in .frmEntry -row 1 -column 2 -sticky w
grid .labCycleN -in .frmEntry -sticky e -row 1 -column 3
grid .cycleNumber -in .frmEntry -sticky w -row 1 -column 4
grid .percent .pSymbol -in .frmEntry -row 2 -column 1 -sticky w
grid .pSymbol -in .frmEntry -sticky e -row 2 -column 1
grid .labExercise -in .frmEntry -stick w -row 3 -column 1
grid .labfrm -in .frmEntry -stick w -row 3 -column 2 
grid .labMultiplier -in .frmEntry -stick w -row 3 -column 3
grid .labnewfrm -in .frmEntry -stick w -row 3 -column 4
grid .ent0 -in .frmEntry		-row 4 -column 1 
grid .ent1 -in .frmEntry		-row 5 -column 1
grid .ent2 -in .frmEntry		-row 6 -column 1
grid .frm0 -in .frmEntry		-row 4 -column 2 -sticky w
grid .frm1 -in .frmEntry		-row 5 -column 2 -sticky w
grid .frm2 -in .frmEntry		-row 6 -column 2 -sticky w
grid .perValue0 -in .frmEntry	-row 4 -column 3 -sticky w
grid .perValue1 -in .frmEntry	-row 5 -column 3 -sticky w
grid .perValue2 -in .frmEntry	-row 6 -column 3 -sticky w
grid .labnfrm0 -in .frmEntry	-row 4 -column 4 -sticky w
grid .labnfrm1 -in .frmEntry	-row 5 -column 4 -sticky w
grid .labnfrm2 -in .frmEntry	-row 6 -column 4 -sticky w

grid .labTitleExer -in .frmEntry -row 7 -column 1 -sticky w
grid .labexer0 -in .frmEntry -row 8 -column 1 -sticky w
grid .labexer1 -in .frmEntry -row 9 -column 1 -sticky w
grid .labexer2 -in .frmEntry -row 10 -column 1 -sticky w

grid .labWarmUp0 -in .frmEntry		-row 8 -column 2 -sticky w
grid .labWarmUp1 -in .frmEntry		-row 9 -column 2 -sticky w
grid .labWarmUp2 -in .frmEntry		-row 10 -column 2 -sticky w

grid .exnTitle -in .frmEntry -row 7 -column 3 -sticky w
grid .labex0 -in .frmEntry		-row 8 -column 3 -sticky w
grid .labex1 -in .frmEntry		-row 9 -column 3 -sticky w
grid .labex2 -in .frmEntry		-row 10 -column 3 -sticky w
 
grid .txt -in .frmText 			-row 7 -column 1 
grid .signature -in .frmEntry -row 1 -column 3 -sticky w
grid .asciiweight0 -in .frmEntry 	-row 22 -column 3 -pady 0
grid .butUpdate -row 20 -column 3 -in .frmEntry


#grid .asciiweight1 -in .frmEntry 	-row 23 -column 3 -pady 0
#grid .asciiweight2 -in .frmEntry 	-row 21 -column 3 -pady 0
#grid .asciiweight3 -in .frmEntry 	-row 25 -column 3 -pady 0

grid .frmEntry -row 1 -column 1 -in .frm
#grid .but0 -row 5 -column 3 -in .frm
#grid .frmText -row 2 -column 3 -in .frm

pack .frm
