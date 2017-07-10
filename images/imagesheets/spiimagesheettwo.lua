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
            x=2,
            y=51,
            width=22,
            height=47,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 24,
            sourceHeight = 46
        },
        {
            -- spi22
            x=2,
            y=2,
            width=25,
            height=47,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 24,
            sourceHeight = 46
        },
    },
    
    sheetContentWidth = 29,
    sheetContentHeight = 100
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
