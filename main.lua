-----------------------------------------------------------------------------------------
--
-- main.lua
--
----------------------------------------------------------------------------------------
-- Your code here
display.setStatusBar( display.HiddenStatusBar )
local tapCount = 0
local tapText = display.newText( tapCount, display.contentCenterX, 20, native.systemFont, 40 )
local background = display.newImageRect( "background.png", 360, 570 )
background.x = display.contentCenterX
background.y = display.contentCenterY

local platform = display.newImageRect( "oof_og.png", 300, 500 )
platform.x = display.contentCenterX
platform.y = display.contentHeight-250
platform.alpha = 0.8
local Sound = audio.loadSound( "Sound/sound_effect.mp3" )

local function tapListener( event )

    -- Code executed when the button is tapped
    tapCount = tapCount + 1
    tapText.text = tapCount
    print( "Object tapped: " .. tostring(event.target) )
    audio.play(Sound)  -- "event.target" is the tapped object
    return true
end 

platform:addEventListener( "tap", tapListener )  -- Add a "tap" listener to the object

--local function pushBalloon()
    --balloon:applyLinearImpulse( 0, -0.75, balloon.x, balloon.y )
  --  print( "Object tapped: " .. tostring(event.target) )
    --tapCount = tapCount + 1
    --tapText.text = tapCount
--end