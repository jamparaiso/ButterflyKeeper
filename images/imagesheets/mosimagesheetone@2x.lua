--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:240dbb037533106bd1962b00c89d89bf:4eca3414abbfc18cd3e850e0392d7028:acc79d3a558016b99fd3e9c600029c44$
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
            -- mos1
            x=60,
            y=4,
            width=52,
            height=48,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 52,
            sourceHeight = 47
        },
        {
            -- mos2
            x=4,
            y=4,
            width=52,
            height=48,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 52,
            sourceHeight = 47
        },
    },
    
    sheetContentWidth = 116,
    sheetContentHeight = 56
}

SheetInfo.frameIndex =
{

    ["mos1"] = 1,
    ["mos2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
