--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:81216cde610fcbe8e9ff0ef625fba05b:efdb40123ed0b217fcea0aca317d831d:b9bd2f6c118aa45cf128ecee3a8e5995$
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
            -- bet14
            x=32,
            y=2,
            width=28,
            height=28,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 28,
            sourceHeight = 28
        },
        {
            -- bet24
            x=2,
            y=2,
            width=28,
            height=28,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 28,
            sourceHeight = 28
        },
    },
    
    sheetContentWidth = 62,
    sheetContentHeight = 32
}

SheetInfo.frameIndex =
{

    ["bet14"] = 1,
    ["bet24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
