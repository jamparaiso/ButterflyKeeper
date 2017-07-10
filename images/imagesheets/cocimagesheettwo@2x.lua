--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:a6fed0f2a4ff67ec67419dc7affcfe88:f4efdb69b03d0dd4d770e5c42a420600:8a24fc180630cb6dad17eee520f997ef$
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
            -- coc12
            x=72,
            y=4,
            width=62,
            height=88,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 63,
            sourceHeight = 88
        },
        {
            -- coc22
            x=4,
            y=4,
            width=64,
            height=88,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 63,
            sourceHeight = 88
        },
    },
    
    sheetContentWidth = 138,
    sheetContentHeight = 96
}

SheetInfo.frameIndex =
{

    ["coc12"] = 1,
    ["coc22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
