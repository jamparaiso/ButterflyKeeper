--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:e4540619e47237190d36acebb6c4eb57:c1ba364c0f2abd89fe90415272788ce7:32d61ada5e0a93dd7a98ea4bb8057144$
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
            -- was14
            x=68,
            y=4,
            width=54,
            height=100,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 60,
            sourceHeight = 106
        },
        {
            -- was24
            x=4,
            y=4,
            width=60,
            height=106,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 60,
            sourceHeight = 106
        },
    },
    
    sheetContentWidth = 126,
    sheetContentHeight = 114
}

SheetInfo.frameIndex =
{

    ["was14"] = 1,
    ["was24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
