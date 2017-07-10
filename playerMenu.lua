local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
local dbFunctions = require("dbFunctions")
local globals = require( "globals" )
local playerData = require("playerData")
local physics = require("physics")
local butFlySprite = require("images.imagesheets.butterlfysprite")
physics.start() 
physics.setGravity(0,9.8)

---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------

-- local forward references should go here
local sketchFont = globals.sketchFont
local leavesButtonDef = globals.leavesButtonDef
local leavesButtonPress = globals.leavesButtonPress
local tapSound = functions.playTapSound
local gameSound = functions.playGameSound
local hiTxtY = nil
local miniGameButton = nil
local miniGameCoolDown = 1200 --1 day
local currentTime = nil
local lastMiniGameUse = nil
local playerDataTbl = {}--holds all fetched player data
--scene functions----------------------------------------------------------------
--declare all scene functions here


local M = {}

--convert time
   M.converTime = function(timeToConvert)
      local nSeconds = tonumber(timeToConvert)
      if nSeconds == 0 then
         --minigame ready
         miniGameTimeText.text = "Minigame: Ready"
      else
         --minigame not ready
         local nDays = string.format( "%02.f",math.floor(nSeconds/84600) )
         local nHours = string.format("%02.f", math.floor(nSeconds/3600));
         local nMins = string.format("%02.f", math.floor(nSeconds/60 - (nHours*60)));
         local nSecs = string.format("%02.f", math.floor(nSeconds - nHours*3600 - nMins *60));
         miniGameTimeText.text = "Minigame: " .. nHours..":"..nMins..":"..nSecs
      end     
   end

--checks minigame time
   M.checkMiniGameTime = function()
      local timeDiff = (currentTime - lastMiniGameUse)
         if (timeDiff >= miniGameCoolDown) then
            --minigame is ready
            miniGameTimeText.text = "Minigame: Ready"
            miniGameButton.alpha = 1
            miniGameButton:setEnabled(true )
         else
            --minigame not ready
            lastMiniGameUse = lastMiniGameUse - 1
            M.converTime(miniGameCoolDown - timeDiff)
            miniGameButton.alpha = 0.5
            miniGameButton:setEnabled( false )
         end
   end

   M.checkLogoScale = function()
      if (functions.checkAspectRatio()) then
      --iphone
         logoPos = 400
         logoScale = 1
         logoHeight = 500
         logoWidth = 700
      else
      --ipad
         logoPos = 255
         logoScale = 1.3
         logoWidth = 577
         logoHeight = 270
      end
   end

   M.changeHiTxtY = function()
      if (functions.checkAspectRatio()) then
         hiTxtY = 20
      else
         hiTxtY = 90
      end
   end

   M.checkIfWhatToLoad = function()
      if (globals.isLoad) then
         --load from load menu
         playerDataTbl = dbFunctions.fetchPlayerById(playerData.playID)
         globals.isLoad = true
      else
         --new created profile
         playerDataTbl = dbFunctions.getLastRowId()

         playerData.playID = playerDataTbl.playerID
         print("Player ID: " .. playerData.playID .. " New" )
         globals.isLoad = true
      end
   end

   M.playButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         playerData.isWhackGame = false
         composer.gotoScene("gamemap",globals.sceneNextTransitionOption)
      end
   end

   M.miniGameButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         playerData.isWhackGame = true
         composer.gotoScene("whackGame",globals.sceneNextTransitionOption)
      end
   end

   M.insectGalleryEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("gallerySelector",globals.sceneNextTransitionOption)
      end
   end

   M.backButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         playerData.isWhackGame = nil
         playerData.playID = nil
         playerData.miniGameCoin = nil
         playerData.whackIns = nil
         playerData.gameIns = nil
         composer.gotoScene("gameMenu",globals.sceneBackTransitionOption)
      end
   end

 --scene functions end-----------------------------------------------------------

---------------------------------------------------------------------------------

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view

   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.

   --button template
   --button = globals.createButton(id,bWidth,bHeight,bX,bY,bFont,bDefFile,bOverFile,bLabel,bHandler)

   M.checkIfWhatToLoad()


   backGround = functions.background()

   leavesBg = functions.leavesBackground()

   leavesGroup = display.newGroup( )

      butFlySpriteSheet = graphics.newImageSheet( "images/imagesheets/butterlfysprite.png", butFlySprite:getSheet() )
      butFly = display.newSprite( butFlySpriteSheet, {name = "but",start = 1, count = 2,time = 500 } )
      butFly.x = -150
      butFly.y = -50
      butFly.xScale = 2
      butFly.yScale = 2
      butFly:play()

   playButton = globals.createButton(1,675,100,display.contentWidth/2,display.contentHeight - 600,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Play",
                           M.playButtonEventHandler)

   miniGameButton = globals.createButton(2,675,100,display.contentWidth/2,display.contentHeight - 450,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Mini Game",
                           M.miniGameButtonEventHandler)
   insectGalleryButton = globals.createButton(3,675,100,display.contentWidth/2,display.contentHeight -300,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Insect Gallery",
                           M.insectGalleryEventHandler)

   backButton = globals.createButton(4,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Back",
                           M.backButtonEventHandler)


   M.checkLogoScale()
   M.changeHiTxtY()
   playerDataTbl.pFinish = nil
   playerData.pFinish = playerDataTbl.finish

   --gameLogo = functions.gameLogo(logoPos,logoWidth,logoHeight)
   --gameLogo.xScale = logoScale
   --gameLogo.yScale = logoScale

   helloTxt = display.newText("Hi " .. playerDataTbl.playerName,0,0,"Arial" or native.systemFont, 60)
   helloTxt.anchorX = 0.5
   helloTxt.anchorY = 0.5
   helloTxt.x = display.contentCenterX
   helloTxt.y = display.contentCenterY - hiTxtY
   helloTxt:setFillColor( 0,0,0 )

   gLogo = display.newImageRect( "images/logo.png", 466, 210 )
   gLogo.anchorX = 0.5
   gLogo.anchorY = 0
   gLogo.xScale = 1.3
   gLogo.yScale = 1.3
   gLogo.x = display.contentCenterX
   gLogo.y = 340

   miniGameTimeText = display.newText("Minigame: 00:00:00",0,0,"Arial",40)
   miniGameTimeText.anchorX = 0
   miniGameTimeText.anchorY = 0
   miniGameTimeText.x = 100
   miniGameTimeText.y = 50
   miniGameTimeText:setFillColor( 0,0,0 )

--transfer fetched player data into global scope
   playerData.whackIns = nil
   playerData.gameins = nil
   playerData.playerCoin = nil
   playerData.whackIns = playerDataTbl.whackins
   playerData.gameIns = playerDataTbl.gameins
   playerData.playerCoin = playerDataTbl.coins

   currentTime = os.time()
   lastMiniGameUse = playerDataTbl.minigametime

   miniGameTimer = timer.performWithDelay( 1000, M.checkMiniGameTime ,0)

   sceneGroup:insert(backGround)
   sceneGroup:insert(leavesGroup)
      sceneGroup:insert(butFly)  
   sceneGroup:insert( leavesBg )
   sceneGroup:insert(miniGameTimeText)
   --sceneGroup:insert(gameLogo)
   sceneGroup:insert(gLogo)
   sceneGroup:insert(playButton)
   sceneGroup:insert( miniGameButton )
   sceneGroup:insert(insectGalleryButton)
   sceneGroup:insert(backButton)
   sceneGroup:insert(helloTxt)
end

-- "scene:show()"
function scene:show( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
   elseif ( phase == "did" ) then
      -- Called when the scene is now on screen.
      -- Insert code here to make the scene come alive.
      --Remove unused scene
      -- Example: start timers, begin animation, play audio, etc.
      composer.removeScene("newGame")
      composer.removeScene("loadMenu")
      composer.removeScene("whackGame")
      composer.removeScene("gameOverlay")
      composer.removeScene("whackGameOverlay")
      composer.removeScene("gamemap")
      composer.removeScene("gameOver")
      composer.removeScene("insectGame")
      composer.removeScene("storyBoard")
      composer.removeScene("gallerySelector")
      miniGameButton.alpha = 0.5
      miniGameButton:setEnabled(false)
      leavesFallingTimer = timer.performWithDelay( 1200, functions.fallingLeavesEffect , -1 )
      transition.moveTo( butFly, { x=150, y=250, time=2000 } )
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
      timer.cancel( leavesFallingTimer )
      timer.cancel( miniGameTimer )
      leavesFallingTimer = nil
      leavesGroup:removeSelf( )
   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
      functions.leavesTable = {}
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