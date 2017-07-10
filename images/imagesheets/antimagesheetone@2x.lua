--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:407dc1fddb28d9295dbfb3cc9775e72e:eb4ca12f4bd78c68878404e4f5e7e9bc:a4a0a2091c51a69ebe6c250d5f28886c$
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
            -- ant1
            x=4,
            y=4,
            width=58,
            height=76,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 58,
            sourceHeight = 75
        },
        {
            -- ant2
            x=66,
            y=4,
            width=54,
            height=76,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 58,
            sourceHeight = 75
        },
    },
    
    sheetContentWidth = 124,
    sheetContentHeight = 84
}

SheetInfo.frameIndex =
{

    ["ant1"] = 1,
    ["ant2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
