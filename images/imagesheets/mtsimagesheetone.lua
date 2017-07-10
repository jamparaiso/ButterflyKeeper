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
            x=35,
            y=2,
            width=26,
            height=29,

            sourceX = 5,
            sourceY = 3,
            sourceWidth = 31,
            sourceHeight = 33
        },
        {
            -- mts2
            x=2,
            y=2,
            width=31,
            height=33,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 31,
            sourceHeight = 33
        },
    },
    
    sheetContentWidth = 63,
    sheetContentHeight = 37
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
