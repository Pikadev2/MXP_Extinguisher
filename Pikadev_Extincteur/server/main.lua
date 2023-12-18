local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)


RegisterServerEvent('Pikadev_extincteur:put')
AddEventHandler('Pikadev_extincteur:put', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local car = xPlayer.getInventoryItem('WEAPON_FIREEXTINGUISHER').count
				if car <= 1 then
				xPlayer.removeInventoryItem('WEAPON_FIREEXTINGUISHER', 1)
				xPlayer.removeInventoryItem('disc_ammo_extincteur', 1)
			end
end)
RegisterServerEvent('Pikadev_extincteur:get')
AddEventHandler('Pikadev_extincteur:get', function()
	
	local xPlayer = ESX.GetPlayerFromId(source)
	local car = xPlayer.getInventoryItem('WEAPON_FIREEXTINGUISHER').count
		if car <= 0 then
			xPlayer.addInventoryItem('WEAPON_FIREEXTINGUISHER', 1)
			xPlayer.addInventoryItem('disc_ammo_extincteur', 1)
			
		end
		
end)


