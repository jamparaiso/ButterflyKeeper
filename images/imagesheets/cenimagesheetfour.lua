--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:481d374d9ee2076e7aabcb123f67b777:773e6913c2f500462114da26d6138504:698a85fea254d13b348880ada8aaca1b$
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
            -- cen14
            x=2,
            y=41,
            width=23,
            height=37,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 23,
            sourceHeight = 37
        },
        {
            -- cen24
            x=2,
            y=2,
            width=23,
            height=37,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 23,
            sourceHeight = 37
        },
    },
    
    sheetContentWidth = 27,
    sheetContentHeight = 80
}

SheetInfo.frameIndex =
{

    ["cen14"] = 1,
    ["cen24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
