--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:c4f86b3ed20e1244cf9c5c04e179c021:ce85d90d609d16b9d13420a8f0c48e25:48270b4ce52b731b2b6ae1fb5df3473d$
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
            -- y1
            x=60,
            y=2,
            width=63,
            height=65,

            sourceX = 1,
            sourceY = 2,
            sourceWidth = 65,
            sourceHeight = 68
        },
        {
            -- y2
            x=2,
            y=2,
            width=56,
            height=67,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 65,
            sourceHeight = 68
        },
    },
    
    sheetContentWidth = 125,
    sheetContentHeight = 71
}

SheetInfo.frameIndex =
{

    ["y1"] = 1,
    ["y2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
