--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:941922c3dcd5424b11585c2a5eb04f90:cc05516c3f173dede7f04b72d9576b6e:f0a3191b6fedfab3f29b92be81e8bc89$
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
            -- bee12
            x=80,
            y=4,
            width=60,
            height=76,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 71,
            sourceHeight = 76
        },
        {
            -- bee22
            x=4,
            y=4,
            width=72,
            height=76,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 71,
            sourceHeight = 76
        },
    },
    
    sheetContentWidth = 144,
    sheetContentHeight = 86
}

SheetInfo.frameIndex =
{

    ["bee12"] = 1,
    ["bee22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
