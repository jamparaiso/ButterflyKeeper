--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:12939ac99a97a966a2c53b01e60b6084:cb9de051e17075bf938255b1cb0dbf45:101971323643ea8636958180a45d5b7e$
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
            -- ant14
            x=4,
            y=92,
            width=50,
            height=84,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 50,
            sourceHeight = 83
        },
        {
            -- ant24
            x=4,
            y=4,
            width=50,
            height=84,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 50,
            sourceHeight = 83
        },
    },
    
    sheetContentWidth = 58,
    sheetContentHeight = 180
}

SheetInfo.frameIndex =
{

    ["ant14"] = 1,
    ["ant24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
