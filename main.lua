

UI.OnLoad = function()
	-- Adds the texture with 1, 2 and 3 stacks of Aetherflow
	aetherflowBuff.AddTexture()

	-- Adds the icon for the fey wind buff
	feyWindBuff.AddTexture()
end

UI.OnFrame = function(ticks)
	local self = FF.GetPlayer()
	if self ~= nil then
		afBuff = self:GetBuffByID(304)

		if afBuff ~= nil then
			-- Change the visibility of the images depending on the number of stacks
			nbAFStacks = afBuff.OtherInfo
			
			if nbAFStacks == 1 then
				
				afImage1.hidden = false
				afImage2.hidden = true
				afImage3.hidden = true
			elseif nbAFStacks == 2 then
				
				afImage1.hidden = true
				afImage2.hidden = false
				afImage3.hidden = true
			else
				afImage1.hidden = true
				afImage2.hidden = true
				afImage3.hidden = false
			end
		else
			afImage1.hidden = true
			afImage2.hidden = true
			afImage3.hidden = true
		end
	end
end
