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
            x=41,
            y=2,
            width=37,
            height=55,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 37,
            sourceHeight = 55
        },
        {
            -- ter2
            x=2,
            y=2,
            width=37,
            height=55,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 37,
            sourceHeight = 55
        },
    },
    
    sheetContentWidth = 80,
    sheetContentHeight = 59
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
