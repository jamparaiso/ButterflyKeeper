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
            x=29,
            y=2,
            width=22,
            height=28,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 25,
            sourceHeight = 28
        },
        {
            -- bet2
            x=2,
            y=2,
            width=25,
            height=28,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 25,
            sourceHeight = 28
        },
    },
    
    sheetContentWidth = 53,
    sheetContentHeight = 32
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
