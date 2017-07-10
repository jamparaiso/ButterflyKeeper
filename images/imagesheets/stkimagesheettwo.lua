--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:953f2d34d1ef0ea000cb10bc00af69eb:5a6af5cc85092e38bce8eb7c44e7c88e:6a5a87f7bb5b261b2d8e0a21b5233ff1$
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
            -- stk12
            x=2,
            y=100,
            width=52,
            height=96,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 96
        },
        {
            -- stk22
            x=2,
            y=2,
            width=54,
            height=96,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 96
        },
    },
    
    sheetContentWidth = 58,
    sheetContentHeight = 198
}

SheetInfo.frameIndex =
{

    ["stk12"] = 1,
    ["stk22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
