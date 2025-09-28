RegisterCommand("gps", function(source, args, raw)
	if args[1] ~= nil then
		local postalCode = args[1]
		setWaypoint(postalCode)
	else
		notify(Config.Prefix.. "Incorrect Postal", 'error')
	end
end, false)

-- Replace the old notify function with ox_lib version
function notify(msg, type)
	lib.notify({
		title = Config.Prefix,
		description = msg,
		type = type or 'inform' -- 'success', 'error', 'inform'
	})
end

function setWaypoint(postalCode)
	local postalCode_coords = vector2(0,0)
	for i = 1, #Config.postalcodes, 1 do
		if Config.postalcodes[i].code == postalCode then
			postalCode_coords = vector2(Config.postalcodes[i].x, Config.postalcodes[i].y)
		end
	end
	
	if postalCode_coords.x ~= 0.0 and postalCode_coords.y ~= 0.0 then
		SetNewWaypoint(postalCode_coords.x, postalCode_coords.y)
		notify("Marker was set successfully. Postcode: " .. postalCode, 'success')
	else
		notify("Incorrect Postal!", 'error')
	end
	
end

Citizen.CreateThread(function()	
	TriggerEvent('chat:addSuggestion', '/gps', 'set marker at target position', {
	    { name="postal code", help="postal code of target (e.g. 001)" }
	})
end)
