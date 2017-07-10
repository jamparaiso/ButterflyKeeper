--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:26326a1578e06bbd0526ba2c9c5ef05b:f66ad909c26f5a0cd2b61519aca8639b:b6afdaa95ffa1f2ab512f878411ea028$
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
            -- p1
            x=60,
            y=2,
            width=63,
            height=65,

            sourceX = 1,
            sourceY = 2,
            sourceWidth = 65,
            sourceHeight = 68
        },
        {
            -- p2
            x=2,
            y=2,
            width=56,
            height=67,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 65,
            sourceHeight = 68
        },
    },
    
    sheetContentWidth = 125,
    sheetContentHeight = 71
}

SheetInfo.frameIndex =
{

    ["p1"] = 1,
    ["p2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
