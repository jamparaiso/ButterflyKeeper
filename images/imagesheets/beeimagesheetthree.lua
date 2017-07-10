--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:169e7fefc3486708aeddc6fab8767985:cf4107f1e6393e6d5564be5ab00b18ce:ce3330e7c330f4e35593469844c7cac3$
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
            -- bee13
            x=47,
            y=2,
            width=43,
            height=33,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 43,
            sourceHeight = 33
        },
        {
            -- bee23
            x=2,
            y=2,
            width=43,
            height=33,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 43,
            sourceHeight = 33
        },
    },
    
    sheetContentWidth = 92,
    sheetContentHeight = 37
}

SheetInfo.frameIndex =
{

    ["bee13"] = 1,
    ["bee23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
