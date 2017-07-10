local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
local dbFunctions = require("dbFunctions")
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
local leaderParam = globals.leaderParam
local leaderBoardsData = {}
      leaderBoardsData = dbFunctions.fetchTopInsectKiller(leaderParam)
--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

   M.backButtonEventHandler = function(event)
      if ("ended" == event.phase) then
      tapSound()
         composer.gotoScene("leaderboardsSelector",globals.sceneBackTransitionOption)
      end
   end

 --scene functions end-----------------------------------------------------------

---------------------------------------------------------------------------------

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view

   local ox, oy = math.abs(display.screenOriginX), math.abs(display.screenOriginY)
   -- Forward reference for the tableView
   local tableView

   backGround = functions.background()

   leavesBg = functions.leavesBackground()

   woodLabelImg = functions.woodLabelImg()
   local woodText = nil
   if (globals.leaderParam == "insectkilled") then
      woodText = "Top Insect Kill"
   elseif (globals.leaderParam == "level") then
      woodText = "Top Leveler"
   elseif (globals.leaderParam == "coins") then
      woodText = "Top Coin Gain"
   end
   woodLabelText = functions.woodLabelText(woodText)

   sceneGroup:insert(backGround)
   sceneGroup:insert(woodLabelImg)
   sceneGroup:insert(woodLabelText)

   -- Set color variables depending on theme
   local tableViewColors = {
      rowColor = { default = { 255, 255, 255, 0  }, over = { 30/255, 144/255, 1 } },
      lineColor = { 220/255 },
      catColor = { default = { 150/255, 160/255, 180/255, 200/255 }, over = { 150/255, 160/255, 180/255, 200/255 } },
      defaultLabelColor = { 0, 0, 0, 0.6 },
      catLabelColor = { 0 }
   }

   -- Text to show which item we selected
   local itemSelected = display.newText( "User selected row ", 0, 0, native.systemFont, 16 )
   itemSelected:setFillColor( unpack(tableViewColors.catLabelColor) )
   itemSelected.x = display.contentWidth+itemSelected.contentWidth
   itemSelected.y = display.contentCenterY
   sceneGroup:insert( itemSelected )

   -- Function to return to the tableView
   local function goBack( event )
      transition.to( tableView, { x=display.contentWidth*0.5, time=600, transition=easing.outQuint } )
      transition.to( itemSelected, { x=display.contentWidth+itemSelected.contentWidth, time=600, transition=easing.outQuint } )
      transition.to( event.target, { x=display.contentWidth+event.target.contentWidth, time=480, transition=easing.outQuint } )
   end

   -- Back button
   local backButton = widget.newButton {
      width = 128,
      height = 32,
      label = "back",
      onRelease = goBack
   }
   backButton.x = display.contentWidth+backButton.contentWidth
   backButton.y = itemSelected.y+itemSelected.contentHeight+16
   sceneGroup:insert( backButton )

   -- Listen for tableView events
   local function tableViewListener( event )
      local phase = event.phase
      --print( "Event.phase is:", event.phase )
   end

   -- Handle row rendering
   local function onRowRender( event )
      local phase = event.phase
      local row = event.row
      local groupContentHeight = row.contentHeight
      local i = row.index
      local ord = ""
--log image
      if (1 == i) then
         ord = "st"
      elseif (2 == i) then
         ord = "nd"
      elseif (3 == i) then
         ord = "rd"
      else
         ord = "th"
      end
      local logPic = display.newImageRect( row, "images/logbutton.png", 120, 120 ) 
      logPic.x = 30
      logPic.anchorX = 0
      logPic.anchorY = 0.5
      logPic.y = groupContentHeight * 0.4
--rank text
      local rankTxt = display.newText(row,i .. ord,0,0,nil,40)
      rankTxt.x = 50
      rankTxt.anchorX = 0
      rankTxt.anchorY = 0.5
      rankTxt.y = groupContentHeight * 0.4
      rankTxt:setFillColor( 1,1,1 )
--playername
      local pName = display.newText( row, "Name: " .. leaderBoardsData[i].playerName, 0, 0, sketchFont, 30 )
      pName.x = logPic.x + 135
      pName.anchorX = 0
      pName.y = groupContentHeight * 0.3
      pName:setFillColor(0,0,0)

      --switch position base on what is selected
      if (globals.leaderParam == "level") then
--level
         local pLevel = display.newText( row, "Level: " .. leaderBoardsData[i].level,0,0,sketchFont, 30 )
         pLevel.x = pName.x
         pLevel.anchorX = 0
         pLevel.y = pName.y + 50
         pLevel:setFillColor( 0,0,0 )
--insectkilled
         local pKilled = display.newText(row,"Insects Killed: " .. leaderBoardsData[i].insectkilled,0,0,sketchFont,30)
         pKilled.x = pName.x
         pKilled.anchorX = 0
         pKilled.y = pLevel.y + 50
         pKilled:setFillColor( 0,0,0 )

--coins
         local pCoin = display.newText(row, "Coins: " .. leaderBoardsData[i].coins,0,0,sketchFont,30 )
         pCoin.x = pName.x
         pCoin.anchorX = 0
         pCoin.y = pKilled.y + 50
         pCoin:setFillColor( 0,0,0 )

      elseif (globals.leaderParam == "insectkilled") then
--insectkilled
         local pKilled = display.newText(row,"Insects Killed: " .. leaderBoardsData[i].insectkilled,0,0,sketchFont,30)
         pKilled.x = pName.x
         pKilled.anchorX = 0
         pKilled.y = pName.y + 50
         pKilled:setFillColor( 0,0,0 )

--level
         local pLevel = display.newText( row, "Level: " .. leaderBoardsData[i].level,0,0,sketchFont, 30 )
         pLevel.x = pName.x
         pLevel.anchorX = 0
         pLevel.y = pKilled.y + 50
         pLevel:setFillColor( 0,0,0 )  

--coins
         local pCoin = display.newText(row, "Coins: " .. leaderBoardsData[i].coins,0,0,sketchFont,30 )
         pCoin.x = pName.x
         pCoin.anchorX = 0
         pCoin.y = pLevel.y + 50
         pCoin:setFillColor( 0,0,0 )

      elseif (globals.leaderParam == "coins") then
--coins
         local pCoin = display.newText(row, "Coins: " .. leaderBoardsData[i].coins,0,0,sketchFont,30 )
         pCoin.x = pName.x
         pCoin.anchorX = 0
         pCoin.y = pName.y + 50
         pCoin:setFillColor( 0,0,0 )

--insectkilled
         local pKilled = display.newText(row,"Insects Killed: " .. leaderBoardsData[i].insectkilled,0,0,sketchFont,30)
         pKilled.x = pName.x
         pKilled.anchorX = 0
         pKilled.y = pCoin.y + 50
         pKilled:setFillColor( 0,0,0 )

--level
         local pLevel = display.newText( row, "Level: " .. leaderBoardsData[i].level,0,0,sketchFont, 30 )
         pLevel.x = pName.x
         pLevel.anchorX = 0
         pLevel.y = pKilled.y + 50
         pLevel:setFillColor( 0,0,0 )  

      end



   end
   
   -- Handle row updates
   local function onRowUpdate( event )
      local phase = event.phase
      local row = event.row
      --print( row.index, ": is now onscreen" )
   end
   
   -- Handle touches on the row
   local function onRowTouch( event )
      local phase = event.phase
      local row = event.target
      if ( "release" == phase ) then
         itemSelected.text = "User selected row " .. row.index
         transition.to( tableView, { x=((display.contentWidth/2)+ox+ox)*-1, time=600, transition=easing.outQuint } )
         transition.to( itemSelected, { x=display.contentCenterX, time=600, transition=easing.outQuint } )
         transition.to( backButton, { x=display.contentCenterX, time=750, transition=easing.outQuint } )
      end
   end
   
   -- Create a tableView
   tableView = widget.newTableView
   {
      top = 150-oy,
      left = -ox,
      noLines = true,
      width = display.contentWidth+ox+ox, 
      height = display.contentHeight-340+oy+oy-32,
      hideBackground = true,
      listener = tableViewListener,
      onRowRender = onRowRender,
      onRowUpdate = onRowUpdate,
      --onRowTouch = onRowTouch,
   }
   sceneGroup:insert( tableView )

   -- Create 75 rows
   for i = 1,#leaderBoardsData do
      local isCategory = false
      local rowHeight = 300
      local rowColor = { 
         default = tableViewColors.rowColor.default,
         over = tableViewColors.rowColor.over,
      }
      -- Insert the row into the tableView
      tableView:insertRow
      {
         isCategory = isCategory,
         rowHeight = rowHeight,
         rowColor = rowColor,
         --lineColor = tableViewColors.lineColor,
         params = { defaultLabelColor=tableViewColors.defaultLabelColor, catLabelColor=tableViewColors.catLabelColor }
      }
   end

   backButton = globals.createButton(3,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Back",
                           M.backButtonEventHandler)

   sceneGroup:insert( leavesBg )
   sceneGroup:insert(backButton)
   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.

   --button template
   --button = globals.createButton(id,bWidth,bHeight,bX,bY,bFont,bDefFile,bOverFile,bLabel,bHandler)
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