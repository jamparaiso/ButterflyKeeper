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
            x=4,
            y=66,
            width=78,
            height=58,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 78,
            sourceHeight = 57
        },
        {
            -- bee2
            x=4,
            y=4,
            width=78,
            height=58,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 78,
            sourceHeight = 57
        },
    },
    
    sheetContentWidth = 86,
    sheetContentHeight = 128
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
