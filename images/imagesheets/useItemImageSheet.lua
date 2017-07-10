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
            x=2,
            y=2,
            width=85,
            height=167,

            sourceX = 2,
            sourceY = 0,
            sourceWidth = 100,
            sourceHeight = 171
        },
        {
            -- item2
            x=305,
            y=2,
            width=87,
            height=107,

            sourceX = 0,
            sourceY = 23,
            sourceWidth = 100,
            sourceHeight = 171
        },
        {
            -- item3
            x=243,
            y=2,
            width=60,
            height=113,

            sourceX = 27,
            sourceY = 23,
            sourceWidth = 100,
            sourceHeight = 171
        },
        {
            -- item4
            x=168,
            y=2,
            width=73,
            height=144,

            sourceX = 2,
            sourceY = 23,
            sourceWidth = 100,
            sourceHeight = 171
        },
        {
            -- item5
            x=89,
            y=2,
            width=77,
            height=159,

            sourceX = 2,
            sourceY = 8,
            sourceWidth = 100,
            sourceHeight = 171
        },
        {
            -- item6
            x=168,
            y=2,
            width=73,
            height=144,

            sourceX = 2,
            sourceY = 23,
            sourceWidth = 100,
            sourceHeight = 171
        },
    },
    
    sheetContentWidth = 394,
    sheetContentHeight = 171
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
