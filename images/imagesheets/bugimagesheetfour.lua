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
            x=32,
            y=2,
            width=27,
            height=27,

            sourceX = 0,
            sourceY = 1,
            sourceWidth = 28,
            sourceHeight = 28
        },
        {
            -- bug24
            x=2,
            y=2,
            width=28,
            height=28,

        },
    },
    
    sheetContentWidth = 61,
    sheetContentHeight = 32
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
