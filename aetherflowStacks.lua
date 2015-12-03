
aetherflowStacks = {}

-- Set to false if you do not want to load this baelement
aetherflowStacks.load = true



-- Properties of the image
afImagePath = "textures\\yellow_vertical_3_"
width = 40
height = 240


-- Table containing the AetherFlow aura image with 1 stack (no text will be implemented)
afImage1 = {}
afImage1.level = 0
afImage1.filepath = afImagePath .. "1.png"
afImage1.tint = "#FFFFFFFF"
afImage1.x = math.floor(UI.PrimaryMonitorWidth / 2) - (height / 2) -- +240
afImage1.y = math.floor(UI.PrimaryMonitorHeight / 2) + (height / 2) -- -120
afImage1.scalex = 1
afImage1.scaley = 1
afImage1.rotation = 90
afImage1.hidden = true

-- Table containing the AetherFlow aura image with 2 stacks (no text will be implemented)
afImage2 = {}
afImage2.level = 0
afImage2.filepath = afImagePath .. "2.png"
afImage2.tint = "#FFFFFFFF"
afImage2.x = math.floor(UI.PrimaryMonitorWidth / 2) - (height / 2)
afImage2.y = math.floor(UI.PrimaryMonitorHeight / 2) + (height / 2)
afImage2.scalex = 1
afImage2.scaley = 1
afImage2.rotation = 90
afImage2.hidden = true

-- Table containing the AetherFlow aura image with 3 stacks (no text will be implemented)
afImage3 = {}
afImage3.level = 0
afImage3.filepath = afImagePath .. "3.png"
afImage3.tint = "#FFFFFFFF"
afImage3.x = math.floor(UI.PrimaryMonitorWidth / 2) - (height / 2)
afImage3.y = math.floor(UI.PrimaryMonitorHeight / 2) + (height / 2)
afImage3.scalex = 1
afImage3.scaley = 1
afImage3.rotation = 90
afImage3.hidden = true



aetherflowStacks.AddTexture = function () 
	if aetherflowStacks.load == true then
		UI.AddTexture(afImage1.level, afImage1.filepath, "afImage1.tint", "afImage1.x", "afImage1.y", "afImage1.scalex", "afImage1.scaley", "afImage1.rotation", "afImage1.hidden")
		UI.AddTexture(afImage2.level, afImage2.filepath, "afImage2.tint", "afImage2.x", "afImage2.y", "afImage2.scalex", "afImage2.scaley", "afImage2.rotation", "afImage2.hidden")
		UI.AddTexture(afImage3.level, afImage3.filepath, "afImage3.tint", "afImage3.x", "afImage3.y", "afImage3.scalex", "afImage3.scaley", "afImage3.rotation", "afImage3.hidden")
	end
end