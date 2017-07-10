--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:90a5fa6ea09d0df1d52177b745fb8a45:c8ab41f8bdebaa0a1612dcb296c9a6b7:ff4799f6910ac0ef2436367dfad4fbfa$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- ter1
            x=82,
            y=4,
            width=74,
            height=110,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 74,
            sourceHeight = 110
        },
        {
            -- ter2
            x=4,
            y=4,
            width=74,
            height=110,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 74,
            sourceHeight = 110
        },
    },
    
    sheetContentWidth = 160,
    sheetContentHeight = 118
}

SheetInfo.frameIndex =
{

    ["ter1"] = 1,
    ["ter2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
