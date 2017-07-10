--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:fdb9917d885d22b344ed39a0ff283c88:600b3d2ecf82618a778cc7fcf4b5e832:c6999df487058960fbafb3ff52cd4e0a$
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
            -- was12
            x=68,
            y=4,
            width=56,
            height=86,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 60,
            sourceHeight = 85
        },
        {
            -- was22
            x=4,
            y=4,
            width=60,
            height=86,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 60,
            sourceHeight = 85
        },
    },
    
    sheetContentWidth = 128,
    sheetContentHeight = 96
}

SheetInfo.frameIndex =
{

    ["was12"] = 1,
    ["was22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
