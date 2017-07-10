--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:07c0e5db3be24a245f719ed47ff9ea8f:e3ede8741a048ce995128311b098b5e9:895404a3dc81b24fe44b450185b98fa1$
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
            -- grs1
            x=4,
            y=66,
            width=58,
            height=56,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 60,
            sourceHeight = 57
        },
        {
            -- grs2
            x=4,
            y=4,
            width=60,
            height=58,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 60,
            sourceHeight = 57
        },
    },
    
    sheetContentWidth = 68,
    sheetContentHeight = 126
}

SheetInfo.frameIndex =
{

    ["grs1"] = 1,
    ["grs2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
