--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:27339719806507d37a6bbfbbf23eed42:3d3a537bc4c8b8a597ab3e49e80566c4:f470016b6d22ef59db6f400d1a0d93df$
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
            -- ter14
            x=84,
            y=4,
            width=76,
            height=90,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 75,
            sourceHeight = 90
        },
        {
            -- ter24
            x=4,
            y=4,
            width=76,
            height=90,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 75,
            sourceHeight = 90
        },
    },
    
    sheetContentWidth = 164,
    sheetContentHeight = 98
}

SheetInfo.frameIndex =
{

    ["ter14"] = 1,
    ["ter24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
