--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:5f47651712047d58ab66323972fa297a:8a60f205f16c8a552e68af62111637b0:766329912960571d0ae72d3d0f7faff5$
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
            -- bug14
            x=64,
            y=4,
            width=54,
            height=54,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 56,
            sourceHeight = 56
        },
        {
            -- bug24
            x=4,
            y=4,
            width=56,
            height=56,

        },
    },
    
    sheetContentWidth = 122,
    sheetContentHeight = 64
}

SheetInfo.frameIndex =
{

    ["bug14"] = 1,
    ["bug24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
