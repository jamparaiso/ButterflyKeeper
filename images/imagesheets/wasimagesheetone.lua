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
            x=45,
            y=2,
            width=31,
            height=45,

            sourceX = 5,
            sourceY = 0,
            sourceWidth = 41,
            sourceHeight = 45
        },
        {
            -- was2
            x=2,
            y=2,
            width=41,
            height=46,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 41,
            sourceHeight = 45
        },
    },
    
    sheetContentWidth = 78,
    sheetContentHeight = 50
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
