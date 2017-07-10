--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:d1e246c47ed88e57434f669781360c4b:9ef8a0d8d773b998760e248148c83494:c83fcf9be65f6a11f5a91801784367ac$
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
            -- mts13
            x=35,
            y=2,
            width=26,
            height=29,

            sourceX = 5,
            sourceY = 3,
            sourceWidth = 31,
            sourceHeight = 33
        },
        {
            -- mts23
            x=2,
            y=2,
            width=31,
            height=33,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 31,
            sourceHeight = 33
        },
    },
    
    sheetContentWidth = 63,
    sheetContentHeight = 37
}

SheetInfo.frameIndex =
{

    ["mts13"] = 1,
    ["mts23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
