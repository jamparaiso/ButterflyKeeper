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
            x=36,
            y=2,
            width=31,
            height=44,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 32,
            sourceHeight = 44
        },
        {
            -- coc22
            x=2,
            y=2,
            width=32,
            height=44,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 32,
            sourceHeight = 44
        },
    },
    
    sheetContentWidth = 69,
    sheetContentHeight = 48
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
