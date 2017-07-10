local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local dbFunctions = require("dbFunctions")
local functions = require( "functions" )
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
local playerName = nil
local totalActiveSaves = dbFunctions.countActiveSave()
local alertIDType = nil

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

--display alert handler
   M.displayAlertHandler = function(event)
      if (event.action == "clicked") then
            if (alertIDType == 1) then --for errors
               if (event.index == 1) then
                  pTextField.text = ""
                  alertIDType = nil
               end

            elseif (alertIDType == 2) then --for user validation

               if (event.index == 2) then --user want to delete
                  alertIDType = nil
                  globals.isDelete = true
                  playerData.tempPlayerName = playerName
                  composer.gotoScene("loadMenu",globals.sceneNextTransitionOption)
               elseif (event.index == 1) then --user dont want to delete
                   pTextField.text = ""
                   alertIDType = nil
               end  

            end
      end
   end

--display the alert
   M.displayAlert = function(alertID,alertType,message)
      local alert
            if (alertID == 1) then --for errors
               alertIDType = 1
               alert = native.showAlert(
                  alertType, message, {"Ok"},
                  M.displayAlertHandler
               )
            elseif (alertID == 2) then --for user validation
               alertIDType = 2
               alert = native.showAlert(
                  alertType ,message, {"No","Yes"},
                  M.displayAlertHandler
               )
            end    
   end

--validate the playername
   M.validateTextField = function()
      --playerName = "Player"
      if (playerName == "" or playerName == nil ) then --blank text field
         M.displayAlert(1,"Invalid Name","Please put you name on the text field.")
         return false
      elseif (playerName:match('%"')) then--check if there are " on the string
         M.displayAlert(1,"Invalid Name","Name contains special character/s")
         return false
      elseif (playerName:match("%'")) then--check if there are " on the string
         M.displayAlert(1,"Invalid Name","Name contains special character/s")
         return false
      elseif (playerName:match('%+')) then --check if there are + on the string
         M.displayAlert(1,"Invalid Name", "Name contains special character/s")
         return false
      elseif (playerName:match('%-')) then --check if there are - on the string
         M.displayAlert(1,"Invalid Name","Name contains special character/s")
         return false
      elseif (playerName:match('%/')) then --check if there are / on the string
         M.displayAlert(1,"Invalid Name","Name contains special character/s")
         return false
      elseif (playerName:match('%*')) then --check if there are * on the string
         M.displayAlert(1,"Invalid Name","Name contains special character/s")
         return false
      elseif (playerName:match("%A+%A")) then --makes sure that there is only 1 space on the name of the player
         M.displayAlert(1,"Invalid Name","Name contains special character/s")
         return false
      --checks if name is already take
      elseif (dbFunctions.checkName(playerName) == false) then
         M.displayAlert(1,"Invalid Name","Name is already taken")
         return false
      else
         return true --name passed all validation
      end
   end

   M.onComplete = function( event )
       if "clicked" == event.action then
           local i = event.index
           if 1 == i then
             composer.gotoScene("storyBoard",globals.sceneNextTransitionOption)
           end
       end
   end
   

   M.createButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         if (M.validateTextField()) then --validate the text first
            print ("Player Name: " .. playerName)
               if (totalActiveSaves <= 2) then --there is a save slot
                     if (dbFunctions.addPlayer(playerName)) then
                        globals.isLoad = false
                        local alert = native.showAlert( "Success", "Congratulations " .. playerName .. " your profile has been created.", { "OK" }, M.onComplete )
                     else
                        --theres a error on saving the date
                     end 
               else --no save slot
                  M.displayAlert(2,"Cannot save","Max player profile reached. Do you want to delete other save profile?")
               end
         else
            M.displayAlert("Invalid Name","Name cannot be used")
         end
      end
   end

   M.backButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         globals.isDelete = false
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

   backGround = functions.background()

   leavesBg = functions.leavesBackground()

   woodLabelImg = functions.woodLabelImg()

   woodLabelText = functions.woodLabelText("New Game")

   createButton = globals.createButton(1,675,100,display.contentWidth/2,display.contentHeight-450,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Create",
                           M.createButtonEventHandler)

   backButton = globals.createButton(2,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Back",
                           M.backButtonEventHandler)

   pNameLabel = display.newText(  "Player Name",0,0, sketchFont, 55 )
   pNameLabel.anchorX = 0.5
   pNameLabel.anchorY = 0.5
   pNameLabel.x = display.contentWidth / 2
   pNameLabel.y = 250
   pNameLabel:setFillColor( 0.7,0,0.3 )

   sceneGroup:insert(backGround)
   sceneGroup:insert(woodLabelImg)
   sceneGroup:insert(woodLabelText)  
   sceneGroup:insert(leavesBg)
   sceneGroup:insert(pNameLabel)
   sceneGroup:insert(createButton)
   sceneGroup:insert(backButton)

end

-- "scene:show()"
function scene:show( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).

   pTextField = native.newTextField( display.contentCenterX, 370,
                display.contentWidth * 0.8, display.contentHeight * 0.08)
   pTextField.inputType = "default"
   pTextField.font = native.newFont( "Arial", display.contentHeight  * 0.025 )
   pTextField:setTextColor( 0,0,0 )
   pTextField.align = "center"
   pTextField.anchorX = 0.5
   pTextField.anchorY = 0.5
   pTextField.text = ""

      --handles keyboard events
       function pTextField:userInput(event)
         if (event.phase == "began") then
            pTextField.text = ""
         elseif (event.phase == "editing") then
            -- This section happens when the user types
            -- Lets set up a max length, compare it and if too long, replace it
            local myNum = 10-- max characters   
            if string.len(event.text) > myNum then
                  -- Text too long, replace textField text with old text
               pTextField.text = event.oldText
            end
         elseif (event.phase == "ended") then
                  playerName = pTextField.text
         elseif (event.phase == "submitted") then
               playerName = pTextField.text
         end   
      end

      --hides the keyboard when the background is tapped
      function backGround:tap (event)
         native.setKeyboardFocus ( nil ) --dismissess the keyboard
      end


   pTextField:addEventListener( "userInput", pTextField )
   backGround:addEventListener( "tap", backGround )

   sceneGroup:insert(pTextField)

   elseif ( phase == "did" ) then
      -- Called when the scene is now on screen.
      -- Insert code here to make the scene come alive.
      --Remove unused scene
      -- Example: start timers, begin animation, play audio, etc.
      composer.removeScene("gameMenu")
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
      pTextField:removeEventListener( "userInput", pTextField )
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