--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:1424f1cd502b2dbc100efa3cf75be9f0:886963ecf171faf1eac42d1e4ffcb854:0eb01e314bd52ec4cf5ecae7eb1ae8ee$
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
            -- bet1
            x=58,
            y=4,
            width=44,
            height=56,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 50,
            sourceHeight = 56
        },
        {
            -- bet2
            x=4,
            y=4,
            width=50,
            height=56,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 50,
            sourceHeight = 56
        },
    },
    
    sheetContentWidth = 106,
    sheetContentHeight = 64
}

SheetInfo.frameIndex =
{

    ["bet1"] = 1,
    ["bet2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
