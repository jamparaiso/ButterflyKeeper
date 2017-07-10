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
            x=34,
            y=2,
            width=27,
            height=50,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 30,
            sourceHeight = 53
        },
        {
            -- was24
            x=2,
            y=2,
            width=30,
            height=53,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 30,
            sourceHeight = 53
        },
    },
    
    sheetContentWidth = 63,
    sheetContentHeight = 57
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
