--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:0a3417e32874ad59467f0f7fbf5d02b2:55d2f7353bdf1fb4ff76717563f0df65:09a8d60a3314b0c1e7f7fe6ea8d6846b$
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
            -- mts14
            x=24,
            y=2,
            width=18,
            height=28,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 19,
            sourceHeight = 28
        },
        {
            -- mts24
            x=2,
            y=2,
            width=20,
            height=28,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 19,
            sourceHeight = 28
        },
    },
    
    sheetContentWidth = 45,
    sheetContentHeight = 32
}

SheetInfo.frameIndex =
{

    ["mts14"] = 1,
    ["mts24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
