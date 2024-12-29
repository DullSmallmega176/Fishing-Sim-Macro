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
    local fishy:=0
    GetRobloxClientPos(hwnd:=GetRobloxHWND())
    MouseMove(windowX+200+(WindowWidth/2), windowY+(WindowHeight/2)), Click(), Sleep(500)
    loop 50 {
        pBMScreen:=Gdip_BitmapFromScreen(windowX+(WindowWidth/2) "|" windowY+((WindowHeight/2)*.8) "|" (WindowWidth/2) "|" (WindowHeight/2)*1.2)
        ;Gdip_SaveBitmapToFile(pBMScreen, A_ScriptDir "\captured_image.png")
        if (Gdip_ImageSearch(pBMScreen,bitmaps["fishspawn"],,,,,,2)) {
            Gdip_DisposeImage(pBMScreen)
            AutoReel(), fishy++
            break
        }
        Gdip_DisposeImage(pBMScreen)
        sleep(100)
    }
    return fishy
}
AutoReel(){
    local fin:=0
    ; look for the white bobber
    pBMScreen:=Gdip_BitmapFromScreen()
    ; when found, click at a rate of 2 clicks per second "500 ms"

    ; keep looping until bobber is gone.

    ; wait 1 second after bobber is gone.
    Gdip_DisposeImage(pBMScreen)
    return fin
}
