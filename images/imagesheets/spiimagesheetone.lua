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
            x=48,
            y=2,
            width=37,
            height=37,

            sourceX = 3,
            sourceY = 0,
            sourceWidth = 43,
            sourceHeight = 41
        },
        {
            -- spi2
            x=2,
            y=2,
            width=44,
            height=41,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 43,
            sourceHeight = 41
        },
    },
    
    sheetContentWidth = 87,
    sheetContentHeight = 45
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
