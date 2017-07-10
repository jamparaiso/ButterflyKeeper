--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:f8c8ce228c264250426d219fe80f1fad:e83ff47c45e8492369a5a57082053136:5bd8214e95fa47d4fdeb93e26e6ed1a2$
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
            -- stk13
            x=2,
            y=40,
            width=14,
            height=36,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 14,
            sourceHeight = 36
        },
        {
            -- stk23
            x=2,
            y=2,
            width=14,
            height=36,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 14,
            sourceHeight = 36
        },
    },
    
    sheetContentWidth = 18,
    sheetContentHeight = 78
}

SheetInfo.frameIndex =
{

    ["stk13"] = 1,
    ["stk23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
