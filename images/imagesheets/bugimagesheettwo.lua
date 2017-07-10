--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:71dc537908a675a30e5658288a613783:4b9df148cb110372d9f13e0f23a8c083:8bba10247bf0a5b57c6181fc832f4e60$
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
            -- bug12
            x=40,
            y=2,
            width=35,
            height=31,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 35,
            sourceHeight = 31
        },
        {
            -- bug22
            x=2,
            y=2,
            width=36,
            height=31,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 35,
            sourceHeight = 31
        },
    },
    
    sheetContentWidth = 79,
    sheetContentHeight = 35
}

SheetInfo.frameIndex =
{

    ["bug12"] = 1,
    ["bug22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
