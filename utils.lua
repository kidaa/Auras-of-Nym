
applyToTable = function (table, key, value) 
	
	for k, v in pairs(table) do
		if table[k] ~= nil and type(table[k]) == "table" then
			table[k][key] = value
		end
	end

end

switchApplyToTable = function (table, key, value, otherwise) 
	
	for k, v in pairs(table) do
		if table[k] ~= nil and type(table[k]) == "table" then
			table[k][key] = value
		end
	end

end
