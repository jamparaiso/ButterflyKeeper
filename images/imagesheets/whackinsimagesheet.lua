--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:b65a4b68c998c00dd13a7be96bd23b64:7cd99e3a9a38b705a34648a8184dea49:2b1f35f9c7f48f7985684287493b429d$
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
            -- ins1
            x=4,
            y=164,
            width=98,
            height=76,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 100,
            sourceHeight = 75
        },
        {
            -- ins2
            x=4,
            y=84,
            width=100,
            height=76,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 100,
            sourceHeight = 75
        },
        {
            -- ins3
            x=4,
            y=4,
            width=100,
            height=76,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 100,
            sourceHeight = 75
        },
    },
    
    sheetContentWidth = 108,
    sheetContentHeight = 244
}

SheetInfo.frameIndex =
{

    ["ins1"] = 1,
    ["ins2"] = 2,
    ["ins3"] = 3,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
