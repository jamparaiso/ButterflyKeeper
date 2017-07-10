--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:fc7c0349ed249ea28c9e4b07143c8857:43453a86f678e2f08176e1d97ef4224e:291723d44d8a252b4a178e69d3ef83df$
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
            x=2,
            y=49,
            width=28,
            height=45,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 28,
            sourceHeight = 45
        },
        {
            -- grs22
            x=2,
            y=2,
            width=28,
            height=45,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 28,
            sourceHeight = 45
        },
    },
    
    sheetContentWidth = 32,
    sheetContentHeight = 98
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
