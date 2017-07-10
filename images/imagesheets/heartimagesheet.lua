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
            x=94,
            y=2,
            width=18,
            height=15,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 53,
            sourceHeight = 15
        },
        {
            -- h2
            x=57,
            y=2,
            width=35,
            height=15,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 53,
            sourceHeight = 15
        },
        {
            -- h3
            x=2,
            y=2,
            width=53,
            height=15,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 53,
            sourceHeight = 15
        },
    },
    
    sheetContentWidth = 114,
    sheetContentHeight = 19
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
