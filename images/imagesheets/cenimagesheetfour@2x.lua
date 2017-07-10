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
            x=4,
            y=82,
            width=46,
            height=74,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 45,
            sourceHeight = 74
        },
        {
            -- cen24
            x=4,
            y=4,
            width=46,
            height=74,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 45,
            sourceHeight = 74
        },
    },
    
    sheetContentWidth = 54,
    sheetContentHeight = 160
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
