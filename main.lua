

UI.OnLoad = function()
	-- Adds the texture with 1, 2 and 3 stacks of Aetherflow
	aetherflowBuff.AddTexture()

	-- Adds the icon for the fey wind buff
	feyWindBuff.AddTexture()

	-- Add the player unitFrame
	playerFrame.AddTexture()
end

UI.OnFrame = function(ticks)
	local self = FF.GetPlayer()

	if self ~= nil then
		-- Only for Scholars
		if self.Job == 28 then
			aetherflowBuff.Update(self)
			-- feyWindBuff.Update(self)

			playerFrame.Update(self)
		
		else 
			playerFrame.Hide()
		end
	
	else 
		playerFrame.Hide()
	end
end
