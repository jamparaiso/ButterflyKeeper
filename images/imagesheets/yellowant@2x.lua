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
            x=120,
            y=4,
            width=126,
            height=130,

            sourceX = 2,
            sourceY = 4,
            sourceWidth = 130,
            sourceHeight = 135
        },
        {
            -- y2
            x=4,
            y=4,
            width=112,
            height=134,

            sourceX = 8,
            sourceY = 0,
            sourceWidth = 130,
            sourceHeight = 135
        },
    },
    
    sheetContentWidth = 250,
    sheetContentHeight = 142
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
