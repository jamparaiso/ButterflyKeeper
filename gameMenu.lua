local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
local globals = require( "globals" )
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
local logoScale = nil
local logoWidth = nil
local logoHeight = nil
local logoPos

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

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

   M.handleButtonEvent = function(event)
      if ( "began" == event.phase ) then
        print( "Button is pressed" )

      elseif ("ended" == event.phase) then
         --print( "Button is released" )
      end
      return true
   end

   M.newGameButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("newGame",globals.sceneNextTransitionOption)
      end
      return true
   end

   M.loadGameButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("loadMenu",globals.sceneNextTransitionOption)
      end
      return true
   end

   M.leaderBoardsButtonEvent = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("leaderboardsSelector",globals.sceneNextTransitionOption)
         --composer.gotoScene("leaderboards",globals.sceneNextTransitionOption)
         --composer.gotoScene("storyBoard",globals.sceneNextTransitionOption)
         --composer.gotoScene("endingOverlay",globals.sceneNextTransitionOption)
      end
   end

--handles settings button when pressed
   M.settingsButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("settingsMenu",globals.sceneNextTransitionOption)
      end
      return true
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

   backGround = functions.background()

   leavesBg = functions.leavesBackground()

   leavesGroup = display.newGroup( )

   newGameButton = globals.createButton(1,675,100,display.contentWidth/2,display.contentHeight-600,
                           sketchFont,leavesButtonDef,leavesButtonPress,"New Game",M.newGameButtonEventHandler)

   loadGameButton = globals.createButton(2,675,100,display.contentWidth/2,display.contentHeight-450,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Load Game",M.loadGameButtonEventHandler)

   leaderBoardsButton = globals.createButton(3,675,100,display.contentWidth/2,display.contentHeight-300,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Leaderboards",M.leaderBoardsButtonEvent)

   settingsButton = globals.createButton(4,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Settings",M.settingsButtonEventHandler)


   --M.checkLogoScale()

   gLogo = display.newImageRect( "images/logo.png", 466, 210 )
   gLogo.anchorX = 0.5
   gLogo.anchorY = 0
   gLogo.xScale = 1.3
   gLogo.yScale = 1.3
   gLogo.x = display.contentCenterX
   gLogo.y = 340

      butFlySpriteSheet = graphics.newImageSheet( "images/imagesheets/butterlfysprite.png", butFlySprite:getSheet() )
      butFly = display.newSprite( butFlySpriteSheet, {name = "but",start = 1, count = 2,time = 500 } )
      butFly.x = -150
      butFly.y = -50
      butFly.xScale = 2
      butFly.yScale = 2
      butFly:play()

   --gameLogo = functions.gameLogo(logoPos,logoWidth,logoHeight)
   --gameLogo.xScale = logoScale
   --gameLogo.yScale = logoScale

   sceneGroup:insert( backGround )
   sceneGroup:insert(leavesGroup)
      sceneGroup:insert(butFly)
   sceneGroup:insert(leavesBg) 
   --sceneGroup:insert(gameLogo)
   sceneGroup:insert(gLogo)
   sceneGroup:insert( newGameButton )
   sceneGroup:insert( loadGameButton )
   sceneGroup:insert( leaderBoardsButton )
   sceneGroup:insert( settingsButton )
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
      -- Example: start timers, begin animation, play audio, etc.
      composer.removeScene("splashScreen")
      composer.removeScene("settingsMenu")
      composer.removeScene("newGame")
      composer.removeScene("loadMenu")
      composer.removeScene("playerMenu")
      composer.removeScene("leaderboards")
      composer.removeScene("storyBoard")
      composer.removeScene("leaderboardsSelector")
      leavesFallingTimer = timer.performWithDelay( 1200, functions.fallingLeavesEffect , -1 )
      gameSound()
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