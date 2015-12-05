
-- TODO: make a table that contains all the element loaders of the addon
-- and charge everything in a for loop calling Update

displayLabel = {}
displayLabel.level = 0
displayLabel.font = "Copperplate Gothic Bold"
displayLabel.size = 12
displayLabel.style = 1
displayLabel.text = "0"
displayLabel.color = "#FFFFFFFF"
displayLabel.x = math.floor(UI.PrimaryMonitorWidth / 2)
displayLabel.y =math.floor(UI.PrimaryMonitorHeight / 2)
displayLabel.width = 128
displayLabel.height = 128
displayLabel.aa = true
displayLabel.anchor = 0
displayLabel.hidden = true
displayLabel.format = ""


UI.OnLoad = function()
	-- Adds the texture with 1, 2 and 3 stacks of Aetherflow
	aetherflowStacks.addTexture()
	aetherflowBuff.addTexture()

	-- Add cleric stance aura
	clericBuff.addTexture()

	-- Adds the icon for the fey wind buff
	feyWindBuff.addTexture()

	-- Add the player unitFrame
	playerFrame.addTexture()

	UI.AddLabel(displayLabel.level, displayLabel.font, displayLabel.size, displayLabel.style, "displayLabel.text", "displayLabel.color", "displayLabel.x", "displayLabel.y", "displayLabel.width", "displayLabel.height", "displayLabel.aa", "displayLabel.anchor", "displayLabel.hidden")
end

UI.OnFrame = function(ticks)
	local self = FF.GetPlayer()

	-- displayLabel.text = "hello"
	-- displayLabel.hidden = true

	if self ~= nil then
		local job = string.match(tostring(self.Job), "%d+")

		-- Only for Scholars
		if job == "28" then

			-- if self:GetBuffByID(145) ~= nil then
			-- 	displayLabel.text = "win"
			-- else
			-- 	displayLabel.text = "lose"
			-- end

			displayLabel.hidden = false

			aetherflowStacks.update(self)

			feyWindBuff.update(self)

			playerFrame.update(self)
 
			aetherflowBuff.update(self, ticks)
			clericBuff.update(self)
		
		else 
			-- playerFrame.hide()
			aetherflowStacks.hide()
			aetherflowBuff.hide()
			clericBuff.hide()
		end
	
	else 
		-- playerFrame.hide()
		aetherflowStacks.hide()
		aetherflowBuff.hide()
		clericBuff.hide()
	end
end
