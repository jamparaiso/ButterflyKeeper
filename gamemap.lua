local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
local globals = require( "globals" )
local dbFunctions = require("dbFunctions")
local playerData = require("playerData")
---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------

-- local forward references should go here
local sketchFont = globals.sketchFont
local leavesButtonDef = globals.leavesButtonDef
local leavesButtonPress = globals.leavesButtonPress
local logButtonDef = globals.logButtonDef
local logButtonPress = globals.logButtonPress
local lockImage = globals.lockButton
local tapSound = functions.playTapSound
local gameSound = functions.playGameSound
local scrollView
local scrollWidth = nil
local scrollHeight = nil
local playerLevel = nil
local scrollX = nil
local scrollY = nil
--fetch the player level
local playID = playerData.playID
playerData.playLevel = dbFunctions.fetchPlayerLevel(playID)
playerLevel = playerData.playLevel
print( "player Level: " .. playerLevel )

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

   M.checkAspectRatio = function()
      if functions.checkAspectRatio() then
         scrollWidth = 25
         scrollHeight = 360
      else
         scrollWidth = 25
         scrollHeight = 360
      end
   end

   -- scrollView listener
   local function scrollListener( event )
      local phase = event.phase
      local direction = event.direction
      
      -- If the scrollView has reached its scroll limit
      if event.limitReached then
         if "up" == direction then
            --print( "Reached Top Limit" )
         elseif "down" == direction then
            --print( "Reached Bottom Limit" )
         elseif "left" == direction then
            --print( "Reached Left Limit" )
         elseif "right" == direction then
            --print( "Reached Right Limit" )
         end
      end

      return true
   end

--shows alert
   M.displayAlert = function()
      local alert
            alert = native.showAlert(
               "Locked","Level Locked", {"Ok"})
   end

   M.levelButtonHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
            local targetID = tonumber(event.target.id)
            if (targetID <= playerLevel) then
               playerData.selectedLevel = nil
               playerData.selectedLevel = targetID
               functions.resetInsectKill()
               composer.gotoScene("insectGame",globals.sceneNextTransitionOption)
            else
              M.displayAlert()
            end
      end
   end

   M.backButtonEventHandler = function(event)
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

   M.checkAspectRatio()

   backGround = functions.background()

   leavesBg = functions.leavesBackground()

   woodLabelImg = functions.woodLabelImg()

   woodLabelText = functions.woodLabelText("Forest Town")

-- Create a scrollView
--this makes the game map scrollable
   scrollView = widget.newScrollView {
      left = 10,
      top = 150,
      width = display.contentWidth -scrollWidth,
      height =display.contentHeight  - scrollHeight,
      hideBackground = true,
      backgroundColor = { 240/255 },
      horizontalScrollingDisabled = false,
      verticalScrollingDisabled = false,
      listener = scrollListener
   }

   local scrollBackground = display.newImageRect("images/gamemap.png", 2100, 1600 )
         scrollBackground.x = scrollBackground.contentWidth * 0.5
         scrollBackground.y = scrollBackground.contentHeight * 0.5
         scrollView:insert(scrollBackground)

   backButton = globals.createButton(15,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Back",
                           M.backButtonEventHandler)

--positions the buttons on the map
--used loop to lessen the code work
--all the buttons is in the levelButton table
   local levelButton = {}
   local function displayLevelButton()
      for i=1,16 do
         local xPos = nil
         local yPos = nil
            if (1 == i) then
               xPos = 500
               yPos = 1500
            elseif (2 == i) then
               xPos = 1000
               yPos = 1450 
            elseif (3 == i) then
               xPos = 1360
               yPos = 1230
            elseif (4 == i) then
               xPos = 2000
               yPos = 1000
            elseif (5 == i) then
               xPos = 2020
               yPos = 650
            elseif (6 == i) then
               xPos = 1720
               yPos = 700
            elseif (7 == i) then
               xPos = 1450
               yPos = 1050
            elseif (8 == i) then
               xPos = 1080
               yPos = 1110
            elseif (9 == i) then
               xPos = 600
               yPos = 1150
            elseif (10 == i) then
               xPos = 750
               yPos = 850
            elseif (11 == i) then
               xPos = 1000
               yPos = 700
            elseif (12 == i) then
               xPos = 1280
               yPos = 810
            elseif (13 == i) then
               xPos = 1100
               yPos = 470
            elseif (14 == i) then
               xPos = 740
               yPos = 470
            elseif (15 == i) then
               xPos = 450
               yPos = 530
            elseif (16 == i) then
               xPos = 750
               yPos = 250
            end

         local x = " "
         local buttonDef
         local buttonPress
         if (playerLevel >= i) then
            x = i
            buttonDef = logButtonDef
            buttonPress = logButtonPress
         else
            x = " "
            buttonDef = lockImage
            buttonPress = lockImage
         end

            if (i == playerLevel) then
               scrollY = yPos
               scrollX = xPos
            end

         levelButton[i] = globals.createButton(i,124,124,xPos,yPos,
                           "Arial",buttonDef,buttonPress,x,
                           M.levelButtonHandler)
                  scrollView:insert(levelButton[i])

      end
   end

   displayLevelButton() --activate the function

   functions.resetInsectGameData()
   functions.resetInsectKill()
   
   sceneGroup:insert(backGround)
   sceneGroup:insert(woodLabelImg)
   sceneGroup:insert(woodLabelText)
   sceneGroup:insert(scrollView)   
   sceneGroup:insert(leavesBg)
   sceneGroup:insert(backButton)
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
      playerData.isWhackGame = false
      composer.removeScene("playerMenu")
      composer.removeScene("insectGame")
      --focus on the current level of the player

   local onScrollComplete = function()
      local larvae = display.newImageRect("images/larvae.png", 106, 133 )
      larvae.anchorX = 0.5
      larvae.anchorY = 0.5
      larvae.x = scrollX
      larvae.y = scrollY - 120
      scrollView:insert(larvae) 
   end      
      scrollView:scrollToPosition
      {
          x = (scrollX * -1) + 400,
          y = (scrollY * -1) + 700,
          time = 800,
          onComplete = onScrollComplete
      }
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