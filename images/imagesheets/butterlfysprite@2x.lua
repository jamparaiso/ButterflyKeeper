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
            x=4,
            y=4,
            width=194,
            height=216,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 200,
            sourceHeight = 217
        },
        {
            -- but1
            x=202,
            y=4,
            width=192,
            height=216,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 200,
            sourceHeight = 217
        },
    },
    
    sheetContentWidth = 398,
    sheetContentHeight = 224
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
