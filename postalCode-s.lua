AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
		return
	end
	print('Script by Bamm - https://discord.gg/vortex-rp')
end)
