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
            x=41,
            y=2,
            width=35,
            height=48,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 37,
            sourceHeight = 49
        },
        {
            -- spi24
            x=2,
            y=2,
            width=37,
            height=49,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 37,
            sourceHeight = 49
        },
    },
    
    sheetContentWidth = 78,
    sheetContentHeight = 53
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
