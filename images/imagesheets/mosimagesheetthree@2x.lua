--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:5d5c1ddc1162fded89eb8a9a2cb58793:c5c53373abb5e656715d16f58630b332:8e05b800c7ebb37ab4ef93f0fa37cfa9$
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
            -- mos13
            x=80,
            y=4,
            width=66,
            height=58,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 59
        },
        {
            -- mos23
            x=4,
            y=4,
            width=72,
            height=60,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 72,
            sourceHeight = 59
        },
    },
    
    sheetContentWidth = 150,
    sheetContentHeight = 68
}

SheetInfo.frameIndex =
{

    ["mos13"] = 1,
    ["mos23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
