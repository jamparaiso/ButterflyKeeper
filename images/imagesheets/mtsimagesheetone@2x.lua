--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:7f6403096bdbd2ff2eb10f5784cdaf6b:54155efec324eefe5878d33132944dbc:7fd507716c7352c2b3f23a6381a9fbf3$
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
            -- mts1
            x=70,
            y=4,
            width=52,
            height=58,

            sourceX = 10,
            sourceY = 6,
            sourceWidth = 62,
            sourceHeight = 65
        },
        {
            -- mts2
            x=4,
            y=4,
            width=62,
            height=66,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 62,
            sourceHeight = 65
        },
    },
    
    sheetContentWidth = 126,
    sheetContentHeight = 74
}

SheetInfo.frameIndex =
{

    ["mts1"] = 1,
    ["mts2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
