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
            x=120,
            y=4,
            width=126,
            height=130,

            sourceX = 2,
            sourceY = 4,
            sourceWidth = 130,
            sourceHeight = 135
        },
        {
            -- p2
            x=4,
            y=4,
            width=112,
            height=134,

            sourceX = 8,
            sourceY = 0,
            sourceWidth = 130,
            sourceHeight = 135
        },
    },
    
    sheetContentWidth = 250,
    sheetContentHeight = 142
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
