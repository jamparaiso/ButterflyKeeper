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
            x=4,
            y=78,
            width=14,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 17,
            sourceHeight = 70
        },
        {
            -- cen22
            x=4,
            y=4,
            width=18,
            height=70,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 17,
            sourceHeight = 70
        },
    },
    
    sheetContentWidth = 26,
    sheetContentHeight = 152
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
