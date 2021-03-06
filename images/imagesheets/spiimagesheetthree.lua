--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:bc021f8973edc283fa28fcd2da2f1b7e:4114b512b2d4007d2e0481d5c4ecc1d9:86300b4a86de47d5b2d54cc2d456f533$
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
            -- spi13
            x=2,
            y=2,
            width=33,
            height=49,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 32,
            sourceHeight = 49
        },
        {
            -- spi23
            x=37,
            y=2,
            width=26,
            height=45,

            sourceX = 3,
            sourceY = 1,
            sourceWidth = 32,
            sourceHeight = 49
        },
    },
    
    sheetContentWidth = 65,
    sheetContentHeight = 53
}

SheetInfo.frameIndex =
{

    ["spi13"] = 1,
    ["spi23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
