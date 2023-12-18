Citizen.CreateThread(function()
	language = Config.MenuLanguage
	if Config.Target == 'ox_target' then
        exports.ox_target:addModel(Config.extincteur, {
                options = {
					{
						event = 'Pikadev:prendreextincteur',
						icon = "fa-solid fa-fire-extinguisher",
						label = Config.Languages[language]['take'],
					},
					{
						event = 'Pikadev:poseextincteur',
						icon = "fa-solid fa-fire-extinguisher",
						label = Config.Languages[language]['get'],
					},
					
				},
				distance = 1.5
        })
		
    end
    if Config.Target == 'qtarget' then
        exports.qtarget:AddTargetModel(Config.extincteur, {
			options = {
				{
					event = 'Pikadev:prendreextincteur',
					icon = "fa-solid fa-fire-extinguisher",
					label = Config.Languages[language]['take'],
				},
				{
					event = 'Pikadev:poseextincteur',
					icon = "fa-solid fa-fire-extinguisher",
					label = Config.Languages[language]['get'],
				},
				
			},
			distance = 1.5
		})
    end
end)


RegisterNetEvent('Pikadev:prendreextincteur')
AddEventHandler('Pikadev:prendreextincteur', function()
	TriggerServerEvent("Pikadev_extincteur:get")
	TriggerEvent('esx:showNotification', Config.Languages[language]['notif'])
end)


RegisterNetEvent('Pikadev:poseextincteur')
AddEventHandler('Pikadev:poseextincteur', function()
	TriggerServerEvent("Pikadev_extincteur:put")
end)
