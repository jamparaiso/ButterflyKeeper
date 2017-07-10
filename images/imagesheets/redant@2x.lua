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
            -- r2
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
