--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:cee8f29cf4237bfeef6909cc46a74308:af354cb6b5571d3b5b8025a8f13782bf:ef5697258bbd340770f97e8b93217550$
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
            -- cen12
            x=2,
            y=39,
            width=7,
            height=35,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 8,
            sourceHeight = 35
        },
        {
            -- cen22
            x=2,
            y=2,
            width=9,
            height=35,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 8,
            sourceHeight = 35
        },
    },
    
    sheetContentWidth = 13,
    sheetContentHeight = 76
}

SheetInfo.frameIndex =
{

    ["cen12"] = 1,
    ["cen22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
