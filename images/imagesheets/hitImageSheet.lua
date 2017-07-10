--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:7fcdbeca658436a8bc5071f002ddd6ff:e05aeb138149a3db6be2f53aa026fb86:c1f1604e8dc16f93dfaa3b0af6770bcc$
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
            -- hit1
            x=2,
            y=2,
            width=85,
            height=168,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 100,
            sourceHeight = 171
        },
        {
            -- hit2
            x=2,
            y=172,
            width=85,
            height=162,

            sourceX = 2,
            sourceY = 6,
            sourceWidth = 100,
            sourceHeight = 171
        },
        {
            -- hit3
            x=2,
            y=336,
            width=60,
            height=103,

            sourceX = 36,
            sourceY = 39,
            sourceWidth = 100,
            sourceHeight = 171
        },
    },
    
    sheetContentWidth = 89,
    sheetContentHeight = 441
}

SheetInfo.frameIndex =
{

    ["hit1"] = 1,
    ["hit2"] = 2,
    ["hit3"] = 3,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
