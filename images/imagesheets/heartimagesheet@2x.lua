--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:798bd8cd9e4a89b4877890dcd0415193:45cd504d0cdb43c58a27e94d41d13bf1:b0379aa7056a2e73c46ae84db96ec2b4$
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
            -- h1
            x=188,
            y=4,
            width=36,
            height=30,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 105,
            sourceHeight = 30
        },
        {
            -- h2
            x=114,
            y=4,
            width=70,
            height=30,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 105,
            sourceHeight = 30
        },
        {
            -- h3
            x=4,
            y=4,
            width=106,
            height=30,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 105,
            sourceHeight = 30
        },
    },
    
    sheetContentWidth = 228,
    sheetContentHeight = 38
}

SheetInfo.frameIndex =
{

    ["h1"] = 1,
    ["h2"] = 2,
    ["h3"] = 3,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
