--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:de9e33a3f1f355cb5a66705a88354a04:364429c859b2f521af8f86eccd26053a:020eb6ad3cda3e8ac0e9e5418abf38a8$
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
            -- bee1
            x=2,
            y=33,
            width=39,
            height=29,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 39,
            sourceHeight = 28
        },
        {
            -- bee2
            x=2,
            y=2,
            width=39,
            height=29,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 39,
            sourceHeight = 28
        },
    },
    
    sheetContentWidth = 43,
    sheetContentHeight = 64
}

SheetInfo.frameIndex =
{

    ["bee1"] = 1,
    ["bee2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
