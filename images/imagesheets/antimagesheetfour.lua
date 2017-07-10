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
            x=2,
            y=46,
            width=25,
            height=42,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 25,
            sourceHeight = 42
        },
        {
            -- ant24
            x=2,
            y=2,
            width=25,
            height=42,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 25,
            sourceHeight = 42
        },
    },
    
    sheetContentWidth = 29,
    sheetContentHeight = 90
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
