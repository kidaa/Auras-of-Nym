playerFrame = {}


-- Set to false if you do not want to load this element
playerFrame.load = true

playerFrame.bordersize = 2

-- Left background with the HP bar
playerFrame.bgLeft = {}
playerFrame.bgLeft.level = 0
playerFrame.bgLeft.color = "#B3000000"
playerFrame.bgLeft.tint = "#B3FFFFFF"
playerFrame.bgLeft.x = math.floor(UI.PrimaryMonitorWidth / 2) - 150
playerFrame.bgLeft.y = math.floor(UI.PrimaryMonitorHeight / 2) - 60
playerFrame.bgLeft.width = 40
playerFrame.bgLeft.height = 240
playerFrame.bgLeft.rotation = 0
playerFrame.bgLeft.hidden = false

playerFrame.hpbar = {}
playerFrame.hpbar.level = 0
playerFrame.hpbar.color = "#B300FF00"
playerFrame.hpbar.tint = "#B3FFFFFF"
playerFrame.hpbar.x = playerFrame.bgLeft.x + playerFrame.bordersize
playerFrame.hpbar.y = playerFrame.bgLeft.y + playerFrame.bordersize
playerFrame.hpbar.width = playerFrame.bgLeft.width - playerFrame.bordersize*2
playerFrame.hpbar.height = playerFrame.bgLeft.height - playerFrame.bordersize*2
playerFrame.hpbar.maxHeight = playerFrame.bgLeft.height - playerFrame.bordersize*2
playerFrame.hpbar.rotation = 0
playerFrame.hpbar.hidden = false

-- Right background with the MP and TP bars

playerFrame.bgRight = {}
playerFrame.bgRight.level = 0
playerFrame.bgRight.color = "#B3000000"
playerFrame.bgRight.tint = "#B3FFFFFF"
playerFrame.bgRight.x = math.floor(UI.PrimaryMonitorWidth / 2) + 150
playerFrame.bgRight.y = math.floor(UI.PrimaryMonitorHeight / 2) - 60
playerFrame.bgRight.width = playerFrame.bgLeft.width * 1.5
playerFrame.bgRight.height = playerFrame.bgLeft.height
playerFrame.bgRight.rotation = 0
playerFrame.bgRight.hidden = false

playerFrame.mpbar = {}
playerFrame.mpbar.level = 0
playerFrame.mpbar.color = "#B3D24B87"
playerFrame.mpbar.tint = "#B3FFFFFF"
playerFrame.mpbar.x = playerFrame.bgRight.x + playerFrame.bordersize
playerFrame.mpbar.y = playerFrame.bgRight.y + playerFrame.bordersize
playerFrame.mpbar.width = (playerFrame.bgRight.width/2) - 3
playerFrame.mpbar.height = playerFrame.bgRight.height - playerFrame.bordersize*2
playerFrame.mpbar.maxHeight = playerFrame.bgRight.height - playerFrame.bordersize*2
playerFrame.mpbar.rotation = 0
playerFrame.mpbar.hidden = false

playerFrame.tpbar = {}
playerFrame.tpbar.level = 0
playerFrame.tpbar.color = "#B3F2A849"
playerFrame.tpbar.tint = "#B3FFFFFF"
playerFrame.tpbar.x = playerFrame.mpbar.x + playerFrame.mpbar.width + playerFrame.bordersize
playerFrame.tpbar.y = playerFrame.mpbar.y + playerFrame.bordersize
playerFrame.tpbar.width = playerFrame.mpbar.width
playerFrame.tpbar.height = playerFrame.bgRight.height - playerFrame.bordersize*2
playerFrame.tpbar.maxHeight = playerFrame.bgRight.height - playerFrame.bordersize*2
playerFrame.tpbar.rotation = 0
playerFrame.tpbar.hidden = false



playerFrame.AddTexture = function () 
	if playerFrame.load == true then
		UI.AddRectangle(playerFrame.bgLeft.level, playerFrame.bgLeft.color, "playerFrame.bgLeft.tint", "playerFrame.bgLeft.x", "playerFrame.bgLeft.y", "playerFrame.bgLeft.width", "playerFrame.bgLeft.height", "playerFrame.bgLeft.rotation", "playerFrame.bgLeft.hidden")
		UI.AddRectangle(playerFrame.hpbar.level, playerFrame.hpbar.color, "playerFrame.hpbar.tint", "playerFrame.hpbar.x", "playerFrame.hpbar.y", "playerFrame.hpbar.width", "playerFrame.hpbar.height", "playerFrame.hpbar.rotation", "playerFrame.hpbar.hidden")
		UI.AddRectangle(playerFrame.bgRight.level, playerFrame.bgRight.color, "playerFrame.bgRight.tint", "playerFrame.bgRight.x", "playerFrame.bgRight.y", "playerFrame.bgRight.width", "playerFrame.bgRight.height", "playerFrame.bgRight.rotation", "playerFrame.bgRight.hidden")
		UI.AddRectangle(playerFrame.mpbar.level, playerFrame.mpbar.color, "playerFrame.mpbar.tint", "playerFrame.mpbar.x", "playerFrame.mpbar.y", "playerFrame.mpbar.width", "playerFrame.mpbar.height", "playerFrame.mpbar.rotation", "playerFrame.mpbar.hidden")
		UI.AddRectangle(playerFrame.tpbar.level, playerFrame.tpbar.color, "playerFrame.tpbar.tint", "playerFrame.tpbar.x", "playerFrame.tpbar.y", "playerFrame.tpbar.width", "playerFrame.tpbar.height", "playerFrame.tpbar.rotation", "playerFrame.tpbar.hidden")

	end
end