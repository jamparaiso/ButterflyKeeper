--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:251817673111159e8de5e89ce0c9bcc3:22d7486d9f9d0393e8100ef5362040a7:ed708755d42bb71a7339dbdd6a4910a7$
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
            -- cen1
            x=2,
            y=46,
            width=13,
            height=42,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 15,
            sourceHeight = 44
        },
        {
            -- cen2
            x=2,
            y=2,
            width=15,
            height=42,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 15,
            sourceHeight = 44
        },
    },
    
    sheetContentWidth = 19,
    sheetContentHeight = 90
}

SheetInfo.frameIndex =
{

    ["cen1"] = 1,
    ["cen2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
