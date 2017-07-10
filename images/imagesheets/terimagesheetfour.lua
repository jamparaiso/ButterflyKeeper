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
            x=42,
            y=2,
            width=38,
            height=45,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 38,
            sourceHeight = 45
        },
        {
            -- ter24
            x=2,
            y=2,
            width=38,
            height=45,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 38,
            sourceHeight = 45
        },
    },
    
    sheetContentWidth = 82,
    sheetContentHeight = 49
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
