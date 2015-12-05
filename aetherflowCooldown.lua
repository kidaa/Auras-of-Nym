
aetherflowCooldown = {}

-- Set to false if you do not want to load this element
aetherflowCooldown.load = true
aetherflowCooldown.nbAFStacks = 0
aetherflowCooldown.initialTicks = 0
aetherflowCooldown.isOnCooldown = false

-- Table containing the Aetherflow Cooldown splash image image
aetherflowCooldown.image = {}
aetherflowCooldown.image.level = 0
aetherflowCooldown.image.filepath = "textures\\aura_base.png"
aetherflowCooldown.image.tint = "#FFFFFFFF"
aetherflowCooldown.image.x = aetherflowStacks.images.stackX - 20
aetherflowCooldown.image.y = aetherflowStacks.images.stackY - 30
aetherflowCooldown.image.scalex = 1
aetherflowCooldown.image.scaley = 1
aetherflowCooldown.image.rotation = aetherflowStacks.images.rotation
aetherflowCooldown.image.hidden = true

aetherflowCooldown.updateStacks = function (player, ticks) 
	afBuff = player:GetBuffByID(304)

	if afBuff ~= nil then
		-- Change the visibility of the images depending on the number of stacks
		if afBuff.OtherInfo == 3 and aetherflowCooldown.isOnCooldown == false then

			-- Save the initial tick count as an internal timer
			aetherflowCooldown.initialTicks = ticks

			aetherflowCooldown.isOnCooldown = true
			aetherflowCooldown.image.hidden = true
		end 

		aetherflowCooldown.nbAFStacks = afBuff.OtherInfo
	end
end

aetherflowCooldown.addTexture = function () 
	if aetherflowCooldown.load == true then
		UI.AddTexture(aetherflowCooldown.image.level, aetherflowCooldown.image.filepath, "aetherflowCooldown.image.tint", "aetherflowCooldown.image.x", "aetherflowCooldown.image.y", "aetherflowCooldown.image.scalex", "aetherflowCooldown.image.scaley", "aetherflowCooldown.image.rotation", "aetherflowCooldown.image.hidden")
	end
end

aetherflowCooldown.update = function (player, ticks)

	if aetherflowCooldown.load == true then

		aetherflowCooldown.updateStacks(player, ticks)

		if aetherflowCooldown.isOnCooldown == true then
		
			if ticks - aetherflowCooldown.initialTicks >= 58000 then
				aetherflowCooldown.isOnCooldown = false
				aetherflowCooldown.image.hidden = false
			end
		end
	end
end