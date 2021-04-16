local table = {}

function DrawNotify(id, text, icon, color)
	if id then
		if table[id] == nil then
			table[id] = text
			SendNUIMessage({display = true, text = text, icon = icon or "fas fa-exclamation-circle", color = color or "#26242f"})
		end
	end
	return id
end

function Clear(id)
	if table[id] ~= nil then
		table[id] = nil
		SendNUIMessage({display = false})
	end
end