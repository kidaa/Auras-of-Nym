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
playerFrame.valueHP.hidden = false
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
playerFrame.valueMP.hidden = false
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
playerFrame.valueTP.hidden = false
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
playerFrame.percentHP.hidden = false
playerFrame.percentHP.format = ""


playerFrame.AddTexture = function () 
	if playerFrame.load == true then
		UI.AddRectangle(playerFrame.bgLeft.level, playerFrame.bgLeft.color, "playerFrame.bgLeft.tint", "playerFrame.bgLeft.x", "playerFrame.bgLeft.y", "playerFrame.bgLeft.width", "playerFrame.bgLeft.height", "playerFrame.bgLeft.rotation", "playerFrame.bgLeft.hidden")
		UI.AddRectangle(playerFrame.hpbar.level, playerFrame.hpbar.color, "playerFrame.hpbar.tint", "playerFrame.hpbar.x", "playerFrame.hpbar.y", "playerFrame.hpbar.width", "playerFrame.hpbar.height", "playerFrame.hpbar.rotation", "playerFrame.hpbar.hidden")
		
		UI.AddRectangle(playerFrame.bgRight.level, playerFrame.bgRight.color, "playerFrame.bgRight.tint", "playerFrame.bgRight.x", "playerFrame.bgRight.y", "playerFrame.bgRight.width", "playerFrame.bgRight.height", "playerFrame.bgRight.rotation", "playerFrame.bgRight.hidden")
		UI.AddRectangle(playerFrame.mpbar.level, playerFrame.mpbar.color, "playerFrame.mpbar.tint", "playerFrame.mpbar.x", "playerFrame.mpbar.y", "playerFrame.mpbar.width", "playerFrame.mpbar.height", "playerFrame.mpbar.rotation", "playerFrame.mpbar.hidden")
		UI.AddRectangle(playerFrame.tpbar.level, playerFrame.tpbar.color, "playerFrame.tpbar.tint", "playerFrame.tpbar.x", "playerFrame.tpbar.y", "playerFrame.tpbar.width", "playerFrame.tpbar.height", "playerFrame.tpbar.rotation", "playerFrame.tpbar.hidden")

		UI.AddLabel(playerFrame.valueHP.level, playerFrame.valueHP.font, playerFrame.valueHP.size, playerFrame.valueHP.style, "playerFrame.valueHP.text", "playerFrame.valueHP.color", "playerFrame.valueHP.x", "playerFrame.valueHP.y", "playerFrame.valueHP.width", "playerFrame.valueHP.height", "playerFrame.valueHP.aa", "playerFrame.valueHP.anchor", "playerFrame.valueHP.hidden")
	    UI.AddLabel(valueMP.level, valueMP.font, valueMP.size, valueMP.style, "valueMP.text", "valueMP.color", "valueMP.x", "valueMP.y", "valueMP.width", "valueMP.height", "valueMP.aa", "valueMP.anchor", "valueMP.hidden")
	    UI.AddLabel(valueTP.level, valueTP.font, valueTP.size, valueTP.style, "valueTP.text", "valueTP.color", "valueTP.x", "valueTP.y", "valueTP.width", "valueTP.height", "valueTP.aa", "valueTP.anchor", "valueTP.hidden")

    	UI.AddLabel(percentHP.level, percentHP.font, percentHP.size, percentHP.style, "percentHP.text", "percentHP.color", "percentHP.x", "percentHP.y", "percentHP.width", "percentHP.height", "percentHP.aa", "percentHP.anchor", "percentHP.hidden")
	end
end

playerFrame.Update = function (self)

	playerFrame.bgLeft.hidden = false
	playerFrame.hpbar.hidden = false
	playerFrame.bgLeft.hidden = false
	playerFrame.mpbar.hidden = false
	playerFrame.tpbar.hidden = false

	playerFrame.valueHP.hidden = false
	playerFrame.valueMP.hidden = false
	playerFrame.valueTP.hidden = false
	playerFrame.percentHP.hidden = false

	playerFrame.hpbar.height = ((self.CurrentHP * 100) / self.MaxHP) * (playerFrame.hpbar.maxHeight / 100)
	playerFrame.tpbar.height = ((self.CurrentTP * 100) / self.MaxTP) * (playerFrame.tpbar.maxHeight / 100)

	if self.MaxMP > 0 then
		playerFrame.mpbar.height = ((self.CurrentMP * 100) / self.MaxMP) * (playerFrame.mpbar.maxHeight / 100)
	elseif self.MaxCP > 0 then
		playerFrame.mpbar.height = ((self.CurrentCP * 100) / self.MaxCP) * (playerFrame.mpbar.maxHeight / 100)
	elseif self.MaxGP > 0 then
		playerFrame.mpbar.height = ((self.CurrentGP * 100) / self.MaxGP) * (playerFrame.mpbar.maxHeight / 100)
	else
		playerFrame.mpbar.hidden = true
	end

end

playerFrame.Hide = function () 
	playerFrame.bgLeft.hidden = true
	playerFrame.hpbar.hidden = true
	playerFrame.bgRight.hidden = true
	playerFrame.mpbar.hidden = true
	playerFrame.tpbar.hidden = true
end