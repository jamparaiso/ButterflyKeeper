--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:d6d95d6cbaaed1ae282ca4d0e7b4d101:8bdf2c30b6faa5fa25e68d35fccae675:464a3f94e0ccd229c96e10d835680dc4$
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
            -- mts12
            x=70,
            y=4,
            width=52,
            height=58,

            sourceX = 10,
            sourceY = 6,
            sourceWidth = 62,
            sourceHeight = 65
        },
        {
            -- mts22
            x=4,
            y=4,
            width=62,
            height=66,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 62,
            sourceHeight = 65
        },
    },
    
    sheetContentWidth = 126,
    sheetContentHeight = 74
}

SheetInfo.frameIndex =
{

    ["mts12"] = 1,
    ["mts22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
