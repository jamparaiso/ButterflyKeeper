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
            x=27,
            y=2,
            width=21,
            height=25,

            sourceX = 1,
            sourceY = 0,
            sourceWidth = 23,
            sourceHeight = 26
        },
        {
            -- fly24
            x=2,
            y=2,
            width=23,
            height=26,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 23,
            sourceHeight = 26
        },
    },
    
    sheetContentWidth = 50,
    sheetContentHeight = 30
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
