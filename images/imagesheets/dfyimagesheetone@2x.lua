--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:f8164c18e0f82691dab47f915938d11a:76ecf1664a8c80876792a5d403b5da54:a03b8cbf5dd1aa0159f3ea3247287dd6$
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
            -- dfy1
            x=4,
            y=4,
            width=76,
            height=50,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 75,
            sourceHeight = 50
        },
        {
            -- dfy2
            x=84,
            y=4,
            width=74,
            height=50,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 75,
            sourceHeight = 50
        },
    },
    
    sheetContentWidth = 162,
    sheetContentHeight = 58
}

SheetInfo.frameIndex =
{

    ["dfy1"] = 1,
    ["dfy2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
