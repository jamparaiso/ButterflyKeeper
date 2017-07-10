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
            x=64,
            y=4,
            width=56,
            height=56,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 55,
            sourceHeight = 55
        },
        {
            -- bet24
            x=4,
            y=4,
            width=56,
            height=56,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 55,
            sourceHeight = 55
        },
    },
    
    sheetContentWidth = 124,
    sheetContentHeight = 64
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
