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
            x=2,
            y=35,
            width=25,
            height=31,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 27,
            sourceHeight = 30
        },
        {
            -- coc2
            x=2,
            y=2,
            width=27,
            height=31,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 27,
            sourceHeight = 30
        },
    },
    
    sheetContentWidth = 31,
    sheetContentHeight = 68
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
