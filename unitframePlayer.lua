playerFrame = {}


-- Set to false if you do not want to load this element
playerFrame.load = true

playerFrame.bordersize = 2

-- Left background with the HP bar
playerFrame.bgLeft = {}
playerFrame.bgLeft.level = 0
playerFrame.bgLeft.color = "#B3000000"
playerFrame.bgLeft.tint = "#B3FFFFFF"
playerFrame.bgLeft.x = math.floor(UI.PrimaryMonitorWidth / 2) - 215
playerFrame.bgLeft.y = math.floor(UI.PrimaryMonitorHeight / 2) - 60
playerFrame.bgLeft.originalX = math.floor(UI.PrimaryMonitorWidth / 2) - 215
playerFrame.bgLeft.originalY = math.floor(UI.PrimaryMonitorHeight / 2) - 60
playerFrame.bgLeft.width = 40
playerFrame.bgLeft.height = 240
playerFrame.bgLeft.rotation = 0
playerFrame.bgLeft.hidden = true

playerFrame.hpbar = {}
playerFrame.hpbar.level = 0
playerFrame.hpbar.color = "#B300FF00"
playerFrame.hpbar.tint = "#B3FFFFFF"
playerFrame.hpbar.x = playerFrame.bgLeft.x + playerFrame.bordersize
playerFrame.hpbar.y = playerFrame.bgLeft.y + playerFrame.bordersize
playerFrame.hpbar.originalX = playerFrame.bgLeft.x + playerFrame.bordersize
playerFrame.hpbar.originalY = playerFrame.bgLeft.y + playerFrame.bordersize
playerFrame.hpbar.width = playerFrame.bgLeft.width - playerFrame.bordersize*2
playerFrame.hpbar.height = playerFrame.bgLeft.height - playerFrame.bordersize*2
playerFrame.hpbar.maxHeight = playerFrame.bgLeft.height - playerFrame.bordersize*2
playerFrame.hpbar.rotation = playerFrame.bgLeft.rotation
playerFrame.hpbar.hidden = true

-- Right background with the MP and TP bars

playerFrame.bgRight = {}
playerFrame.bgRight.level = 0
playerFrame.bgRight.color = "#B3000000"
playerFrame.bgRight.tint = "#B3FFFFFF"
playerFrame.bgRight.x = math.floor(UI.PrimaryMonitorWidth / 2) + 150
playerFrame.bgRight.y = math.floor(UI.PrimaryMonitorHeight / 2) - 60
playerFrame.bgRight.originalX = math.floor(UI.PrimaryMonitorWidth / 2) + 150
playerFrame.bgRight.originalY = math.floor(UI.PrimaryMonitorHeight / 2) - 60
playerFrame.bgRight.width = 60
playerFrame.bgRight.height = 240
playerFrame.bgRight.rotation = 0
playerFrame.bgRight.hidden = true

playerFrame.mpbar = {}
playerFrame.mpbar.level = 0
playerFrame.mpbar.color = "#B3D24B87"
playerFrame.mpbar.tint = "#B3FFFFFF"
playerFrame.mpbar.x = playerFrame.bgRight.x + playerFrame.bordersize
playerFrame.mpbar.y = playerFrame.bgRight.y + playerFrame.bordersize
playerFrame.mpbar.originalX = playerFrame.bgRight.x + playerFrame.bordersize
playerFrame.mpbar.originalY = playerFrame.bgRight.y + playerFrame.bordersize
playerFrame.mpbar.width = (playerFrame.bgRight.width/2) - 3
playerFrame.mpbar.height = playerFrame.bgRight.height - playerFrame.bordersize*2
playerFrame.mpbar.maxHeight = playerFrame.bgRight.height - playerFrame.bordersize*2
playerFrame.mpbar.rotation = playerFrame.bgRight.rotation
playerFrame.mpbar.hidden = true

playerFrame.tpbar = {}
playerFrame.tpbar.level = 0
playerFrame.tpbar.color = "#B3F2A849"
playerFrame.tpbar.tint = "#B3FFFFFF"
playerFrame.tpbar.x = playerFrame.bgRight.x + playerFrame.bordersize * 2 + playerFrame.mpbar.width
playerFrame.tpbar.y = playerFrame.bgRight.y + playerFrame.bordersize
playerFrame.tpbar.originalX = playerFrame.bgRight.x + playerFrame.bordersize * 2 + playerFrame.mpbar.width
playerFrame.tpbar.originalY = playerFrame.bgRight.y + playerFrame.bordersize
playerFrame.tpbar.width = playerFrame.mpbar.width
playerFrame.tpbar.height = playerFrame.bgRight.height - playerFrame.bordersize*2
playerFrame.tpbar.maxHeight = playerFrame.bgRight.height - playerFrame.bordersize*2
playerFrame.tpbar.rotation = playerFrame.bgRight.rotation
playerFrame.tpbar.hidden = true

-- Actual values
playerFrame.valueHP = {}
playerFrame.valueHP.level = 0
playerFrame.valueHP.font = "Copperplate Gothic Bold"
playerFrame.valueHP.size = 12
playerFrame.valueHP.style = 1
playerFrame.valueHP.text = "0"
playerFrame.valueHP.color = "#FFFFFFFF"
playerFrame.valueHP.x = playerFrame.hpbar.x + playerFrame.hpbar.width / 4
playerFrame.valueHP.y = playerFrame.hpbar.y + 10
playerFrame.valueHP.width = 128
playerFrame.valueHP.height = 128
playerFrame.valueHP.aa = true
playerFrame.valueHP.anchor = 0
playerFrame.valueHP.hidden = true
playerFrame.valueHP.format = ""

playerFrame.valueMP = {}
playerFrame.valueMP.level = 0
playerFrame.valueMP.font = "Copperplate Gothic Bold"
playerFrame.valueMP.size = 12
playerFrame.valueMP.style = 1
playerFrame.valueMP.text = "0"
playerFrame.valueMP.color = "#FFFFFFFF"
playerFrame.valueMP.x = playerFrame.mpbar.x + playerFrame.mpbar.width / 4
playerFrame.valueMP.y = playerFrame.mpbar.y + 10
playerFrame.valueMP.width = 128
playerFrame.valueMP.height = 128
playerFrame.valueMP.aa = true
playerFrame.valueMP.anchor = 0
playerFrame.valueMP.hidden = true
playerFrame.valueMP.format = ""

playerFrame.valueTP = {}
playerFrame.valueTP.level = 0
playerFrame.valueTP.font = "Copperplate Gothic Bold"
playerFrame.valueTP.size = 12
playerFrame.valueTP.style = 1
playerFrame.valueTP.text = "0"
playerFrame.valueTP.color = "#FFFFFFFF"
playerFrame.valueTP.x = playerFrame.tpbar.x + playerFrame.tpbar.width / 4
playerFrame.valueTP.y = playerFrame.tpbar.y + 10
playerFrame.valueTP.width = 128
playerFrame.valueTP.height = 128
playerFrame.valueTP.aa = true
playerFrame.valueTP.anchor = 0
playerFrame.valueTP.hidden = true
playerFrame.valueTP.format = ""

-- Values as percentages
playerFrame.percentHP = {}
playerFrame.percentHP.level = 0
playerFrame.percentHP.font = "Copperplate Gothic Bold"
playerFrame.percentHP.size = 12
playerFrame.percentHP.style = 1
playerFrame.percentHP.text = "0"
playerFrame.percentHP.color = "#FFFFFFFF"
playerFrame.percentHP.x = playerFrame.hpbar.x + playerFrame.hpbar.width / 4
playerFrame.percentHP.y = playerFrame.hpbar.y + playerFrame.hpbar.maxHeight- 10
playerFrame.percentHP.width = 128
playerFrame.percentHP.height = 128
playerFrame.percentHP.aa = true
playerFrame.percentHP.anchor = 0
playerFrame.percentHP.hidden = true
playerFrame.percentHP.format = ""


playerFrame.addTexture = function () 
	if playerFrame.load == true then
		UI.AddRectangle(playerFrame.bgLeft.level, playerFrame.bgLeft.color, "playerFrame.bgLeft.tint", "playerFrame.bgLeft.x", "playerFrame.bgLeft.y", "playerFrame.bgLeft.width", "playerFrame.bgLeft.height", "playerFrame.bgLeft.rotation", "playerFrame.bgLeft.hidden")
		UI.AddRectangle(playerFrame.hpbar.level, playerFrame.hpbar.color, "playerFrame.hpbar.tint", "playerFrame.hpbar.x", "playerFrame.hpbar.y", "playerFrame.hpbar.width", "playerFrame.hpbar.height", "playerFrame.hpbar.rotation", "playerFrame.hpbar.hidden")
		
		UI.AddRectangle(playerFrame.bgRight.level, playerFrame.bgRight.color, "playerFrame.bgRight.tint", "playerFrame.bgRight.x", "playerFrame.bgRight.y", "playerFrame.bgRight.width", "playerFrame.bgRight.height", "playerFrame.bgRight.rotation", "playerFrame.bgRight.hidden")
		UI.AddRectangle(playerFrame.mpbar.level, playerFrame.mpbar.color, "playerFrame.mpbar.tint", "playerFrame.mpbar.x", "playerFrame.mpbar.y", "playerFrame.mpbar.width", "playerFrame.mpbar.height", "playerFrame.mpbar.rotation", "playerFrame.mpbar.hidden")
		UI.AddRectangle(playerFrame.tpbar.level, playerFrame.tpbar.color, "playerFrame.tpbar.tint", "playerFrame.tpbar.x", "playerFrame.tpbar.y", "playerFrame.tpbar.width", "playerFrame.tpbar.height", "playerFrame.tpbar.rotation", "playerFrame.tpbar.hidden")

		UI.AddLabel(playerFrame.valueHP.level, playerFrame.valueHP.font, playerFrame.valueHP.size, playerFrame.valueHP.style, "playerFrame.valueHP.text", "playerFrame.valueHP.color", "playerFrame.valueHP.x", "playerFrame.valueHP.y", "playerFrame.valueHP.width", "playerFrame.valueHP.height", "playerFrame.valueHP.aa", "playerFrame.valueHP.anchor", "playerFrame.valueHP.hidden")
	    UI.AddLabel(playerFrame.valueMP.level, playerFrame.valueMP.font, playerFrame.valueMP.size, playerFrame.valueMP.style, "playerFrame.valueMP.text", "playerFrame.valueMP.color", "playerFrame.valueMP.x", "playerFrame.valueMP.y", "playerFrame.valueMP.width", "playerFrame.valueMP.height", "playerFrame.valueMP.aa", "playerFrame.valueMP.anchor", "playerFrame.valueMP.hidden")
	    UI.AddLabel(playerFrame.valueTP.level, playerFrame.valueTP.font, playerFrame.valueTP.size, playerFrame.valueTP.style, "playerFrame.valueTP.text", "playerFrame.valueTP.color", "playerFrame.valueTP.x", "playerFrame.valueTP.y", "playerFrame.valueTP.width", "playerFrame.valueTP.height", "playerFrame.valueTP.aa", "playerFrame.valueTP.anchor", "playerFrame.valueTP.hidden")

    	UI.AddLabel(playerFrame.percentHP.level, playerFrame.percentHP.font, playerFrame.percentHP.size, playerFrame.percentHP.style, "playerFrame.percentHP.text", "playerFrame.percentHP.color", "playerFrame.percentHP.x", "playerFrame.percentHP.y", "playerFrame.percentHP.width", "playerFrame.percentHP.height", "playerFrame.percentHP.aa", "playerFrame.percentHP.anchor", "playerFrame.percentHP.hidden")
	end
end

playerFrame.update = function (player)
	if playerFrame.load == true then

		applyToTable(playerFrame, "hidden", false)

		playerFrame.valueHP.text = player.CurrentHP
		playerFrame.percentHP.text = (player.MaxHP * 100) / player.CurrentHP 
		playerFrame.hpbar.height = ((player.CurrentHP * 100) / player.MaxHP) * (playerFrame.hpbar.maxHeight / 100)
		playerFrame.hpbar.y = playerFrame.hpbar.originalY + (playerFrame.hpbar.maxHeight - playerFrame.hpbar.height)

		playerFrame.valueTP.text = player.CurrentTP
		playerFrame.tpbar.height = ((player.CurrentTP * 100) / player.MaxTP) * (playerFrame.tpbar.maxHeight / 100)
		playerFrame.tpbar.y = playerFrame.tpbar.originalY + (playerFrame.tpbar.maxHeight - playerFrame.tpbar.height)

		if player.MaxMP > 0 then
			playerFrame.valueMP.text = player.CurrentMP
			playerFrame.mpbar.height = ((player.CurrentMP * 100) / player.MaxMP) * (playerFrame.mpbar.maxHeight / 100)
		elseif player.MaxCP > 0 then
			playerFrame.valueMP.text = player.CurrentCP
			playerFrame.mpbar.height = ((player.CurrentCP * 100) / player.MaxCP) * (playerFrame.mpbar.maxHeight / 100)
		elseif player.MaxGP > 0 then
			playerFrame.valueMP.text = player.CurrentGP
			playerFrame.mpbar.height = ((player.CurrentGP * 100) / player.MaxGP) * (playerFrame.mpbar.maxHeight / 100)
		else
			playerFrame.mpbar.hidden = true
		end
		playerFrame.mpbar.y = playerFrame.mpbar.originalY + (playerFrame.mpbar.maxHeight - playerFrame.mpbar.height)

	end
end

playerFrame.hide = function () 
	if playerFrame.load == true then
		applyToTable(playerFrame, "hidden", true)
	end
end