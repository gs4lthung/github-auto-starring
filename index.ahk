#Persistent
SetTitleMatchMode, 2
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SetWorkingDir, %A_ScriptDir%

ToolTip, ⏳ Starting in 3 seconds...
Sleep, 3000
ToolTip  ; Hide tooltip


starLoopCount := 10     ; number of pages to scroll
starsPerPage := 10    ; max stars per screen

Loop, %starLoopCount% {
    ; Search and click visible star buttons
    Loop, %starsPerPage% {
        ImageSearch, starX, starY, 0, 0, A_ScreenWidth, A_ScreenHeight, *n star_button.png
        if (ErrorLevel = 0) {
            MouseMove, starX + 10, starY + 10, 0
            Sleep, 300
            Click
            Sleep, 600
        } else {
            break
        }
    }

    ; Scroll down to load more repos
    Send, {WheelDown 5}
    Sleep, 1200
}

MsgBox, Done starring repositories!
ExitApp
