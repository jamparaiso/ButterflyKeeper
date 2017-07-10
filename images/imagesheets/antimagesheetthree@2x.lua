--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:5d4a65be70ab533336d3a1090560dd25:2d10f73bce6ad9df212fcf8c551971d7:358f427d18d419bea1ab447112125c22$
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
            -- ant13
            x=4,
            y=4,
            width=82,
            height=88,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 81,
            sourceHeight = 87
        },
        {
            -- ant23
            x=90,
            y=4,
            width=80,
            height=88,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 81,
            sourceHeight = 87
        },
    },
    
    sheetContentWidth = 174,
    sheetContentHeight = 96
}

SheetInfo.frameIndex =
{

    ["ant13"] = 1,
    ["ant23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
