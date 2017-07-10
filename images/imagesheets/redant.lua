--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:0934701085c850ee979ac253593b17ce:191cae74986fd76d2ac390c14fdc1858:29b713d7c4ad8445bdd31d9b36cb1004$
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
            -- r1
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
            -- r2
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

    ["r1"] = 1,
    ["r2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
