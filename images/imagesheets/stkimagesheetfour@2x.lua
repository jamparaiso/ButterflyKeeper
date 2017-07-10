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
            x=4,
            y=200,
            width=106,
            height=190,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 108,
            sourceHeight = 192
        },
        {
            -- stk24
            x=4,
            y=4,
            width=108,
            height=192,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 108,
            sourceHeight = 192
        },
    },
    
    sheetContentWidth = 116,
    sheetContentHeight = 394
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
