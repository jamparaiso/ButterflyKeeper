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
            x=43,
            y=2,
            width=37,
            height=37,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 39,
            sourceHeight = 39
        },
        {
            -- bug23
            x=2,
            y=2,
            width=39,
            height=40,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 39,
            sourceHeight = 39
        },
    },
    
    sheetContentWidth = 82,
    sheetContentHeight = 44
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
