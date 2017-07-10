--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:95ceed38d0bedb9ff8b068868de3a38e:34fb798e63af4446a589344b378fb39c:9d6c6e3a6ed981ba00c42ef91b5a4e81$
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
            -- spi12
            x=4,
            y=102,
            width=44,
            height=94,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 49,
            sourceHeight = 93
        },
        {
            -- spi22
            x=4,
            y=4,
            width=50,
            height=94,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 49,
            sourceHeight = 93
        },
    },
    
    sheetContentWidth = 58,
    sheetContentHeight = 200
}

SheetInfo.frameIndex =
{

    ["spi12"] = 1,
    ["spi22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
