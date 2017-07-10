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
            x=40,
            y=2,
            width=33,
            height=29,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 36,
            sourceHeight = 30
        },
        {
            -- mos23
            x=2,
            y=2,
            width=36,
            height=30,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 36,
            sourceHeight = 30
        },
    },
    
    sheetContentWidth = 75,
    sheetContentHeight = 34
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
