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
            x=36,
            y=2,
            width=24,
            height=42,

            sourceX = 5,
            sourceY = 0,
            sourceWidth = 32,
            sourceHeight = 41
        },
        {
            -- grs23
            x=2,
            y=2,
            width=32,
            height=42,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 32,
            sourceHeight = 41
        },
    },
    
    sheetContentWidth = 62,
    sheetContentHeight = 46
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
