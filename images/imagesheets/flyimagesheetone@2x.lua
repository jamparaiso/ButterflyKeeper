--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:ade02d59728b67e550797732e78bd0c8:4c28b2817c7aaa03a352958044166cdc:8e1bbc415bfa7e6216340d80949d9b04$
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
            -- fly1
            x=4,
            y=4,
            width=50,
            height=58,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 50,
            sourceHeight = 58
        },
        {
            -- fly2
            x=4,
            y=66,
            width=48,
            height=58,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 50,
            sourceHeight = 58
        },
    },
    
    sheetContentWidth = 58,
    sheetContentHeight = 128
}

SheetInfo.frameIndex =
{

    ["fly1"] = 1,
    ["fly2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
