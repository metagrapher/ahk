; Always on top
#^a::
WinGetActiveTitle, ActiveTitle
WinSet, AlwaysOnTop, Toggle, %ActiveTitle%
return

#^s::
WinGetActiveTitle, ActiveTitle
WinGet, Trans, Transparent, %ActiveTitle%
if (Trans < 240) {
    Trans := Trans + 10
}
else {
    Trans := Min(Trans,255)
}
WinSet, Transparent, %Trans%, %ActiveTitle%
WinSet, Redraw,, %ActiveTitle%
return

#^x::
WinGetActiveTitle, ActiveTitle
WinGet, Trans, Transparent, %ActiveTitle%
if (Trans > 15) 
{
    Trans := Trans - 10
    WinSet, Transparent, %Trans%, %ActiveTitle%
}
WinSet, Redraw,, %ActiveTitle%
return

#^r::
WinGetActiveTitle, ActiveTitle
WinSet, Redraw,, %ActiveTitle%
return