--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:70146e6ef45ef1ae323d9d15b0e2f4c9:84bd626532bb4ffc49d61aa515626b79:78f39e2704ca7761644cdd11fd36115b$
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
            -- cen13
            x=2,
            y=46,
            width=24,
            height=42,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 24,
            sourceHeight = 42
        },
        {
            -- cen23
            x=2,
            y=2,
            width=24,
            height=42,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 24,
            sourceHeight = 42
        },
    },
    
    sheetContentWidth = 28,
    sheetContentHeight = 90
}

SheetInfo.frameIndex =
{

    ["cen13"] = 1,
    ["cen23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
