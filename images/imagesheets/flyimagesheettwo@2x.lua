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
            x=4,
            y=4,
            width=48,
            height=46,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 47,
            sourceHeight = 45
        },
        {
            -- fly22
            x=56,
            y=4,
            width=38,
            height=46,

            sourceX = 6,
            sourceY = 0,
            sourceWidth = 47,
            sourceHeight = 45
        },
    },
    
    sheetContentWidth = 98,
    sheetContentHeight = 54
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
