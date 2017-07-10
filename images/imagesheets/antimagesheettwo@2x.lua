--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:038285ea1b857ebc7707a66812b24445:af4f428945ef6378be656776d26c015d:7c73e389449e7eee343bbd2509f9ca62$
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
            -- ant12
            x=84,
            y=4,
            width=76,
            height=88,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 75,
            sourceHeight = 88
        },
        {
            -- ant22
            x=4,
            y=4,
            width=76,
            height=88,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 75,
            sourceHeight = 88
        },
    },
    
    sheetContentWidth = 164,
    sheetContentHeight = 96
}

SheetInfo.frameIndex =
{

    ["ant12"] = 1,
    ["ant22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
