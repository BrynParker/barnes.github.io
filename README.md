# Helix Easy Icons
 
This plugin is a port of Dobytchick's Easy Icons plugin for Helix. All credit goes to him.


# Example Usage:

```lua
local firstIcon = getIcon('icon-print')
local secondIcon = getIcon('0xe801', true)

hook.Add('HUDPaint','TEST', function()
    -- ICON-NAME
    draw.DrawText(firstIcon, 'nutIconsBigNew', 0, 0, color_white, TEXT_ALIGN_LEFT)

    -- SYMBOLCODE
    draw.DrawText(secondIcon, 'nutIconsBigNew', 100, 0, color_white, TEXT_ALIGN_LEFT)
end)
```

# Nutscript icon fonts:
Font | Size 
--- | --- 
nutIconsSmallNew | 22
nutIconsMediumNew | 28
nutIconsBigNew | 48

# Links:
[List of all icons](https://brynparker.github.io/civicnetworks/)
