local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
local dbFunctions = require("dbFunctions")
local globals = require( "globals" )
local playerData = require("playerData")

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

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

   M.tryAgainButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("insectGame",globals.sceneBackTransitionOption)
      end
      return true
   end

   M.backMenuButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("playerMenu",globals.sceneBackTransitionOption)
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

--reset the wave of the game
   playerData.wave = 1

   functions.resetInsectGameData()
   functions.resetInsectKill()

   backGround = functions.background()

   leavesBg = functions.leavesBackground()

   tryAgainButton = globals.createButton(4,675,100,display.contentWidth/2,display.contentHeight-300,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Try Again",
                           M.tryAgainButtonEventHandler)

   backMenuButton = globals.createButton(4,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Back To Menu",
                           M.backMenuButtonEventHandler)

   --local gameOverTxt = display.newText("Game Over",0,0,sketchFont,50)
   local gameOverTxt = display.newImageRect(  "images/gameover.png",  525, 168 )
   gameOverTxt.anchorX = 0.5
   gameOverTxt.anchorY = 0.5
   gameOverTxt.x = display.contentCenterX
   gameOverTxt.y = display.contentCenterY - 400
   ---gameOverTxt:setFillColor( 0,0,0 )


   local someTxt = display.newText("The insects destroyed the pupa",0,0,sketchFont,40)
   someTxt.anchorX = 0.5
   someTxt.anchorY = 0.5
   someTxt.x = display.contentCenterX
   someTxt.y = gameOverTxt.y + 200
   someTxt:setFillColor( 0,0,0 )

   sceneGroup:insert(backGround)
   sceneGroup:insert( leavesBg )
   sceneGroup:insert(tryAgainButton)
   sceneGroup:insert(backMenuButton)
   sceneGroup:insert(gameOverTxt)
   sceneGroup:insert(someTxt)

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
      composer.removeScene("insectGame")
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
   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
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