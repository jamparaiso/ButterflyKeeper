local composer = require( "composer" )
local scene = composer.newScene()
local physics = require("physics")
local playerData = require("playerData")
local globals = require( "globals" )
local functions = require("functions")
local dbFunctions = require("dbFunctions")
local levelGoal = require("levelGoal")
local sideBarImage = require("sideBarImage")
--insect sheetinfo
local sheetTable = {
--1
    antOneSheetInfo = require("images.imagesheets.antimagesheetone"),
    antTwoSheetInfo = require("images.imagesheets.antimagesheettwo"),
    antThreeSheetInfo = require("images.imagesheets.antimagesheetthree"),
    antFourSheetInfo = require("images.imagesheets.antimagesheetfour"),
--2
    mosOneSheetInfo = require("images.imagesheets.mosimagesheetone"),
    mosTwoSheetInfo = require("images.imagesheets.mosimagesheettwo"),
    mosThreeSheetInfo = require("images.imagesheets.mosimagesheetthree"),
    mosFourSheetInfo = require("images.imagesheets.mosimagesheetfour"),
--3
    flyOneSheetInfo = require("images.imagesheets.flyimagesheetone"),
    flyTwoSheetInfo = require("images.imagesheets.flyimagesheettwo"),
    flyThreeSheetInfo = require("images.imagesheets.flyimagesheetthree"),
    flyFourSheetInfo = require("images.imagesheets.flyimagesheetfour"),
--4
    cocOneSheetInfo = require("images.imagesheets.cocimagesheetone"),
    cocTwoSheetInfo = require("images.imagesheets.cocimagesheettwo"),
    cocThreeSheetInfo = require("images.imagesheets.cocimagesheetthree"),
    cocFourSheetInfo = require("images.imagesheets.cocimagesheetfour"),
--5
    terOneSheetInfo = require("images.imagesheets.terimagesheetone"),
    terTwoSheetInfo = require("images.imagesheets.terimagesheettwo"),
    terThreeSheetInfo = require("images.imagesheets.terimagesheetthree"),
    terFourSheetInfo = require("images.imagesheets.terimagesheetfour"),
--6
    beeOneSheetInfo = require("images.imagesheets.beeimagesheetone"),
    beeTwoSheetInfo = require("images.imagesheets.beeimagesheettwo"),
    beeThreeSheetInfo = require("images.imagesheets.beeimagesheetthree"),
    beeFourSheetInfo = require("images.imagesheets.beeimagesheetfour"),
--7
    wasOneSheetInfo = require("images.imagesheets.wasimagesheetone"),
    wasTwoSheetInfo = require("images.imagesheets.wasimagesheettwo"),
    wasThreeSheetInfo = require("images.imagesheets.wasimagesheetthree"),
    wasFourSheetInfo = require("images.imagesheets.wasimagesheetfour"),
--8
    bugOneSheetInfo = require("images.imagesheets.bugimagesheetone"),
    bugTwoSheetInfo = require("images.imagesheets.bugimagesheettwo"),
    bugThreeSheetInfo = require("images.imagesheets.bugimagesheetthree"),
    bugFourSheetInfo = require("images.imagesheets.bugimagesheetfour"),
--9
    betOneSheetInfo = require("images.imagesheets.betimagesheetone"),
    betTwoSheetInfo = require("images.imagesheets.betimagesheettwo"),
    betThreeSheetInfo = require("images.imagesheets.betimagesheetthree"),
    betFourSheetInfo = require("images.imagesheets.betimagesheetfour"),
--10
    dfyOneSheetInfo = require("images.imagesheets.dfyimagesheetone"),
    dfyTwoSheetInfo = require("images.imagesheets.dfyimagesheettwo"),
    dfyThreeSheetInfo = require("images.imagesheets.dfyimagesheetthree"),
    dfyFourSheetInfo = require("images.imagesheets.dfyimagesheetfour"),
--11
    grsOneSheetInfo = require("images.imagesheets.grsimagesheetone"),
    grsTwoSheetInfo = require("images.imagesheets.grsimagesheettwo"),
    grsThreeSheetInfo = require("images.imagesheets.grsimagesheetthree"),
    grsFourSheetInfo = require("images.imagesheets.grsimagesheetfour"),
--12
    stkOneSheetInfo = require("images.imagesheets.stkimagesheetone"),
    stkTwoSheetInfo = require("images.imagesheets.stkimagesheettwo"),
    stkThreeSheetInfo = require("images.imagesheets.stkimagesheetthree"),
    stkFourSheetInfo = require("images.imagesheets.stkimagesheetfour"),
--13
    mtsOneSheetInfo = require("images.imagesheets.mtsimagesheetone"),
    mtsTwoSheetInfo = require("images.imagesheets.mtsimagesheettwo"),
    mtsThreeSheetInfo = require("images.imagesheets.mtsimagesheetthree"),
    mtsFourSheetInfo = require("images.imagesheets.mtsimagesheetfour"),
--14
    crtOneSheetInfo = require("images.imagesheets.crtimagesheetone"),
    crtTwoSheetInfo = require("images.imagesheets.crtimagesheettwo"),
    crtThreeSheetInfo = require("images.imagesheets.crtimagesheetthree"),
    crtFourSheetInfo = require("images.imagesheets.crtimagesheetfour"),
--15
    cenOneSheetInfo = require("images.imagesheets.cenimagesheetone"),
    cenTwoSheetInfo = require("images.imagesheets.cenimagesheettwo"),
    cenThreeSheetInfo = require("images.imagesheets.cenimagesheetthree"),
    cenFourSheetInfo = require("images.imagesheets.cenimagesheetfour"),
--16
    spiOneSheetInfo = require("images.imagesheets.spiimagesheetone"),
    spiTwoSheetInfo = require("images.imagesheets.spiimagesheettwo"),
    spiThreeSheetInfo = require("images.imagesheets.spiimagesheetthree"),
    spiFourSheetInfo = require("images.imagesheets.spiimagesheetfour"),

   }

local ranSheetTable = {
    {
        ranSheet = require("images.imagesheets.antimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.mosimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.flyimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.cocimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.terimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.beeimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.wasimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.bugimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.betimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.dfyimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.grsimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.stkimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.mtsimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.crtimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.cenimagesheettwo")
    },
    {
        ranSheet = require("images.imagesheets.spiimagesheettwo")
    },
}

local heartSheetInfo = require("images.imagesheets.heartimagesheet")
physics.start( )--starts the physics engine
physics.setGravity( 0, 9.8 ) -- sets the gravity downward force
system.activate( "multitouch" ) --activate the multitouch feature
--normal,hybrid,debug
physics.setDrawMode("normal")


---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------
--what level the player selected
local selectedLevel = playerData.selectedLevel

--insect limit that touches the bottom
local insLimit = 0
--counts the insect breach
local insLimitCounter = 0

--counts the insect that touches the bottom
local insLimCounter = 0
--forwar declaration
local tryAgainText

--insect image sheet variable
local truSheet = {
 insectOneImageSheet = nil,
 insectTwoImageSheet = nil,
 insectThreeImageSheet = nil,
 insectFourImageSheet = nil,
}

local tapSound = functions.playTapSound
local sketchFont = globals.sketchFont
local splatSound = functions.playSplatSound
local spraySound = functions.playSpraySound
local swatSound = functions.playSwatSound
local racketSound = functions.playRacketSound
local coinSound = functions.playCoinSound
local pauseButtonDef = globals.pauseButtonPress
local leavesButtonDef = globals.leavesButtonDef
local leavesButtonPress = globals.leavesButtonPress
local gameStarted = false
local playPlaySound = functions.playPlaySound

--use for spawn insect storage
local redInsectTable = {}
local yellowInsectTable = {}
local pinkInsectTable = {}
local blueInsectTable = {}
local specInsectTable = {}

local toolSelected = 0
local tool1Table = {}
local toolTable = {}

--insects killed by the player in the dB
local insectsKilled = dbFunctions.fetchPlayerInsectKill(playerData.playID)
playerData.playerCoin = dbFunctions.fetchPlayerCoin(playerData.playID)

local playerCoin = playerData.playerCoin
local playID = playerData.playID

--choose what bg the game has
local selBG = nil

local isPause = false
local toolOn = false --checks if the tool is used so that colliding insect on the
                    --bottom border will not be counted

--insects killed
local insectKill1 = 0
local insectKill2 = 0
local insectKill3 = 0
local insectKill4 = 0
--insect goal
local insectGoal1 = 0
local insectGoal2 = 0
local insectGoal3 = 0
local insectGoal4 = 0
--insect speed
local insectSpeed = {
    insSpeed1 = 3.0,
    insSpeed2 = 3.2,
    insSpeed3 = 3.4,
    insSpeed4 = 3.6,
}

local truRanSheet = {}
local specInsectSheet = nil
local specCoin = nil 

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

--calculates speed base on level
    M.insectSpeedCalc = function()
        local test = insectSpeed.insSpeed1
        local test2 = insectSpeed.insSpeed2
        local test3 = insectSpeed.insSpeed3
        local test4 = insectSpeed.insSpeed4

        test  =(test  - ((.14 * selectedLevel) + (.1 * playerData.wave)))
        test2 =(test2 - ((.14 * selectedLevel) + (.1 * playerData.wave)))
        test3 =(test3 - ((.14 * selectedLevel) + (.1 * playerData.wave)))
        test4 =(test4 - ((.14 * selectedLevel) + (.1 * playerData.wave)))

        insectSpeed.insSpeed1 = test
        insectSpeed.insSpeed2 = test2
        insectSpeed.insSpeed3 = test3
        insectSpeed.insSpeed4 = test4

        print( "Insect speed 1: " .. test )
        print( "Insect speed 2: " .. test2 )
        print( "Insect speed 3: " .. test3 )
        print( "Insect speed 4: " .. test4 )

    end

   M.options = {
    isModal = true,
    effect = "fade",
    time = 400,
    params = {
        isGamePause = nil,
      }
   }

--cost of the tools
   M.toolCost = {
      tool1 = 300,
      tool2 = 200,
      tool3 = 100,
      tool4 = 50
   }

--checks the insect breach limit
   M.checkInsLimit = function(sLevel)
   --changes the special insect coin
       s = sLevel
        if (s <= 6) then
            insLimit = 3
            specCoin = 8
        elseif (s <= 11) then
            insLimit = 4
            specCoin = 14
        elseif (s <= 16) then
            insLimit = 5
            specCoin = 20
        end

        playerData.pLife = insLimit

        return true
   end

--this filter makes sure the they insects dont hit each other hence they'll hit only the bottom border
   M.bottomBorderCollisionFilter = {categoryBits = 1, maskBits = 62}
   M.pinkAntCollisionFilter = {categoryBits = 2, maskBits = 1 }
   M.redAntCollisionFilter = {categoryBits = 4, maskBits = 1 }
   M.yellowAntCollisionFilter = {categoryBits = 8, maskBits = 1 }
   M.blueAntCollsionFilter = {categoryBits = 16, maskBits = 1}
   M.specInsCollisionFilter = {categoryBits = 32, maskBits = 1 }

--checks the texture memory usage of the app
   M.checkMemory = function()
         collectgarbage( "collect" )
         local memUsage_str = string.format( "MEMORY = %.3f KB", collectgarbage( "count" ) )
          print( memUsage_str, "TEXTURE = "..(system.getInfo("textureMemoryUsed") / (1024 * 1024) ) )
         return true
   end

--fetch the level and wave insect kill goal
    M.fetchLevelGoal = function()
        local g = levelGoal.killReq[selectedLevel][playerData.wave]
        insectGoal1 = g.t1
        insectGoal2 = g.t2
        insectGoal3 = g.t3
        insectGoal4 = g.t4
    end

--each levels has its own insects thats why its important to check what level and use
--the appropiate spritesheet
   M.checkWhatImageSheetToUse = function()
      --select the right imagesheet for the level
      if (selectedLevel == 1) then -- level 1
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/antimagesheetone.png", sheetTable.antOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/antimagesheettwo.png", sheetTable.antTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/antimagesheetthree.png", sheetTable.antThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/antimagesheetfour.png", sheetTable.antFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 2) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/mosimagesheetone.png", sheetTable.mosOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/mosimagesheettwo.png", sheetTable.mosTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/mosimagesheetthree.png", sheetTable.mosThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/mosimagesheetfour.png", sheetTable.mosFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 3) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/flyimagesheetone.png", sheetTable.flyOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/flyimagesheettwo.png", sheetTable.flyTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/flyimagesheetthree.png", sheetTable.flyThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/flyimagesheetfour.png", sheetTable.flyFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 4) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/cocimagesheetone.png", sheetTable.cocOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/cocimagesheettwo.png", sheetTable.cocTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/cocimagesheetthree.png", sheetTable.cocThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/cocimagesheetfour.png", sheetTable.cocFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 5) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/terimagesheetone.png", sheetTable.terOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/terimagesheettwo.png", sheetTable.terTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/terimagesheetthree.png", sheetTable.terThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/terimagesheetfour.png", sheetTable.terFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 6) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/beeimagesheetone.png", sheetTable.beeOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/beeimagesheettwo.png", sheetTable.beeTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/beeimagesheetthree.png", sheetTable.beeThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/beeimagesheetfour.png", sheetTable.beeFourSheetInfo:getSheet())
         return true 
      elseif (selectedLevel == 7) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/wasimagesheetone.png", sheetTable.wasOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/wasimagesheettwo.png", sheetTable.wasTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/wasimagesheetthree.png", sheetTable.wasThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/wasimagesheetfour.png", sheetTable.wasFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 8) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/bugimagesheetone.png", sheetTable.bugOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/bugimagesheettwo.png", sheetTable.bugTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/bugimagesheetthree.png", sheetTable.bugThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/bugimagesheetfour.png", sheetTable.bugFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 9) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/betimagesheetone.png", sheetTable.betOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/betimagesheettwo.png", sheetTable.betTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/betimagesheetthree.png", sheetTable.betThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/betimagesheetfour.png", sheetTable.betFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 10) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/dfyimagesheetone.png", sheetTable.dfyOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/dfyimagesheettwo.png", sheetTable.dfyTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/dfyimagesheetthree.png", sheetTable.dfyThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/dfyimagesheetfour.png", sheetTable.dfyFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 11) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/grsimagesheetone.png", sheetTable.grsOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/grsimagesheettwo.png", sheetTable.grsTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/grsimagesheetthree.png", sheetTable.grsThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/grsimagesheetfour.png", sheetTable.grsFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 12) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/stkimagesheetone.png", sheetTable.stkOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/stkimagesheettwo.png", sheetTable.stkTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/stkimagesheetthree.png", sheetTable.stkThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/stkimagesheetfour.png", sheetTable.stkFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 13) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/mtsimagesheetone.png", sheetTable.mtsOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/mtsimagesheettwo.png", sheetTable.mtsTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/mtsimagesheetthree.png", sheetTable.mtsThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/mtsimagesheetfour.png", sheetTable.mtsFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 14) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/crtimagesheetone.png", sheetTable.crtOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/crtimagesheettwo.png", sheetTable.crtTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/crtimagesheetthree.png", sheetTable.crtThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/crtimagesheetfour.png", sheetTable.crtFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 15) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/cenimagesheetone.png", sheetTable.cenOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/cenimagesheettwo.png", sheetTable.cenTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/cenimagesheetthree.png", sheetTable.cenThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/cenimagesheetfour.png", sheetTable.cenFourSheetInfo:getSheet())
         return true
      elseif (selectedLevel == 16) then
         truSheet.insectOneImageSheet = graphics.newImageSheet( "images/imagesheets/spiimagesheetone.png", sheetTable.spiOneSheetInfo:getSheet() )
         truSheet.insectTwoImageSheet = graphics.newImageSheet( "images/imagesheets/spiimagesheettwo.png", sheetTable.spiTwoSheetInfo:getSheet() )
         truSheet.insectThreeImageSheet = graphics.newImageSheet("images/imagesheets/spiimagesheetthree.png", sheetTable.spiThreeSheetInfo:getSheet() )
         truSheet.insectFourImageSheet = graphics.newImageSheet( "images/imagesheets/spiimagesheetfour.png", sheetTable.spiFourSheetInfo:getSheet())
         return true 
      end
   end

--pick special random insect
    M.pickRanSpecialInsect = function()
        local ran = 0
        local level = selectedLevel
            if (selectedLevel ~= 16) then
                level = level + 1
                ran = math.random(level,16)
            elseif (selectedLevel == 16) then
                ran = math.random(1,15)
            end

            print( "Special insect ID: " .. ran  )

        truRanSheet = {
            {
                truRan = graphics.newImageSheet( "images/imagesheets/antimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/mosimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/flyimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/cocimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/terimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/beeimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/wasimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/bugimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/betimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/dfyimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/grsimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/stkimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/mtsimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/crtimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/cenimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
            {
                truRan = graphics.newImageSheet( "images/imagesheets/spiimagesheettwo.png", ranSheetTable[ran].ranSheet:getSheet() )
            },
        }

        return truRanSheet[ran].truRan
    end

--generate random x position on the insects
   M.generateRandomXPos = function()
      local screenWidth = display.contentWidth - 50
      local xPos = math.random(160,screenWidth)
      return xPos
   end

--generate random y position of the insects
   M.generateRandomYPos = function()
   --make it a negative number to simulate that they are going out. it not good to see them just
   --pop up on the screen
      local yPos = (math.random(1,100) * -1)
      return yPos
   end

--start the game
   M.startGame = function()
      gameStarted = true
      tapSound()
      playPlaySound()
      local interval = 900 - ((selectedLevel * 20) + (10 * playerData.wave))
      print( "spawn interval: " .. interval)
      redInsectTimer = timer.performWithDelay( interval, M.spawnRedInsect, -1)
      pinkInsectTimer = timer.performWithDelay( interval, M.spawnPinkInsect , -1 )
      yellowInsectTimer = timer.performWithDelay( interval, M.spawnYellowInsect , -1 )
      blueInsectTimer = timer.performWithDelay( interval, M.spawnBlueInsect ,-1 )
        --checks if wave 5
        if (playerData.wave == 5) then
           specInsectTimer = timer.performWithDelay( 2000, M.spawnSpecialInsect, -1 ) 
        end
      textStart.alpha = 0
      textStart:removeEventListener( "touch", M.startGame )
   end

   M.pausePlay = function()
        physics.pause( )
        timer.pause( redInsectTimer )
        timer.pause( pinkInsectTimer )
        timer.pause( yellowInsectTimer )
        timer.pause( blueInsectTimer )
            if (playerData.wave == 5) then
                timer.pause( specInsectTimer )                
            end
        timer.pause( upInsectKillTimer )
        M.options.params.isGamePause = true
        audio.setVolume( 0, {channel = 10} )
        composer.showOverlay("mainGameOverlay",M.options)
   end

--pause buttonhandler
   M.pauseButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         if (gameStarted) then
            tapSound()
            M.pausePlay()
         end
      end
   end

--updates the insect killed every second
    M.upInsectKill = function()
        dbFunctions.updatePlayerInsectKill(playID,insectsKilled)
        return true
    end

--black background
    M.blackBackground = function()
        local blackBG = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
            blackBG.anchorX = 0.5
            blackBG.anchorY = 0.5
            blackBG.x = display.contentCenterX
            blackBG.y = display.contentCenterY
            blackBG:setFillColor( 0,0,0 )
            blackBG.alpha = 0.5
            return blackBG
    end

--wave continue button handler
    M.WaveContinueButtonEventHandler = function(event)
        if ("ended" == event.phase) then
            tapSound()
           composer.gotoScene("gameComplete",globals.sceneNextTransitionOption) 
        end
    end    

--wave complete
    M.waveComplete = function()

            local bg = M.blackBackground()
            gameOverGroup:insert(bg)

            local waveCompText = display.newText("",0,0,"Arial",50)
            if (playerData.wave ~= 5) then
                functions.resetInsectKill()
                waveCompText.text = "Wave " .. playerData.wave .. " Complete!"
                
            elseif (playerData.wave == 5) then
                functions.resetInsectKill()
                functions.resetInsectGameData()
                waveCompText.text = "Level Complete!"  
            end
            
            waveCompText.anchorX = 0.5
            waveCompText.anchorY = 0.5
            waveCompText.x = display.contentCenterX
            waveCompText.y = display.contentCenterY
            waveCompText:setFillColor( 1,1,1 )
            gameOverGroup:insert(waveCompText)

            local continueButton = globals.createButton(4,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Continue",
                           M.WaveContinueButtonEventHandler)

            gameOverGroup:insert(continueButton)
    end    

--check if the goal is reached
    M.checkGoal = function()
        if (playerData.insectKill1 >= insectGoal1) and (playerData.insectKill2 >= insectGoal2) and
           (playerData.insectKill3 >= insectGoal3) and (playerData.insectKill4 >= insectGoal4) then
            print("finish")
            timer.pause( redInsectTimer )
            timer.pause( pinkInsectTimer )
            timer.pause( yellowInsectTimer )
            timer.pause( blueInsectTimer )
            if (playerData.wave == 5) then
                timer.pause( specInsectTimer )                
            end
            timer.pause( upInsectKillTimer )
            --upInsectKillTimer = nil
            --redInsectTimer = nil
            --pinkInsectTimer = nil
            --yellowInsectTimer = nil
            --blueInsectTimer = nil
            insectsGroup:removeSelf( )
            M.waveComplete()
        end
    end

--change the font of the text when the player finished the task on insect
   M.changeIntFontColor = function()
    if (playerData.insectKill1 == insectGoal1) then
        sideIns1Txt:setFillColor( 0,1,0 )
    end
    if (playerData.insectKill2 == insectGoal2) then
        sideIns2Txt:setFillColor( 0,1,0 )
    end
    if (playerData.insectKill3 == insectGoal3) then
        sideIns3Txt:setFillColor( 0,1,0 )
    end
    if (playerData.insectKill4 == insectGoal4) then
        sideIns4Txt:setFillColor( 0,1,0 )
    end    
   end 

--insects touch handler--------------------------------------
   local function pinkInsectOnTap(self,event)
      splatSound()
      pinkInsectTable[self] = nil
      display.remove( self )
      insectsKilled = insectsKilled + 1
      playerData.insectKill1 = playerData.insectKill1 + 1
      sideIns1Txt.text = playerData.insectKill1 .. "/" .. insectGoal1
      M.changeIntFontColor()
      M.checkGoal()
      return true
   end

   local function redInsectOnTap(self,event)
      --the insect in needed to be tapped twice to die
         if (event.numTaps == 2 ) then
            coinSound()
            redInsectTable[self] = nil
            display.remove( self )
            insectsKilled = insectsKilled + 1
            playerData.insectKill2 = playerData.insectKill2 + 1
            sideIns2Txt.text = playerData.insectKill2 .. "/" .. insectGoal2
            --add coins
            playerCoin = playerCoin + 2
            textTruCoin.text = playerCoin
            --updates the player coins
            dbFunctions.updatePlayerGameCoinDeduction(playID,playerCoin)
            M.changeIntFontColor()
            M.checkGoal()
            return true
         else
            return false
         end
   end

   local function yellowInsectOnTap(self,event)
      splatSound()
      yellowInsectTable[self] = nil
      display.remove( self )
      insectsKilled = insectsKilled + 1
      playerData.insectKill3 = playerData.insectKill3 + 1
      sideIns3Txt.text = playerData.insectKill3 .. "/" .. insectGoal3
      M.changeIntFontColor()
      M.checkGoal()
      return true
   end


   local function blueInsectOnTap(self,event)
      splatSound()
      blueInsectTable[self] = nil
      display.remove( self )
      insectsKilled = insectsKilled + 1
      playerData.insectKill4 = playerData.insectKill4 + 1
      sideIns4Txt.text = playerData.insectKill4 .. "/" .. insectGoal4
      M.changeIntFontColor()
      M.checkGoal()
      return true
   end

   local function specInsectOnTap(self,event)
       splatSound()
       specInsectTable[self] = nil
       display.remove( self )
       insectsKilled = insectsKilled + 1
        --add coins
        playerCoin = playerCoin + specCoin
        textTruCoin.text = playerCoin
        --updates the player coins
        dbFunctions.updatePlayerGameCoinDeduction(playID,playerCoin)
       return true
   end

--insect collision handler
--when they collide with something (bottomborder, tools) they will automatically disappear
   local function pinkInsectOnCollision(self,event)
         pinkInsectTable[self] = nil
         display.remove( self )
         if (toolOn) then
             insectsKilled = insectsKilled + 1
             playerData.insectKill1 = playerData.insectKill1 + 1
             sideIns1Txt.text = playerData.insectKill1 .. "/" .. insectGoal1
            --add coins
            playerCoin = playerCoin + 2
            textTruCoin.text = playerCoin
            --updates the player coins
            dbFunctions.updatePlayerGameCoinDeduction(playID,playerCoin)
            M.changeIntFontColor()
             M.checkGoal()
         end
         return true
   end

   local function redInsectOnCollision(self,event)
         redInsectTable[self] = nil
         display.remove( self )
         if (toolOn) then
             insectsKilled = insectsKilled + 1
             playerData.insectKill2 = playerData.insectKill2 + 1
             sideIns2Txt.text = playerData.insectKill2 .. "/" .. insectGoal2
            --add coins
            playerCoin = playerCoin + 2
            textTruCoin.text = playerCoin
            --updates the player coins
            dbFunctions.updatePlayerGameCoinDeduction(playID,playerCoin)
             M.changeIntFontColor()
             M.checkGoal()          
         end
         return true
   end

   local function yellowInsectOnCollision(self,event)
         yellowInsectTable[self] = nil
         display.remove( self )
         if (toolOn) then
             insectsKilled = insectsKilled + 1
             playerData.insectKill3 = playerData.insectKill3 + 1
             sideIns3Txt.text = playerData.insectKill3 .. "/" .. insectGoal3
             M.changeIntFontColor()
             M.checkGoal()
         end
         return true     
   end

   local function blueInsectOnCollision(self,event)
         blueInsectTable[self] = nil
         display.remove( self )
         if (toolOn) then
             insectsKilled = insectsKilled + 1
             playerData.insectKill4 = playerData.insectKill4 + 1
             sideIns4Txt.text = playerData.insectKill4 .. "/" .. insectGoal4
             M.changeIntFontColor()
             M.checkGoal()
         end
         return true     
   end

   local function specInsectOnCollision(self,event)
      specInsectTable[self] = nil
      display.remove( self )
        if (toolOn) then
            insectsKilled = insectsKilled + 1
            --add coins
            playerCoin = playerCoin + specCoin
            textTruCoin.text = playerCoin
            --updates the player coins
            dbFunctions.updatePlayerGameCoinDeduction(playID,playerCoin) 
        end
       return true
   end

   M.continueButtonEventHandler = function(event)
       if ("ended" == event.phase) then
       tapSound()
           composer.gotoScene("gameOver",globals.sceneNextTransitionOption)
       end
   end

   M.tryAgainTextEventHandler = function(event)
       if ("ended" == event.phase) then
           tapSound()
           gameStarted = true
           functions.resetInsectKill()
           sideIns1Txt.text = playerData.insectKill1 .. "/" .. insectGoal1
           sideIns1Txt:setFillColor( 1,1,1 )
           sideIns2Txt.text = playerData.insectKill2 .. "/" .. insectGoal2
           sideIns2Txt:setFillColor( 1,1,1 )
           sideIns3Txt.text = playerData.insectKill3 .. "/" .. insectGoal3
           sideIns3Txt:setFillColor( 1,1,1 )
           sideIns4Txt.text = playerData.insectKill4 .. "/" .. insectGoal4
           sideIns4Txt:setFillColor( 1,1,1 )
           timer.resume( redInsectTimer )
           timer.resume( pinkInsectTimer )
           timer.resume( yellowInsectTimer )
           timer.resume( blueInsectTimer )
            if (playerData.wave == 5) then
                timer.resume( specInsectTimer )                
            end
           timer.resume( upInsectKillTimer )
           playerData.pLife = insLimit
           txtTruLife.text = insLimit
           tryAgainText:removeEventListener( "touch", M.tryAgainTextEventHandler )

                            playerData.tries = playerData.tries - 1
                                if (playerData.tries == 0) then
                                    heartImageTmp.alpha = 0
                                    playerData.lastTry = true
                                else
                                    heartImageTmp:setFrame( playerData.tries)
                                end

            --clear the game over group
                for i=gameOverGroup.numChildren,1,-1 do
                    display.remove( gameOverGroup[i] ) ; gameOverGroup[i] = nil
                end
       end
   end

--the insect reach the bottomborder
   local function onCollision(event)
    --insect touches the bottom
         --if (playerData.tries ~= 0) then
                --checks if the limit is not yet reached
                    insLimitCounter = insLimitCounter + 1
                    playerData.pLife = playerData.pLife - 1
                    txtTruLife.text = playerData.pLife
                    print( "insect breach. Insect Limit count:" .. insLimitCounter )
                if (insLimitCounter == insLimit) then
                    --limit reached
                    --insLimitCounter = 0 --resets the insects limit counter
                    print( "minus life" )
                        --checks if the player has life left
                        if (playerData.pLife == 0) and (playerData.lastTry == false ) then
                            --wave failed
                            --minus player life
                            print( "wave failed" )
                            --clear the game over group
                            insLimitCounter = 0
                            playerData.pLife = insLimit
                            for i=gameOverGroup.numChildren,1,-1 do
                                display.remove( gameOverGroup[i] ) ; gameOverGroup[i] = nil
                            end

                            for i= insectsGroup.numChildren,1,-1 do
                                display.remove( insectsGroup[i] ) ; insectsGroup[i] = nil
                            end
                            --physics.stop( )
                            timer.pause( redInsectTimer )
                            timer.pause( pinkInsectTimer )
                            timer.pause( yellowInsectTimer )
                            timer.pause( blueInsectTimer )
                            if (playerData.wave == 5) then
                                timer.pause( specInsectTimer )                
                            end
                            timer.pause( upInsectKillTimer )                            

                            local bg = M.blackBackground()
                            gameOverGroup:insert(bg)

                            local failedWaveText = display.newText("Wave Failed!",0,0,"Arial",50)
                            failedWaveText.anchorX = 0.5
                            failedWaveText.anchorY = 0.5
                            failedWaveText.x = display.contentCenterX
                            failedWaveText.y = display.contentCenterY
                            failedWaveText:setFillColor( 1,1,1 )
                            gameOverGroup:insert(failedWaveText)

                            tryAgainText = display.newText( "Try Again",0,0,"Arial",50 )
                            tryAgainText.anchorX = 0.5
                            tryAgainText.anchorY = 0.5
                            tryAgainText.x = display.contentCenterX
                            tryAgainText.y = failedWaveText.y + 200
                            tryAgainText:setFillColor( 1,1,1 )
                            gameOverGroup:insert(tryAgainText)
                            tryAgainText:addEventListener( "touch", M.tryAgainTextEventHandler )
                            gameStarted = false

                        elseif (playerData.pLife == 0) and (playerData.lastTry) then
                            --game over
                            print( "game over" )
                            gameStarted = false

                            local bg = M.blackBackground()
                            gameOverGroup:insert(bg)

                            local gameOverText = display.newText("Game Over!",0,0,"Arial",50)
                            gameOverText.anchorX = 0.5
                            gameOverText.anchorY = 0.5
                            gameOverText.x = display.contentCenterX
                            gameOverText.y = display.contentCenterY
                            gameOverText:setFillColor( 1,1,1 )
                            gameOverGroup:insert(gameOverText)

                            local continueButton = globals.createButton(4,675,100,display.contentWidth/2,display.contentHeight-150,
                                           sketchFont,leavesButtonDef,leavesButtonPress,"Continue",
                                           M.continueButtonEventHandler)
                            gameOverGroup:insert(continueButton)

                            insectsGroup:removeSelf( )
                            timer.pause( redInsectTimer )
                            timer.pause( pinkInsectTimer )
                            timer.pause( yellowInsectTimer )
                            timer.pause( blueInsectTimer )
                            if (playerData.wave == 5) then
                                timer.pause( specInsectTimer )                
                            end
                            timer.pause( upInsectKillTimer )
                            functions.resetInsectGameData()
                            functions.resetInsectKill()
                            --upInsectKillTimer = nil
                            --redInsectTimer = nil
                            --pinkInsectTimer = nil
                            --yellowInsectTimer = nil
                            --blueInsectTimer = nil
                            --return false
                        end
                end
            return true
         --end
   end

--spawn special insect
    M.spawnSpecialInsect = function()
        specInsectSheet = M.pickRanSpecialInsect()
            local willSpawn = math.random(1,4)
            if (willSpawn == 1) then
                local specInsectTmp = display.newSprite( specInsectSheet, {name = "Special",start = 1, count = 2, time = 500 } )
                specInsectTmp.anchorX = 0.5
                specInsectTmp.anchorY = 1
                specInsectTmp.x = M.generateRandomXPos()
                specInsectTmp.y = -10 --M.generateRandomYPos()
                specInsectTmp.xScale = 3
                specInsectTmp.yScale = 3
                specInsectTmp:play()
                insectsGroup:insert(specInsectTmp)

                specInsectTmp.touch = specInsectOnTap
                specInsectTmp:addEventListener( "touch" )

                physics.addBody( specInsectTmp, { bounce = 0 ,friction = 0.5 ,filter = M.specInsCollisionFilter} )
                specInsectTmp.collision = specInsectOnCollision
                specInsectTmp:addEventListener( "collision" )

                specInsectTmp.linearDamping = insectSpeed.insSpeed2
            end
    end

--spawns the insects
   M.spawnPinkInsect = function()
      local willSpawn = math.random(1,3)
         if (willSpawn == 2) then
            local pinkInsectTmp = display.newSprite( truSheet.insectOneImageSheet, {name = "pinkInsect",start = 1, count = 2,time = 500 } )
                  pinkInsectTmp.anchorX = 0.5
                  pinkInsectTmp.anchorY = 1
                  pinkInsectTmp.x = M.generateRandomXPos()
                  pinkInsectTmp.y = -150  --M.generateRandomYPos()
                  pinkInsectTmp.xScale = 3
                  pinkInsectTmp.yScale = 3
                  pinkInsectTmp:play() --plays the sprite
                  insectsGroup:insert(pinkInsectTmp)

                  pinkInsectTmp.touch = pinkInsectOnTap
                  pinkInsectTmp:addEventListener( "touch" )

                  physics.addBody( pinkInsectTmp,{ bounce = 0 ,friction = 0.5 ,filter = M.pinkAntCollisionFilter})

                  pinkInsectTmp.collision = pinkInsectOnCollision
                  pinkInsectTmp:addEventListener( "collision")

                  pinkInsectTmp.linearDamping = insectSpeed.insSpeed1 --speed of the insect

               return true
         else
               return false      
         end
   end

   M.spawnRedInsect = function()
      local willSpawn = math.random(1,4)
         if (willSpawn == 2) then
            local redInsectTmp = display.newSprite( truSheet.insectTwoImageSheet, {name = "redInsect",start = 1, count = 2,time = 500 } )
                  redInsectTmp.anchorX = 0.5
                  redInsectTmp.anchorY = 1
                  redInsectTmp.x = M.generateRandomXPos()
                  redInsectTmp.y = -100 --M.generateRandomYPos()
                  redInsectTmp.xScale = 3
                  redInsectTmp.yScale = 3
                  redInsectTmp:play() --plays the sprite
                  insectsGroup:insert(redInsectTmp)

                  redInsectTmp.tap = redInsectOnTap
                  redInsectTmp:addEventListener( "tap" )

                  physics.addBody( redInsectTmp,{ bounce = 0 ,friction = 0.5, filter = M.redAntCollisionFilter})

                  redInsectTmp.collision = redInsectOnCollision
                  redInsectTmp:addEventListener( "collision")

                  redInsectTmp.linearDamping = insectSpeed.insSpeed2 --speed of the insect

               return true
         else
               return false      
         end
   end

   M.spawnYellowInsect = function()
      local willSpawn = math.random(1,5)
         if (willSpawn == 2) then
            local yellowInsectTmp = display.newSprite( truSheet.insectThreeImageSheet, {name = "yellowInsect",start = 1, count = 2,time = 500 } )
                  yellowInsectTmp.anchorX = 0.5
                  yellowInsectTmp.anchorY = 1
                  yellowInsectTmp.x = M.generateRandomXPos()
                  yellowInsectTmp.y = -50 --M.generateRandomYPos()
                  yellowInsectTmp.xScale = 3
                  yellowInsectTmp.yScale = 3
                  yellowInsectTmp:play() --plays the sprite
                  insectsGroup:insert(yellowInsectTmp)

                  yellowInsectTmp.touch = yellowInsectOnTap
                  yellowInsectTmp:addEventListener( "touch" )

                  physics.addBody( yellowInsectTmp,{ bounce = 0 ,friction = 0.5, filter = M.yellowAntCollisionFilter })

                  yellowInsectTmp.collision = yellowInsectOnCollision
                  yellowInsectTmp:addEventListener( "collision")

                  yellowInsectTmp.linearDamping = insectSpeed.insSpeed3 --speed of the insect

               return true
         else
               return false      
         end
   end

   M.spawnBlueInsect = function()
      local willSpawn = math.random(1,6)
         if (willSpawn == 2) then
           local blueInsectTmp = display.newSprite( truSheet.insectFourImageSheet, {name = "blueInsect",start = 1, count = 2,time = 500 } )
                  blueInsectTmp.anchorX = 0.5
                  blueInsectTmp.anchorY = 1
                  blueInsectTmp.x = M.generateRandomXPos()
                  blueInsectTmp.y = 1 --M.generateRandomYPos()
                  blueInsectTmp.xScale = 2.5
                  blueInsectTmp.yScale = 2.5
                  blueInsectTmp:play() --plays the sprite
                  insectsGroup:insert(blueInsectTmp)

                  blueInsectTmp.touch = blueInsectOnTap
                  blueInsectTmp:addEventListener( "touch" )

                  physics.addBody( blueInsectTmp,{ bounce = 0 ,friction = 0.5, filter = M.blueAntCollsionFilter })

                  blueInsectTmp.collision = blueInsectOnCollision
                  blueInsectTmp:addEventListener( "collision")

                  blueInsectTmp.linearDamping = insectSpeed.insSpeed4 --speed of the insect

               return true
         else
               return false      
         end
   end

--makes the tools unselected
   M.cancelTool1 = function()
    seltool1.isTap = false
    tool1.isVisible = true
    seltool1.isVisible = false
    toolSelected = 0
   end

   M.cancelTool2 = function()
    seltool2.isTap = false
    tool2.isVisible = true
    seltool2.isVisible = false
    toolSelected = 0
   end

   M.cancelTool3 = function()
    seltool3.isTap = false
    tool3.isVisible = true
    seltool3.isVisible = false
    toolSelected = 0
   end

   M.cancelTool4 = function()
    seltool4.isTap = false
    tool4.isVisible = true
    seltool4.isVisible = false
    toolSelected = 0
   end

   M.alertHandler = function(event)
    if "clicked" == event.action then
        local i = event.index
        if 1 == i then
            --resume game
        elseif 2 == i then
            --quit game
            playerData.wave = 1
            composer.gotoScene("playerMenu",globals.sceneBackTransitionOption) 
        end
    end
   end

   M.quitButtonEventHandler = function(event)
       if ("ended" == event.phase) then
            if (gameStarted) then
                tapSound()
                M.pausePlay()
                local alert = native.showAlert( "Quit level", "are you sure you want to quit?", {"No","Yes"} , M.alertHandler )
            end
       end
   end


--tools event handler
   M.tool1listener = function(event)
       if ("ended" == event.phase) then
        --checks first if the game has been started
            if (gameStarted) then
                tapSound()
            --if the tool is selected    
                if (seltool1.isTap) then
                    M.cancelTool1()
            --if the tool is not selected
            --selecting new tool will cancel other tools
                else
                    if (tonumber(playerCoin) >= tonumber(M.toolCost.tool1)) then
                        toolSelected = 0
                        toolSelected = 1
                        seltool1.isTap = true
                        seltool2.isTap = false
                        seltool3.isTap = false
                        seltool4.isTap = false
                        seltool1.isVisible = true
                        seltool4.isVisible = false
                        seltool2.isVisible = false
                        seltool3.isVisible = false
                        tool4.isVisible = true
                        tool2.isVisible = true
                        tool3.isVisible = true
                        tool1.isVisible = false
                    else
                        print( "not enough coins" )
                    end
                end 
            end
       end

       return true
   end

   M.tool2listener = function(event)
       if ("ended" == event.phase) then
            if (gameStarted) then
                tapSound()
                if (seltool2.isTap) then
                    M.cancelTool2()
                else
                    if (tonumber(playerCoin) >= tonumber(M.toolCost.tool2)) then
                        toolSelected = 0
                        toolSelected = 2
                        seltool2.isTap = true
                        seltool1.isTap = false
                        seltool3.isTap = false
                        seltool4.isTap = false
                        seltool2.isVisible = true
                        seltool1.isVisible = false
                        seltool4.isVisible = false
                        seltool3.isVisible = false
                        tool1.isVisible = true
                        tool4.isVisible = true
                        tool3.isVisible = true
                        tool2.isVisible = false
                    else
                        print( "not enough coins" )
                    end
                end 
            end
       end

       return true
   end

   M.tool3listener = function(event)
       if ("ended" == event.phase) then
            if (gameStarted) then
                tapSound()
                if (seltool3.isTap) then
                    M.cancelTool3()
                else
                    if (tonumber(playerCoin) >= tonumber(M.toolCost.tool3)) then
                        toolSelected = 0
                        toolSelected = 3
                        seltool3.isTap = true
                        seltool2.isTap = false
                        seltool1.isTap = false
                        seltool4.isTap = false
                        seltool3.isVisible = true
                        seltool1.isVisible = false
                        seltool2.isVisible = false
                        seltool4.isVisible = false
                        tool1.isVisible = true
                        tool2.isVisible = true
                        tool4.isVisible = true
                        tool3.isVisible = false 
                    else
                        print( "not enough coin" )
                    end
                end     
            end
       end

       return true
   end

   M.tool4listener = function(event)
        if ("ended" == event.phase) then
            if (gameStarted) then
                tapSound()
                if (seltool4.isTap) then
                    M.cancelTool4()
                else
                    if (tonumber(playerCoin) >= tonumber(M.toolCost.tool4)) then
                        toolSelected = 0
                        toolSelected = 4
                        seltool4.isTap = true
                        seltool2.isTap = false
                        seltool3.isTap = false
                        seltool1.isTap = false
                        seltool4.isVisible = true
                        seltool1.isVisible = false
                        seltool2.isVisible = false
                        seltool3.isVisible = false
                        tool1.isVisible = true
                        tool2.isVisible = true
                        tool3.isVisible = true
                        tool4.isVisible = false
                    else
                        print( "not enough coins" )
                    end
                end 
            end
        end

        return true
   end

   local function useTool(toolWidth,toolHeight,posX,posY,toolNum)
            local t = toolNum
            local w = toolWidth
            local h = toolHeight
            local xPos = posX
            local yPos = posY

            local cost
            if (2 == t) then
                cost = M.toolCost.tool2
                racketSound()
            elseif (3 == t) then
                cost = M.toolCost.tool3
                swatSound()
            elseif (4 == t) then
                cost = M.toolCost.tool4
                swatSound()
            end

            local spawnRect = display.newImageRect( "images/tool" .. t .. ".png", w, h )
            spawnRect.x = xPos
            spawnRect.y = yPos
            spawnRect.anchorX = 0.5
            spawnRect.anchorY = 0.5
            toolSpawnGroup:insert(spawnRect)
            physics.addBody( spawnRect, "static", { friction=0.5, bounce=0 } )

            playerCoin = playerCoin - cost
            textTruCoin.text = playerCoin

            --updates the player coins
            dbFunctions.updatePlayerGameCoinDeduction(playID,playerCoin)

            timer.performWithDelay( 200,
               function()
                  toolOn = false
                  toolTable[spawnRect] = nil
                  display.remove( spawnRect )
               end
               )
        return true
   end

--bug spray
    M.bugSprayUse = function()
        spraySound()
        local sprayRect = display.newImageRect("images/sprayback.png", display.contentWidth, display.contentHeight )
        sprayRect.anchorX = 0.5
        sprayRect.anchorY = 0.5
        sprayRect.x = display.contentCenterX
        sprayRect.y = display.contentCenterY
        sprayRect.alpha = 1
        toolSpawnGroup:insert(sprayRect)
        physics.addBody( sprayRect, "static", {friction = 0.5, bounce = 0} )

        local cost = M.toolCost.tool1
        playerCoin = playerCoin - cost
        textTruCoin.text = playerCoin

        --updates the player coins
        dbFunctions.updatePlayerGameCoinDeduction(playID,playerCoin)

            timer.performWithDelay( 400,
               function()
                  toolOn = false
                  toolTable[sprayRect] = nil
                  display.remove( sprayRect )
               end
               )
        return true
    end

   local function spawnObject(event)

         if (event.phase == "ended") then
            if (gameStarted) then
                --checks if the players touch is with bound
                if (event.y >= 300 and event.x >= 100) then
                --checks first if what tool is selected
                   if (1 == toolSelected) then
                       print( "bugspray" )
                       toolOn = true
                       M.bugSprayUse()
                       M.cancelTool1()
                       --toolOn = false
                   elseif (2 == toolSelected) then
                        print( "eracket" )
                        toolOn = true
                        useTool(250,350,event.x,event.y,2)
                        M.cancelTool2()
                   elseif (3 == toolSelected) then
                        print( "swatter" )
                        toolOn = true
                        useTool(100,250,event.x,event.y,3)
                        M.cancelTool3()
                   elseif (4 == toolSelected) then
                        print( "slippers" )
                        toolOn = true
                        useTool(70,70,event.x,event.y,4)
                        M.cancelTool4()
                   end 
                end
            end
            return true    
         end
   end

 --scene functions end-----------------------------------------------------------

---------------------------------------------------------------------------------

--calls when the game is being resumed
function scene:resumeGame()
   physics.start( )
   timer.resume( redInsectTimer )
   timer.resume( pinkInsectTimer )
   timer.resume( yellowInsectTimer )
   timer.resume( blueInsectTimer )
   audio.setVolume( 0.1, {channel = 10} )
   if (playerData.wave == 5) then
        timer.pause( specInsectTimer )                
   end
   timer.resume( upInsectKillTimer )
   M.options.params.isGamePause = false 
end

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view

   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.

   --button template
   --button = globals.createButton(id,bWidth,bHeight,bX,bY,bFont,bDefFile,bOverFile,bLabel,bHandler)
   insectsGroup = display.newGroup( )
   toolGroup = display.newGroup( )
   toolSpawnGroup = display.newGroup( )
   sideBarGroup = display.newGroup( )
   functions.resetInsectKill()
   M.insectSpeedCalc()

   --backGround = display.newImageRect("images/gameplaybg.png", display.contentWidth, display.contentHeight )
   backGround = display.newImageRect("images/land.png", display.contentWidth, display.contentHeight )
   backGround.x = 0
   backGround.y = 0
   backGround.anchorX = 0
   backGround.anchorY = 0
   --backGround:setFillColor(1,1,1 )

   --gamePlayTop = display.newImageRect("images/gameplaytop.png",display.contentWidth, 450 )
   gamePlayTop = display.newImageRect("images/landtop.png",display.contentWidth, 450 )
   gamePlayTop.x = 0
   gamePlayTop.y = 0
   gamePlayTop.anchorX = 0
   gamePlayTop.anchorY = 0

   bottomBorder = display.newRect( 0, 0, display.contentWidth + 20, 20 )
   bottomBorder.anchorX = 0.5
   bottomBorder.anchorY = 1
   bottomBorder.x = display.contentCenterX
   bottomBorder.y = display.contentHeight
   bottomBorder:setFillColor( 1,0,0 )

   --textStart = display.newText( "Start",0,0,"Arial",50 )
   textStart = display.newImageRect("images/play.png", 150, 100 )
   textStart.anchorX = 0.5
   textStart.anchorY = 0.5
   textStart.x = display.contentCenterX
   textStart.y = display.contentCenterY
   --textStart:setFillColor( 1,0,0 )

--bottom sensor, used to detect insiding colliding on the bottmborder
   bottomBorderSensor = display.newRect( 0, 0, display.contentWidth + 20, 20 )
   bottomBorderSensor.anchorX = 0.5
   bottomBorderSensor.anchorY = 1
   bottomBorderSensor.x = display.contentCenterX
   bottomBorderSensor.y = display.contentHeight - 10
   bottomBorderSensor:setFillColor( 1,0,0 )

--top menu
   pauseButton = globals.createButton(1,80,80,70,75,
                           "Arial",pauseButtonDef,pauseButtonDef," ",
                           M.pauseButtonEventHandler)

   pauseTxt = display.newText("Pause",0,0,"Arial",30)
   pauseTxt.anchorX = 0.5
   pauseTxt.anchorY = 0
   pauseTxt.x = 70
   pauseTxt.y = pauseButton.y + 40
   pauseTxt:setFillColor( 0,0,0 )

   toolTxt = display.newText("Tools",0,0,"Arial",30)
   toolTxt.anchorX = 0
   toolTxt.anchorY = 0
   toolTxt.x = pauseButton.x + 50
   toolTxt.y = 30
   toolTxt:setFillColor( 0,0,0 )
   toolGroup:insert(toolTxt)

   tool1 = display.newImageRect( "images/tool1.png", 55, 95 )
   tool1.anchorX = 0
   tool1.anchorY = 0
   tool1.x = toolTxt.x + 90
   tool1.y = 35

   seltool1 = display.newImageRect( "images/seltool1.png", 55, 95 )
   seltool1.anchorX = 0
   seltool1.anchorY = 0
   seltool1.x = toolTxt.x + 90
   seltool1.y = 35
   seltool1.isTap = false
   seltool1.isVisible = false

   tool1Price = display.newText( tostring(M.toolCost.tool1),0,0,"Arial",30 )
   tool1Price.anchorX = 0
   tool1Price.anchorY = 0
   tool1Price.x = tool1.x
   tool1Price.y = tool1.y + 90
   tool1Price:setFillColor( 0,0,0 )
   toolGroup:insert(tool1Price)
   toolGroup:insert(seltool1)
   toolGroup:insert(tool1)

   tool2 = display.newImageRect("images/tool2.png", 55, 95 )
   tool2.anchorX = 0
   tool2.anchorY = 0
   tool2.x = tool1.x + 110
   tool2.y = 35

   seltool2 = display.newImageRect("images/seltool2.png", 55, 95 )
   seltool2.anchorX = 0
   seltool2.anchorY = 0
   seltool2.x = tool1.x + 110
   seltool2.y = 35
   seltool2.isTap = false
   seltool2.isVisible = false

   tool2Price = display.newText( tostring(M.toolCost.tool2),0,0,"Arial",30 )
   tool2Price.anchorX = 0
   tool2Price.anchorY = 0
   tool2Price.x = tool2.x
   tool2Price.y = tool2.y + 90
   tool2Price:setFillColor( 0,0,0 )
   toolGroup:insert(tool2Price)
   toolGroup:insert(seltool2)
   toolGroup:insert(tool2)

   tool3 = display.newImageRect("images/tool3.png", 55, 95)
   tool3.anchorX = 0
   tool3.anchorY = 0
   tool3.x = tool2.x + 110
   tool3.y = 35

   seltool3 = display.newImageRect("images/seltool3.png", 55, 95)
   seltool3.anchorX = 0
   seltool3.anchorY = 0
   seltool3.x = tool2.x + 110
   seltool3.y = 35
   seltool3.isTap = false
   seltool3.isVisible = false

   tool3Price = display.newText( tostring(M.toolCost.tool3),0,0,"Arial",30 )
   tool3Price.anchorX = 0
   tool3Price.anchorY = 0
   tool3Price.x = tool3.x
   tool3Price.y = tool3.y + 90
   tool3Price:setFillColor( 0,0,0 )
   toolGroup:insert(tool3Price)
   toolGroup:insert(tool3)

   tool4 = display.newImageRect("images/tool4.png", 55, 95 )
   tool4.anchorX = 0
   tool4.anchorY = 0
   tool4.x = tool3.x + 110
   tool4.y = 35

   seltool4 = display.newImageRect("images/seltool4.png", 55, 95 )
   seltool4.anchorX = 0
   seltool4.anchorY = 0
   seltool4.x = tool3.x + 110
   seltool4.y = 35
   seltool4.isTap = false
   seltool4.isVisible = false

   tool4Price = display.newText( tostring(M.toolCost.tool4),0,0,"Arial",30 )
   tool4Price.anchorX = 0
   tool4Price.anchorY = 0
   tool4Price.x = tool4.x
   tool4Price.y = tool4.y + 90
   tool4Price:setFillColor( 0,0,0 )
   toolGroup:insert(tool4Price)
   toolGroup:insert(seltool4)
   toolGroup:insert(tool4)

   textLife = display.newText("Tries: ",0,0,"Arial",30)
   textLife.x = tool4.x + 80
   textLife.y = 30
   textLife.anchorX = 0
   textLife.anchorY = 0
   textLife:setFillColor( 0,0,0 )

   heartImageSheet = graphics.newImageSheet("images/imagesheets/heartimagesheet.png", heartSheetInfo:getSheet() )
   heartImageTmp = display.newSprite( heartImageSheet, {name = "life",start = 1, count = 3,time = 2000 } )
   heartImageTmp.x = tool4.x + 240
   heartImageTmp.y = 40
   heartImageTmp.xScale = 1.5
   heartImageTmp.yScale = 1.5
   heartImageTmp.anchorX = 1
   heartImageTmp.anchorY = 0
   heartImageTmp:setFrame( playerData.tries )

   textCoins = display.newText("Coins: ",0,0,"Arial",30)
   textCoins.x = textLife.x
   textCoins.y = 70
   textCoins.anchorX = 0
   textCoins.anchorY = 0
   textCoins:setFillColor( 0,0,0 )

   textTruCoin = display.newText(playerCoin,0,0,"Arial",30)
   textTruCoin.x = textCoins.x + 140
   textTruCoin.y = textCoins.y + 40
   textTruCoin.anchorX = 1
   textTruCoin.anchorY = 0
   textTruCoin:setFillColor( 0,0,0 )


--sets the insect limit
   M.checkInsLimit(selectedLevel)
   print( "Level insect limit:" .. insLimit )
--side bar
   waveText = display.newText( "Wave",0,0,"Arial",30 )
   waveText.anchorX = 0
   waveText.anchorY = 0
   waveText.x = 25
   waveText.y = 190
   waveText:setFillColor( 1,1,1 )
   sideBarGroup:insert(waveText)

   currentWave = display.newText( playerData.wave .. "/5",0,0,"Arial",35 )
   currentWave.anchorX = 0
   currentWave.anchorY = 0
   currentWave.x = waveText.x + 5
   currentWave.y = waveText.y + 35
   waveText:setFillColor( 1,1,1 )
   sideBarGroup:insert(currentWave)

   txtLife = display.newText("Life:" ,0,0,"Arial",35)
   txtLife.anchorX = 0
   txtLife.anchorY = 0
   txtLife.x = waveText.x
   txtLife.y = currentWave.y + 60
   txtLife:setFillColor( 1,1,1 )
   sideBarGroup:insert(txtLife)

   txtTruLife = display.newText(insLimit,0,0,"Arial",35)
   txtTruLife.anchorX = 0
   txtTruLife.anchorY = 0
   txtTruLife.x = txtLife.x + 15
   txtTruLife.y = txtLife.y + 35
   txtTruLife:setFillColor( 1,1,1 )
   sideBarGroup:insert(txtTruLife)

--loads the level goal
    M.fetchLevelGoal()
--insect image on the side
   sideIns1 = display.newImageRect(sideBarImage.sideImage[selectedLevel].imgOne, 90, 90 )
   sideIns1.anchorX = 0
   sideIns1.anchorY = 0
   sideIns1.x = 15
   sideIns1.y = currentWave.y + 200
   sideBarGroup:insert(sideIns1)

   sideIns1Txt = display.newText(playerData.insectKill1 .. "/" .. insectGoal1,0,0,"Arial",35)
   sideIns1Txt.anchorX = 0
   sideIns1Txt.anchorY = 0
   sideIns1Txt.x = 20
   sideIns1Txt.y = sideIns1.y + 90
   sideBarGroup:insert(sideIns1Txt)

   sideIns2 = display.newImageRect(sideBarImage.sideImage[selectedLevel].imgTwo, 90, 90 )
   sideIns2.anchorX = 0
   sideIns2.anchorY = 0
   sideIns2.x = 15
   sideIns2.y = sideIns1.y + 200
   sideBarGroup:insert(sideIns2)

   sideIns2Txt = display.newText(playerData.insectKill2 .. "/" .. insectGoal2,0,0,"Arial",35)
   sideIns2Txt.anchorX = 0
   sideIns2Txt.anchorY = 0
   sideIns2Txt.x = 20
   sideIns2Txt.y = sideIns2.y + 90
   sideBarGroup:insert(sideIns2Txt)

   sideIns3 = display.newImageRect(sideBarImage.sideImage[selectedLevel].imgThree, 90, 90 )
   sideIns3.anchorX = 0
   sideIns3.anchorY = 0
   sideIns3.x = 15
   sideIns3.y = sideIns2.y + 200
   sideBarGroup:insert(sideIns3)

   sideIns3Txt = display.newText(playerData.insectKill3 .. "/" .. insectGoal3,0,0,"Arial",35)
   sideIns3Txt.anchorX = 0
   sideIns3Txt.anchorY = 0
   sideIns3Txt.x = 20
   sideIns3Txt.y = sideIns3.y + 90
   sideBarGroup:insert(sideIns3Txt)

   sideIns4 = display.newImageRect(sideBarImage.sideImage[selectedLevel].imgFour, 90, 90 )
   sideIns4.anchorX = 0
   sideIns4.anchorY = 0
   sideIns4.x = 15
   sideIns4.y = sideIns3.y + 200
   sideBarGroup:insert(sideIns4)

   sideIns4Txt = display.newText(playerData.insectKill4 .. "/" .. insectGoal4,0,0,"Arial",35)
   sideIns4Txt.anchorX = 0
   sideIns4Txt.anchorY = 0
   sideIns4Txt.x = 20
   sideIns4Txt.y = sideIns4.y + 90
   sideBarGroup:insert(sideIns4Txt)

   quitButton = display.newImageRect("images/quit.png", 80, 60 )
   quitButton.anchorX = 0
   quitButton.anchorY = 0
   quitButton.x = 20
   quitButton.y = sideIns4Txt.y + 140
   sideBarGroup:insert(quitButton)

   quitButton:addEventListener( "touch", M.quitButtonEventHandler )


   sceneGroup:insert(bottomBorder)
   sceneGroup:insert( bottomBorderSensor )
   sceneGroup:insert(backGround)
   sceneGroup:insert(insectsGroup)
   sceneGroup:insert(gamePlayTop)
   sceneGroup:insert(sideBarGroup)
   sceneGroup:insert(textLife)
   sceneGroup:insert(heartImageTmp)
   sceneGroup:insert(textCoins)
   sceneGroup:insert(textTruCoin)
   sceneGroup:insert(textStart)
   sceneGroup:insert(toolGroup)
   sceneGroup:insert(toolSpawnGroup)
   sceneGroup:insert(pauseButton)
   sceneGroup:insert(pauseTxt)

end

-- "scene:show()"
function scene:show( event )

   local sceneGroup = self.view
   local phase = event.phase
   gameOverGroup = display.newGroup( )

   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
   elseif ( phase == "did" ) then
      -- Called when the scene is now on screen.
      -- Insert code here to make the scene come alive.
      --Remove unused scene
      -- Example: start timers, begin animation, play audio, etc.
         --group for the insects
      composer.removeScene("gamemap")
      composer.removeScene("gameOver")
      composer.removeScene("gameComplete")
        if (globals.enableGameSound) then
          audio.setVolume( 0, {channel = 1} )
        end
      if (1 == playerData.gameIns) and (false == playerData.isWhackGame) then
         --for main game
         composer.showOverlay("whackGameOverlay",M.options)
      end
      math.randomseed( os.time( ) )
      --checkMemoryTimer = timer.performWithDelay( 1000, M.checkMemory, -1 )
      upInsectKillTimer = timer.performWithDelay( 1000, M.upInsectKill , -1 )
      M.checkWhatImageSheetToUse()
      physics.addBody( bottomBorder, "static", { friction = 0.5, bounce = 0 ,filter = M.bottomBorderCollisionFilter} )
      physics.addBody( bottomBorderSensor, "static", { isSensor = true } )
      bottomBorderSensor:addEventListener( "collision", onCollision )
      textStart:addEventListener( "touch", M.startGame )

      tool1:addEventListener( "touch", M.tool1listener )
      tool2:addEventListener( "touch", M.tool2listener )
      tool3:addEventListener( "touch", M.tool3listener )
      tool4:addEventListener( "touch", M.tool4listener )
      seltool1:addEventListener( "touch", M.tool1listener )
      seltool2:addEventListener( "touch", M.tool2listener )
      seltool3:addEventListener( "touch", M.tool3listener )
      seltool4:addEventListener( "touch", M.tool4listener )
      Runtime:addEventListener( "touch", spawnObject )
      sceneGroup:insert(gameOverGroup)
   end
end

-- "scene:hide()"
function scene:hide( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then
      -- Called when the scene is on screen (but is about to go off screen).
      -- Insert code here to "pause" the scene.
      -- Example: stop timers, stop animation, stop audio, etc.
      functions.stopPlaySound()
        if (globals.enableGameSound) then
          audio.setVolume( 0.1, {channel = 1} )
        end
      physics.stop( )
      system.deactivate("multitouch")
      M.upInsectKill()
      bottomBorderSensor:removeEventListener( "collision", onCollision )

      tool1:removeEventListener("touch", M.tool1listener)
      tool2:removeEventListener("touch", M.tool2listener)
      tool3:removeEventListener("touch", M.tool3listener)
      tool4:removeEventListener("touch", M.tool4listener)

      seltool1:removeEventListener("touch", M.tool1listener)
      seltool2:removeEventListener("touch", M.tool2listener)
      seltool3:removeEventListener("touch", M.tool3listener)
      seltool4:removeEventListener("touch", M.tool4listener)

      quitButton:removeEventListener( "touch", M.quitButtonEventHandler )

      Runtime:removeEventListener("touch", spawnObject)
   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
            timer.cancel( redInsectTimer )
            timer.cancel( pinkInsectTimer )
            timer.cancel( yellowInsectTimer )
            timer.cancel( blueInsectTimer )
            if (playerData.wave == 5) then
                timer.cancel( specInsectTimer )
                specInsectTimer = nil                
            end
            timer.cancel( upInsectKillTimer )
            upInsectKillTimer = nil
            redInsectTimer = nil
            pinkInsectTimer = nil
            yellowInsectTimer = nil
            blueInsectTimer = nil
   end
end

-- "scene:destroy()"
function scene:destroy( event )

   local sceneGroup = self.view

   -- Called prior to the removal of scene's view ("sceneGroup").
   -- Insert code here to clean up the scene.
   -- Example: remove display objects, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene