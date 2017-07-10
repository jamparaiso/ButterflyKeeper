--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:d9f226c4fcf313d100077935df0e2f8b:2afa9811f7aecea82dbf085dce76f515:ee36fa352fde5897c67f4e34bf9c4d06$
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
            -- stk14
            x=2,
            y=100,
            width=53,
            height=95,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 96
        },
        {
            -- stk24
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
    sheetContentHeight = 197
}

SheetInfo.frameIndex =
{

    ["stk14"] = 1,
    ["stk24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
