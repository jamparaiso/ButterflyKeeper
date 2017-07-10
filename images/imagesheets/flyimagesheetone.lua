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
            x=2,
            y=2,
            width=25,
            height=29,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 25,
            sourceHeight = 29
        },
        {
            -- fly2
            x=2,
            y=33,
            width=24,
            height=29,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 25,
            sourceHeight = 29
        },
    },
    
    sheetContentWidth = 29,
    sheetContentHeight = 64
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
