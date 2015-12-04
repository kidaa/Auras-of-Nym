
feyWindBuff = {}

-- Set to false if you do not want to load this element
feyWindBuff.load = false


-- Table containing the Fey Wind image
feyWindImage = {}
feyWindImage.level = 0
feyWindImage.filepath = "fey_wind.png"
feyWindImage.tint = "#FFFFFFFF"
feyWindImage.x = math.floor(UI.PrimaryMonitorWidth / 2)
feyWindImage.y = math.floor(UI.PrimaryMonitorHeight / 2)
feyWindImage.scalex = 1
feyWindImage.scaley = 1
feyWindImage.rotation = 0
feyWindImage.hidden = true


feyWindBuff.addTexture = function () 
	if feyWindBuff.load == true then
		UI.AddTexture(feyWindImage.level, feyWindImage.filepath, "feyWindImage.tint", "feyWindImage.x", "feyWindImage.y", "feyWindImage.scalex", "feyWindImage.scaley", "feyWindImage.rotation", "feyWindImage.hidden")
	end
end

feyWindBuff.update = function () 
	if feyWindBuff.load == true then
	end
end