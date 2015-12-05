
aetherflowBuff = {}

-- Set to false if you do not want to load this element
aetherflowBuff.load = true
aetherflowBuff.nbAFStacks = 0
aetherflowBuff.initialTicks = 0
aetherflowBuff.isOnCooldown = false

-- Table containing the Aetherflow Cooldown splash image
aetherflowBuff.image = {}
aetherflowBuff.image.level = 0
aetherflowBuff.image.filepath = "textures\\aetherflow_buff.png"
aetherflowBuff.image.tint = "#FFFFFFFF"
aetherflowBuff.image.x = aetherflowStacks.images.stackX - 20
aetherflowBuff.image.y = aetherflowStacks.images.stackY - 30
aetherflowBuff.image.scalex = 1
aetherflowBuff.image.scaley = 1
aetherflowBuff.image.rotation = aetherflowStacks.images.rotation
aetherflowBuff.image.hidden = false

aetherflowBuff.updateStacks = function (player, ticks) 
	afBuff = player:GetBuffByID(304)

	if afBuff ~= nil then
		-- Change the visibility of the images depending on the number of stacks
		if afBuff.OtherInfo == 3 and aetherflowBuff.isOnCooldown == false then

			-- Save the initial tick count as an internal timer
			aetherflowBuff.initialTicks = ticks

			aetherflowBuff.isOnCooldown = true
			aetherflowBuff.image.hidden = true
		end 

		aetherflowBuff.nbAFStacks = afBuff.OtherInfo
	end
end

aetherflowBuff.addTexture = function () 
	if aetherflowBuff.load == true then
		UI.AddTexture(aetherflowBuff.image.level, aetherflowBuff.image.filepath, "aetherflowBuff.image.tint", "aetherflowBuff.image.x", "aetherflowBuff.image.y", "aetherflowBuff.image.scalex", "aetherflowBuff.image.scaley", "aetherflowBuff.image.rotation", "aetherflowBuff.image.hidden")
	end
end

aetherflowBuff.update = function (player, ticks)

	if aetherflowBuff.load == true then

		aetherflowBuff.updateStacks(player, ticks)

		if aetherflowBuff.isOnCooldown == true then
		
			if ticks - aetherflowBuff.initialTicks >= 59600 then
				aetherflowBuff.isOnCooldown = false
				aetherflowBuff.image.hidden = false
			end
		end
	end
end

aetherflowBuff.hide = function ()
	if aetherflowBuff.load == true then
		aetherflowBuff.image.hidden = true
	end
end