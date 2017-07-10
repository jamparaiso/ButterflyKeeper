--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:44424a778ddcb54100bd68b4cc7fed2e:c3d6f5bf3982319834b62f7e8d06a0fe:298aac33193e9ca691f3e10caf13d4cc$
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
            -- stk1
            x=68,
            y=4,
            width=56,
            height=74,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 60,
            sourceHeight = 73
        },
        {
            -- stk2
            x=4,
            y=4,
            width=60,
            height=74,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 60,
            sourceHeight = 73
        },
    },
    
    sheetContentWidth = 128,
    sheetContentHeight = 84
}

SheetInfo.frameIndex =
{

    ["stk1"] = 1,
    ["stk2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
