--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:f24171763ed7b1c2d070e4f8f1b8a4d5:93854c18851f79b9355dcc01f8c03390:d8c0f965227f4096c03f645dd0967fef$
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
            -- grs13
            x=2,
            y=33,
            width=28,
            height=29,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 28,
            sourceHeight = 29
        },
        {
            -- grs23
            x=2,
            y=2,
            width=28,
            height=29,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 28,
            sourceHeight = 29
        },
    },
    
    sheetContentWidth = 32,
    sheetContentHeight = 64
}

SheetInfo.frameIndex =
{

    ["grs13"] = 1,
    ["grs23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
