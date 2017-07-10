--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:7dbdaf00767dce4194e54e8d02bc1466:2f459dbce17ec1300ba4cacd8a38c96d:d0940d873f5272ee20958edb848e1d2b$
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
            -- ter13
            x=76,
            y=4,
            width=68,
            height=112,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 68,
            sourceHeight = 112
        },
        {
            -- ter23
            x=4,
            y=4,
            width=68,
            height=112,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 68,
            sourceHeight = 112
        },
    },
    
    sheetContentWidth = 148,
    sheetContentHeight = 120
}

SheetInfo.frameIndex =
{

    ["ter13"] = 1,
    ["ter23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
