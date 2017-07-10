--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:c6a346589454210e5ee5be05fdaab67f:bfd163b2fe93ab9b6917b7419376fef4:59bf15b652cec4eb22e13d92691253c5$
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
            -- dfy13
            x=104,
            y=4,
            width=96,
            height=68,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 96,
            sourceHeight = 67
        },
        {
            -- dfy23
            x=4,
            y=4,
            width=96,
            height=68,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 96,
            sourceHeight = 67
        },
    },
    
    sheetContentWidth = 204,
    sheetContentHeight = 76
}

SheetInfo.frameIndex =
{

    ["dfy13"] = 1,
    ["dfy23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
