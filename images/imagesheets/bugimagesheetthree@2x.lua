--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:dd939d7006cb4d2befbc78445cfe8921:eb774ede3f84b6daad86604f5dfea3b6:059fb86958635910904a6b186bd2d4eb$
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
            -- bug13
            x=86,
            y=4,
            width=74,
            height=74,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 78,
            sourceHeight = 79
        },
        {
            -- bug23
            x=4,
            y=4,
            width=78,
            height=80,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 78,
            sourceHeight = 79
        },
    },
    
    sheetContentWidth = 164,
    sheetContentHeight = 88
}

SheetInfo.frameIndex =
{

    ["bug13"] = 1,
    ["bug23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
