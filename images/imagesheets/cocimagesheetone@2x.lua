--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:49791cc85aa481bdd41a30f63a680e86:9343cee33f261b7f8ca5d766e83a38de:567c9c4b60ffa4e262a1450fdffce977$
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
            -- coc1
            x=4,
            y=70,
            width=50,
            height=62,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 61
        },
        {
            -- coc2
            x=4,
            y=4,
            width=54,
            height=62,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 54,
            sourceHeight = 61
        },
    },
    
    sheetContentWidth = 62,
    sheetContentHeight = 136
}

SheetInfo.frameIndex =
{

    ["coc1"] = 1,
    ["coc2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
