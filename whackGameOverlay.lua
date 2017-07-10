local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
local dbFunctions = require("dbFunctions")
local globals = require( "globals" )
local playerData = require("playerData")
local whackInsSheetInfo = require("images.imagesheets.whackinsimagesheet")
local hitImageSheetInfo = require("images.imagesheets.hitImageSheet")
local userItemImageSheetInfo = require("images.imagesheets.useItemImageSheet")

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
local insImage = nil
local insImage2 = nil
local insImageSheet = nil
local insImageSheet2 = nil
local txtInstructions1 = nil
local txtInstructions2 = nil
local backText = nil

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

  M.onComplete = function( event )
    if "clicked" == event.action then
        local i = event.index
        if 1 == i then
            -- Do nothing; dialog will simply dismiss
        elseif 2 == i then
          backText:removeEventListener( "touch", M.bactTextHandler )
          composer.gotoScene("playerMenu",globals.sceneBackTransitionOption)
        end
    end
  end

   M.bactTextHandler = function(event)
     if ("ended" == event.phase) then
       tapSound()
       local alert = native.showAlert( "Back", "Are you sure you want to go back in player menu?" ,  { "No", "Yes" }, M.onComplete )
     end
   end

   M.hideOverlay = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.hideOverlay("fade",400)
      end
   end

   M.nextIns = function(event)
     if ("ended" == event.phase) then
       txtInstructions2.text = "To use a tool, simply tap the tool you want to use and tap on the area where insects are located." ..
        "Tools has its own corresponding costs that you need to use."
       txtNext.alpha = 0
       txtContinue.alpha = 1
       insImage.alpha = 0
       insImage2.alpha  = 1
       txtNext:removeEventListener( "touch", M.nextIns ) 
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

    txtInstructions1 = display.newText("Instructions",0,0,"Arial",60 )
    txtInstructions1.anchorX = 0.5
    txtInstructions1.anchorY = 0
    txtInstructions1.x = display.contentCenterX
    txtInstructions1.y = 200
    txtInstructions1:setFillColor( 1,1,1 )

    txtInstructions2 = display.newText(" ",0,0,500,0,"Arial",30)
    txtInstructions2.anchorX = 0.5
    txtInstructions2.anchorY = 0
    txtInstructions2.x = display.contentCenterX
    txtInstructions2.y = txtInstructions1.y + 100
    txtInstructions2:setFillColor( 1,1,1 )

   if (playerData.isWhackGame) then
   --this is for mini game overlay

      txtInstructions2.text = "Tap the worms that pops out.\n"..
      "Every worms has a corresponding coin value.\n"..
      "But beware of the red one as they deduct 10 coins everytime you hit it"

     insImageSheet = graphics.newImageSheet( "images/imagesheets/whackinsimagesheet.png", whackInsSheetInfo:getSheet() )
     insImage = display.newSprite( insImageSheet, {name = "whackInstruction",start = 1, count = 3,time = 1200 } )
     insImage.anchorX = 0.5
     insImage.anchorY = 0
     insImage.xScale = 4
     insImage.yScale = 4
     insImage.x = display.contentCenterX
     insImage.y = txtInstructions2.y + 250
     insImage:play()

   else

    txtInstructions2.text = "To kill an insect, you need to tap it. " ..
      "Dont let insects reach out the bottom playing area. " ..
      "Each wave has it owns target requirements to kill." ..
      "You need to finish all the waves to proceed to the next level."

      insImageSheet = graphics.newImageSheet( "images/imagesheets/hitImageSheet.png", hitImageSheetInfo:getSheet() )
      insImage = display.newSprite( insImageSheet, {name = "hitins", start = 1 , count = 3, time = 1200} )
      insImage.anchorX = 0.5
      insImage.anchorY = 0
      insImage.xScale = 2
      insImage.yScale = 2
      insImage.x = display.contentCenterX
      insImage.y = txtInstructions2.y + 250
      insImage:play( )

      insImageSheet2 = graphics.newImageSheet( "images/imagesheets/useItemImageSheet.png", userItemImageSheetInfo:getSheet() )
      insImage2 = display.newSprite( insImageSheet2, {name = "itemins", start = 1 , count = 5, time = 1400} )
      insImage2.anchorX = 0.5
      insImage2.anchorY = 0
      insImage2.xScale = 2
      insImage2.yScale = 2
      insImage2.x = display.contentCenterX
      insImage2.y = txtInstructions2.y + 250
      insImage2:play( )
      insImage2.alpha = 0      

      txtNext = display.newText( "Next",0,0,"Arial" ,60 )
      txtNext.anchorX = 0.5
      txtNext.anchorY = 0
      txtNext.x = display.contentCenterX
      txtNext.y = insImage.y + 400


   end

   txtContinue = display.newText( "Continue",0,0,"Arial" ,60 )
   txtContinue.anchorX = 0.5
   txtContinue.anchorY = 0
   txtContinue.x = display.contentCenterX
   txtContinue.y = insImage.y + 400

   if (playerData.isWhackGame) then
     backText = display.newText("Back",0,0,"Arial",60 )
     backText.anchorX = 0.5
     backText.anchorY = 0
     backText.x = display.contentCenterX
     backText.y = txtContinue.y + 150
   end

   if (false == playerData.isWhackGame) then
    txtContinue.alpha = 0  
   end

   checkboxSwitch = widget.newSwitch {
       left = 120,
       top = 180,
       style = "checkbox",
       initialSwitchState = true,
       id = "Checkbox button",
       onPress = checkboxSwitchListener,
   }
   checkboxSwitch.xScale = 2
   checkboxSwitch.yScale = 2
   checkboxSwitch.x = 50
   checkboxSwitch.y = display.contentHeight - 60

   checkboxText = display.newText("Show this everytime you play?",0,0,"Arial",25)
   checkboxText.x = checkboxSwitch.x + 40
   checkboxText.y = checkboxSwitch.y
   checkboxText.anchorX = 0
   checkboxText.anchorY = 0.5

   sceneGroup:insert(background)
   sceneGroup:insert(txtInstructions1)
   sceneGroup:insert(txtInstructions2)
   sceneGroup:insert(txtContinue)
   if (playerData.isWhackGame) then
     sceneGroup:insert(backText)
   end
   sceneGroup:insert( checkboxSwitch )
   sceneGroup:insert(checkboxText)
   sceneGroup:insert(insImage)
   if (false == playerData.isWhackGame) then
     sceneGroup:insert(insImage2)
   end
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
      if (playerData.isWhackGame) then
        backText:addEventListener( "touch", M.bactTextHandler )
      end
      if (false == playerData.isWhackGame) then
          txtNext:addEventListener( "touch", M.nextIns )    
      end
      txtContinue:addEventListener( "touch",M.hideOverlay )
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

      local playID = playerData.playID
      --checks if the checkbox has been clicked
      --updates the database, making the instructions not visible
      --if the user unclicked the checkbox
      if (false == checkboxSwitch.isOn) then
         if (playerData.isWhackGame) then
            --for minigame
            dbFunctions.updateIfInstructionWillShow(playID,1)
         elseif (false == playerData.isWhackGame) then
            --for main game
            dbFunctions.updateIfInstructionWillShow(playID,2)
         end
      end

   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
      playerData.isWhackGame = nil
      txtContinue:removeEventListener( "touch",M.hideOverlay )
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