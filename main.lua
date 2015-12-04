
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
displayLabel.hidden = false
displayLabel.format = ""


UI.OnLoad = function()
	-- Adds the texture with 1, 2 and 3 stacks of Aetherflow
	aetherflowBuff.AddTexture()

	-- Adds the icon for the fey wind buff
	feyWindBuff.AddTexture()

	-- Add the player unitFrame
	playerFrame.AddTexture()

	UI.AddLabel(displayLabel.level, displayLabel.font, displayLabel.size, displayLabel.style, "displayLabel.text", "displayLabel.color", "displayLabel.x", "displayLabel.y", "displayLabel.width", "displayLabel.height", "displayLabel.aa", "displayLabel.anchor", "displayLabel.hidden")
end

UI.OnFrame = function(ticks)
	local self = FF.GetPlayer()

	if self ~= nil then
		-- Only for Scholars
		displayLabel.text = self.Job
		displayLabel.hidden = true
		-- if self.Job 4== 28 then
			aetherflowBuff.Update(self)
			-- displayLabel.text = "WIN"
			feyWindBuff.Update(self)

			playerFrame.Update(self)
		
			
		-- else 
			-- playerFrame.Hide()
		-- end
	
	else 
		playerFrame.Hide()
	end
end
