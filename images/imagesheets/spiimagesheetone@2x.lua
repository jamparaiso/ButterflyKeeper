--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:5b95346a3450a862e3e7035ac350767c:9d6b32a4de3b179890e827bb108b0e55:d98c7716714a425acddc80a32b1d2e92$
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
            -- spi1
            x=96,
            y=4,
            width=74,
            height=74,

            sourceX = 6,
            sourceY = 0,
            sourceWidth = 87,
            sourceHeight = 81
        },
        {
            -- spi2
            x=4,
            y=4,
            width=88,
            height=82,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 87,
            sourceHeight = 81
        },
    },
    
    sheetContentWidth = 174,
    sheetContentHeight = 90
}

SheetInfo.frameIndex =
{

    ["spi1"] = 1,
    ["spi2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
