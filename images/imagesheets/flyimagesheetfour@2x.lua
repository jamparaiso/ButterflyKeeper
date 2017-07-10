--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:e73379cbf54ddfa345178cbf63a253bd:71841d39080e4fae18947f48e235f0e7:2846edb1df7a49cea3fd12e54d799c2d$
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
            -- fly14
            x=54,
            y=4,
            width=42,
            height=50,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 45,
            sourceHeight = 51
        },
        {
            -- fly24
            x=4,
            y=4,
            width=46,
            height=52,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 45,
            sourceHeight = 51
        },
    },
    
    sheetContentWidth = 100,
    sheetContentHeight = 60
}

SheetInfo.frameIndex =
{

    ["fly14"] = 1,
    ["fly24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
