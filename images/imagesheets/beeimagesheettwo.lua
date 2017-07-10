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
            x=40,
            y=2,
            width=30,
            height=38,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 35,
            sourceHeight = 38
        },
        {
            -- bee22
            x=2,
            y=2,
            width=36,
            height=38,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 35,
            sourceHeight = 38
        },
    },
    
    sheetContentWidth = 72,
    sheetContentHeight = 43
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
