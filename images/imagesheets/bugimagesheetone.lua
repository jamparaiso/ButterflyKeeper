--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:5b2b2069c97375db565bf4425f7d0b17:d30e35e34b248ac15b9b5f60054d4e9f:f63d257c593dc1ffec23735380b15a88$
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
            -- bug1
            x=2,
            y=2,
            width=30,
            height=30,

        },
        {
            -- bug2
            x=34,
            y=2,
            width=30,
            height=29,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 30,
            sourceHeight = 30
        },
    },
    
    sheetContentWidth = 66,
    sheetContentHeight = 34
}

SheetInfo.frameIndex =
{

    ["bug1"] = 1,
    ["bug2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
