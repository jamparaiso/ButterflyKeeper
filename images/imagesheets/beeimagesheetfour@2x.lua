--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:eb98118669451e00e60a6ebcedb245e9:e8cb5e05eb9c9e254bdca979db7a9b20:4974209f8f95a9bb75145fd0ecca0515$
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
            -- bee14
            x=4,
            y=70,
            width=44,
            height=62,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 50,
            sourceHeight = 62
        },
        {
            -- bee24
            x=4,
            y=4,
            width=50,
            height=62,

        },
    },
    
    sheetContentWidth = 58,
    sheetContentHeight = 136
}

SheetInfo.frameIndex =
{

    ["bee14"] = 1,
    ["bee24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
