--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:457c2bc0ad4e9096272c4266de85cee5:69ec0f6d834b5dc62b34d2b938c22cc2:313388e0694a20924f570a66b4f823e6$
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
            -- grs1
            x=4,
            y=80,
            width=50,
            height=66,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 50,
            sourceHeight = 71
        },
        {
            -- grs2
            x=4,
            y=4,
            width=50,
            height=72,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 50,
            sourceHeight = 71
        },
    },
    
    sheetContentWidth = 58,
    sheetContentHeight = 150
}

SheetInfo.frameIndex =
{

    ["grs1"] = 1,
    ["grs2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
