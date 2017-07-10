--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:9fcf5b2d3d5c5294b99dc0db161955f4:2176c7cd5106d18c45091d0cac4d5b52:e0bb7aab815987c95c78daaf7a6af4c1$
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
            -- was1
            x=90,
            y=4,
            width=62,
            height=90,

            sourceX = 10,
            sourceY = 0,
            sourceWidth = 82,
            sourceHeight = 91
        },
        {
            -- was2
            x=4,
            y=4,
            width=82,
            height=92,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 82,
            sourceHeight = 91
        },
    },
    
    sheetContentWidth = 156,
    sheetContentHeight = 100
}

SheetInfo.frameIndex =
{

    ["was1"] = 1,
    ["was2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
