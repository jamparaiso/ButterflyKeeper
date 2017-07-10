--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:3d448b32cc4f0f5cd9132b9f401270a8:de56c3572952a78149b65c44db579b7b:3b3dc50d58304227cd5bc019d0b03112$
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
            -- dfy14
            x=68,
            y=4,
            width=56,
            height=46,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 60,
            sourceHeight = 47
        },
        {
            -- dfy24
            x=4,
            y=4,
            width=60,
            height=48,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 60,
            sourceHeight = 47
        },
    },
    
    sheetContentWidth = 128,
    sheetContentHeight = 56
}

SheetInfo.frameIndex =
{

    ["dfy14"] = 1,
    ["dfy24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
