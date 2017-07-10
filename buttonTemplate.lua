--button template

   buttonName = widget.newButton
   {
      width = 675,
      height = 100,
      x = display.contentCenterX,
      y = display.contentCenterY,
      font = sketchFont,
      fontSize = 55,
      labelXOffset = 0,
      labelYOffset = 7,
      defaultFile = leavesButtonDef,
      overFile = leavesButtonPress,
      label = "Button Label",
      labelColor = {
         default = {255,255,255},
         over = {0,0,0,0.5},
      },
      onEvent = buttonEventHandler,
   }