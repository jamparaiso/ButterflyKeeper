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
            x=2,
            y=2,
            width=38,
            height=25,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 38,
            sourceHeight = 25
        },
        {
            -- dfy2
            x=42,
            y=2,
            width=37,
            height=25,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 38,
            sourceHeight = 25
        },
    },
    
    sheetContentWidth = 81,
    sheetContentHeight = 29
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
