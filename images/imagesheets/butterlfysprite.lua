--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:5051bbf9d2485e49134490b7931df425:c5b09083b4369ce79578dc2a6643b62a:df7ef4aa03020c63f09469b33781793a$
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
            -- but
            x=2,
            y=2,
            width=97,
            height=108,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 100,
            sourceHeight = 109
        },
        {
            -- but1
            x=101,
            y=2,
            width=96,
            height=108,

            sourceX = 0,
            sourceY = 1,
            sourceWidth = 100,
            sourceHeight = 109
        },
    },
    
    sheetContentWidth = 199,
    sheetContentHeight = 112
}

SheetInfo.frameIndex =
{

    ["but"] = 1,
    ["but1"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
