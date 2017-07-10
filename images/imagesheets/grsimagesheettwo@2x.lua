--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:be17d0a5dfe9952d16327249e3698ca5:8d4e46950f4d34d234aabc3a1d30712f:04359ed307d72a4533cad2cd8ff5bd52$
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
            -- grs12
            x=68,
            y=4,
            width=60,
            height=58,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 60,
            sourceHeight = 60
        },
        {
            -- grs22
            x=4,
            y=4,
            width=60,
            height=60,

        },
    },
    
    sheetContentWidth = 132,
    sheetContentHeight = 68
}

SheetInfo.frameIndex =
{

    ["grs12"] = 1,
    ["grs22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
