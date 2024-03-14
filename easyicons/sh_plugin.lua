PLUGIN.name = 'IX-ICONS EASY'
PLUGIN.author = 'Dobytchick, OPorted by Barnes'
PLUGIN.desc = 'Simplified use of nutscript icons'

nut.util.include('cl_pagescrap.lua')

if CLIENT then
    function GetIcon(sIcon, bIsCode)
        return not bIsCode and utf8.char(tonumber(IX_ICON_FONT[sIcon])) or utf8.char(tonumber(sIcon))
    end
end
