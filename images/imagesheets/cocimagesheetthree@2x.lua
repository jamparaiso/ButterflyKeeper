--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:51f48e095393d1dc9b8234baf543c5b1:d375a30a97b0ba1299d271a26234e76b:014c54f6ccd0eb802220d968fd3c7f03$
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
            -- coc13
            x=4,
            y=100,
            width=50,
            height=92,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 49,
            sourceHeight = 92
        },
        {
            -- coc23
            x=4,
            y=4,
            width=50,
            height=92,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 49,
            sourceHeight = 92
        },
    },
    
    sheetContentWidth = 58,
    sheetContentHeight = 196
}

SheetInfo.frameIndex =
{

    ["coc13"] = 1,
    ["coc23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
