
clericBuff = {}

-- Set to false if you do not want to load this element
clericBuff.load = true

-- Table containing the Cleric Stance Buff splash image 
clericBuff.image = {}
clericBuff.image.level = 0
clericBuff.image.filepath = "textures\\cleric_buff.png"
clericBuff.image.tint = "#FFFFFFFF"
clericBuff.image.x = aetherflowStacks.images.stackX - 20
clericBuff.image.y = aetherflowStacks.images.stackY - 30
clericBuff.image.scalex = 1
clericBuff.image.scaley = 1
clericBuff.image.rotation = aetherflowStacks.images.rotation
clericBuff.image.hidden = true

clericBuff.addTexture = function () 
	if clericBuff.load == true then
		UI.AddTexture(clericBuff.image.level, clericBuff.image.filepath, "clericBuff.image.tint", "clericBuff.image.x", "clericBuff.image.y", "clericBuff.image.scalex", "clericBuff.image.scaley", "clericBuff.image.rotation", "clericBuff.image.hidden")
	end
end

clericBuff.update = function (player)

	if clericBuff.load == true then

		clericStance = player:GetBuffByID(145)

		if clericStance ~= nil then
			clericBuff.image.hidden = false
		else 
			clericBuff.image.hidden = true
		end
	end
end

clericBuff.hide = function ()
	if clericBuff.load == true then
		clericBuff.image.hidden = true
	end
end