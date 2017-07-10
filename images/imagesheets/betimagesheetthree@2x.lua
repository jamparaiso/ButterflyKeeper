--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:1b318a4bd41bbe7b8fb9c265d276bed3:827755013fcbc32e9184193775ddc408:2d48d611877dc82483b829294f09cc2c$
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
            -- bet13
            x=4,
            y=4,
            width=58,
            height=60,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 60,
            sourceHeight = 60
        },
        {
            -- bet23
            x=66,
            y=4,
            width=58,
            height=58,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 60,
            sourceHeight = 60
        },
    },
    
    sheetContentWidth = 128,
    sheetContentHeight = 68
}

SheetInfo.frameIndex =
{

    ["bet13"] = 1,
    ["bet23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
