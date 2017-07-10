local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
local dbFunctions = require("dbFunctions")
local playerData = require("playerData")
local globals = require( "globals" )

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

   M.backEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("playerMenu",globals.sceneBackTransitionOption)
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
   background = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
   background.anchorX = 0
   background.anchorY = 0
   background.x = 0
   background.y = 0
   background:setFillColor( 0,0,0 )
   background.alpha = 0.85

   txtGameOver = display.newText("Game Over",0,0,"Arial",60)
   txtGameOver.anchorX = 0.5
   txtGameOver.anchorY = 0
   txtGameOver.x = display.contentCenterX
   txtGameOver.y = 50
   txtGameOver:setFillColor( 1,1,1 )

   txtYouWin = display.newText( "You earn: " .. playerData.miniGameCoin .. " coins" ,0,0,"Arial", 60)
   txtYouWin.anchorX = 0.5
   txtYouWin.anchorY = 0
   txtYouWin.x = display.contentCenterX
   txtYouWin.y = txtGameOver.y + 80
   txtYouWin:setFillColor( 1,1,1 )

   potOfCoinsImg = display.newImageRect("images/potofcoins.png", 500, 400 )
   potOfCoinsImg.anchorX = 0.5
   potOfCoinsImg.anchorY = 0
   potOfCoinsImg.x = display.contentCenterX
   potOfCoinsImg.y = txtYouWin.y + 400

   txtBack = display.newText("Back",0,0,"Arial",50)
   txtBack.anchorX = 0.5
   txtBack.anchorY = 0
   txtBack.x = display.contentCenterX
   txtBack.y = potOfCoinsImg.y + 500
   txtBack:setFillColor( 1,1,1 )

   sceneGroup:insert(background)
   sceneGroup:insert(txtGameOver)
   sceneGroup:insert(txtYouWin)
   sceneGroup:insert(potOfCoinsImg)
   sceneGroup:insert(txtBack)
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
      txtBack:addEventListener( "touch", M.backEventHandler )
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
      playID = playerData.playID
      coins = tonumber(playerData.miniGameCoin)
      dbFunctions.updatePlayerGameCoin(playID,coins)
      dbFunctions.updateMiniGameTime(playID)
   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
      txtBack:removeEventListener( "touch", M.backEventHandler )
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