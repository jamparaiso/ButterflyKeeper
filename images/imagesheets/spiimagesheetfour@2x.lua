--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:631580d091e83877d2b0762a36b26e06:3ac064ed2e4fc61bdf4a1e7aa7d1b844:2b88671b23dbdbf7a382986a17c6c730$
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
            -- spi14
            x=82,
            y=4,
            width=70,
            height=96,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 73,
            sourceHeight = 97
        },
        {
            -- spi24
            x=4,
            y=4,
            width=74,
            height=98,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 73,
            sourceHeight = 97
        },
    },
    
    sheetContentWidth = 156,
    sheetContentHeight = 106
}

SheetInfo.frameIndex =
{

    ["spi14"] = 1,
    ["spi24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
