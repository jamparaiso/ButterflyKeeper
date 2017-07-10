--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:0b00d5bb38dca13cd232d3f6a2099d18:074b0670e2aeb7c5b06f54add9607a30:9acbb75e3a9283a6ec76adc722af1de2$
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
            -- item1
            x=4,
            y=4,
            width=170,
            height=334,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 200,
            sourceHeight = 341
        },
        {
            -- item2
            x=610,
            y=4,
            width=174,
            height=214,

            sourceX = 0,
            sourceY = 46,
            sourceWidth = 200,
            sourceHeight = 341
        },
        {
            -- item3
            x=486,
            y=4,
            width=120,
            height=226,

            sourceX = 54,
            sourceY = 46,
            sourceWidth = 200,
            sourceHeight = 341
        },
        {
            -- item4
            x=336,
            y=4,
            width=146,
            height=288,

            sourceX = 4,
            sourceY = 46,
            sourceWidth = 200,
            sourceHeight = 341
        },
        {
            -- item5
            x=178,
            y=4,
            width=154,
            height=318,

            sourceX = 4,
            sourceY = 16,
            sourceWidth = 200,
            sourceHeight = 341
        },
        {
            -- item6
            x=336,
            y=4,
            width=146,
            height=288,

            sourceX = 4,
            sourceY = 46,
            sourceWidth = 200,
            sourceHeight = 341
        },
    },
    
    sheetContentWidth = 788,
    sheetContentHeight = 342
}

SheetInfo.frameIndex =
{

    ["item1"] = 1,
    ["item2"] = 2,
    ["item3"] = 3,
    ["item4"] = 4,
    ["item5"] = 5,
    ["item6"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
