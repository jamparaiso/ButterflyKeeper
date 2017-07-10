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
            x=42,
            y=2,
            width=38,
            height=44,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 37,
            sourceHeight = 44
        },
        {
            -- ant22
            x=2,
            y=2,
            width=38,
            height=44,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 37,
            sourceHeight = 44
        },
    },
    
    sheetContentWidth = 82,
    sheetContentHeight = 48
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
