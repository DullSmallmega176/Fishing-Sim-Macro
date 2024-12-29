#MaxThreads 255
#Requires AutoHotkey v2.0
#SingleInstance Force
CoordMode "Mouse","Screen"
CoordMode "Pixel","Screen"
CoordMode "ToolTip","Screen"
SendMode "Event"
#Include "%A_ScriptDir%\lib"
#Include "Gdip_All.ahk"
#Include "Gdip_ImageSearch.ahk"
#Include "Roblox.ahk"
(bitmaps:=Map()).CaseSense:=0
pToken:=Gdip_Startup()
#Include "%A_ScriptDir%\images\bitmaps.ahk"
F1:: {
    static x:=0
    x^=1
    SetTimer(AutoCast, x ? 1:0)
}
F2::Reload
F3::ExitApp
AutoCast(){

}
AutoReel(){

}
