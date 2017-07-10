--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:1b51605fb968ae2242587042ec0c1917:a9b9c57b0bce95b7979cfc5a516489b0:628f564c40980c134c17e888d326d3a3$
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
            -- grs14
            x=2,
            y=40,
            width=25,
            height=36,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 25,
            sourceHeight = 36
        },
        {
            -- grs24
            x=2,
            y=2,
            width=25,
            height=36,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 25,
            sourceHeight = 36
        },
    },
    
    sheetContentWidth = 29,
    sheetContentHeight = 78
}

SheetInfo.frameIndex =
{

    ["grs14"] = 1,
    ["grs24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
