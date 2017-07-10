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
            x=4,
            y=4,
            width=170,
            height=336,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 200,
            sourceHeight = 341
        },
        {
            -- hit2
            x=4,
            y=344,
            width=170,
            height=324,

            sourceX = 4,
            sourceY = 12,
            sourceWidth = 200,
            sourceHeight = 341
        },
        {
            -- hit3
            x=4,
            y=672,
            width=120,
            height=206,

            sourceX = 72,
            sourceY = 78,
            sourceWidth = 200,
            sourceHeight = 341
        },
    },
    
    sheetContentWidth = 178,
    sheetContentHeight = 882
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
