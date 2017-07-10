--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:ddabff887cf8ed0fe9cc5d6e4065a568:00d1bb11b30f9140459953a74ef4dc9d:57dda147be4da7f5e76bf2c59748482c$
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
            -- fly12
            x=2,
            y=2,
            width=24,
            height=23,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 23,
            sourceHeight = 23
        },
        {
            -- fly22
            x=28,
            y=2,
            width=19,
            height=23,

            sourceX = 3,
            sourceY = 0,
            sourceWidth = 23,
            sourceHeight = 23
        },
    },
    
    sheetContentWidth = 49,
    sheetContentHeight = 27
}

SheetInfo.frameIndex =
{

    ["fly12"] = 1,
    ["fly22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
