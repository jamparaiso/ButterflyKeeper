--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:bd68591edbde13e73b562a899892671d:5ff4a797d9c97778deeecb25a6244998:bf077f38b68f58f4f8f401426dd3c40a$
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
            -- grs13
            x=72,
            y=4,
            width=48,
            height=84,

            sourceX = 10,
            sourceY = 0,
            sourceWidth = 63,
            sourceHeight = 83
        },
        {
            -- grs23
            x=4,
            y=4,
            width=64,
            height=84,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 63,
            sourceHeight = 83
        },
    },
    
    sheetContentWidth = 124,
    sheetContentHeight = 92
}

SheetInfo.frameIndex =
{

    ["grs13"] = 1,
    ["grs23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
