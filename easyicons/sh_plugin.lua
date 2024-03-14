PLUGIN.name = 'IX-ICONS EASY'
PLUGIN.author = 'Dobytchick, OPorted by Barnes'
PLUGIN.desc = 'Simplified use of helix icons'

ix.util.Include('cl_pagescrap.lua')

if CLIENT then
    function getIcon(sIcon, bIsCode)
        return not bIsCode and utf8.char(tonumber(IX_ICON_FONT[sIcon])) or utf8.char(tonumber(sIcon))
    end
end
