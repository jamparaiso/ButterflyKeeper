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
            x=2,
            y=2,
            width=29,
            height=38,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 29,
            sourceHeight = 37
        },
        {
            -- ant2
            x=33,
            y=2,
            width=27,
            height=38,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 29,
            sourceHeight = 37
        },
    },
    
    sheetContentWidth = 62,
    sheetContentHeight = 42
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
