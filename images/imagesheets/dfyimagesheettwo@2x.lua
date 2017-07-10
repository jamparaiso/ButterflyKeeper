--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:830eb22f141bfffad5748aedf5564d46:ec8047f53679ec4671ea1ced1d88d9d7:3c10c6e37f68e9ba53ad1cbecd21fab4$
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
            -- dfy12
            x=100,
            y=4,
            width=92,
            height=56,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 91,
            sourceHeight = 55
        },
        {
            -- dfy22
            x=4,
            y=4,
            width=92,
            height=56,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 91,
            sourceHeight = 55
        },
    },
    
    sheetContentWidth = 198,
    sheetContentHeight = 64
}

SheetInfo.frameIndex =
{

    ["dfy12"] = 1,
    ["dfy22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
