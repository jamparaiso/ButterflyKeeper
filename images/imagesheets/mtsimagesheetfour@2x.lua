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
            x=48,
            y=4,
            width=36,
            height=56,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 39,
            sourceHeight = 56
        },
        {
            -- mts24
            x=4,
            y=4,
            width=40,
            height=56,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 39,
            sourceHeight = 56
        },
    },
    
    sheetContentWidth = 90,
    sheetContentHeight = 64
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
