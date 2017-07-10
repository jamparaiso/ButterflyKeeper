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
            x=34,
            y=2,
            width=30,
            height=29,

            sourceX = 0,
            sourceY = 1,
            sourceWidth = 30,
            sourceHeight = 30
        },
        {
            -- grs22
            x=2,
            y=2,
            width=30,
            height=30,

        },
    },
    
    sheetContentWidth = 66,
    sheetContentHeight = 34
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
