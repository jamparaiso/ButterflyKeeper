--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:417370061b8e939a56ad2d6db0d4e175:29f9b684a27e4a46537067442fb8cb1b:fcb2a328c50a4dc136f2e954ac468885$
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
            -- fly13
            x=90,
            y=4,
            width=64,
            height=86,

            sourceX = 8,
            sourceY = 0,
            sourceWidth = 81,
            sourceHeight = 86
        },
        {
            -- fly23
            x=4,
            y=4,
            width=82,
            height=86,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 81,
            sourceHeight = 86
        },
    },
    
    sheetContentWidth = 158,
    sheetContentHeight = 94
}

SheetInfo.frameIndex =
{

    ["fly13"] = 1,
    ["fly23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
