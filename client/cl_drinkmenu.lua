local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'ox' then
    ----- | CREATING COFFEE MENU LOCATION | -----
	exports.ox_target:addBoxZone({
		coords = vector4(832.82, -114.7, 79.79, 333.44),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'IrishPubCoffeeMenu',
				event = 'bd-irishpubjob:client:OpenCoffeeMenu',
				icon = 'fa-solid fa-mug-saucer',
				label = 'Coffee Menu',
				groups = {
					irishpub = 0
				},
			},
		}
	})
	----- | CREATING DRINK MENU LOCATION | -----
	exports.ox_target:addBoxZone({
		coords = vector4(837.86, -114.98, 79.78, 150.73),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'IrishPubDrinkMenu',
				event = 'bd-irishpubjob:client:OpenDrinkMenu',
				icon = 'fa-solid fa-faucet',
				label = 'Drink Menu',
				groups = {
					irishpub = 0
				},
			},
		}
	})
elseif  Config.TargetSystem == 'qb' then
    ----- | CREATING COFFEE MENU LOCATION | -----
    exports['qb-target']:AddBoxZone("IrishPubCoffeeMenu", vector3(832.68, -114.71, 79.77), 0.9, 0.9, {
        name = "IrishPubCoffeeMenu",
        heading = 347.27,
        debugPoly = false,
        minZ = 79.77 - 2,
        maxZ = 79.77 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-irishpubjob:client:OpenCoffeeMenu",
                icon = "fa-solid fa-mug-saucer",
                label = "Coffee Menu",
                job = "irishpub",
            },
        },
        distance = 2.5
    })
    ----- | CREATING DRINK MENU LOCATION | -----
    exports['qb-target']:AddBoxZone("IrishPubDrinkMenu", vector3(837.62, -115.29, 79.77), 0.9, 0.9, {
        name = "IrishPubDrinkMenu",
        heading = 347.27,
        debugPoly = false,
        minZ = 79.77 - 2,
        maxZ = 79.77 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-irishpubjob:client:OpenDrinkMenu",
                icon = "fa-solid fa-faucet",
                label = "Drink Menu",
                job = "irishpub",
            },
        },
        distance = 2.5
    })
end

----- | CREATING COFFEE MENU | -----
lib.registerContext({
    id = 'irishpub_coffee_menu',
    title = 'Coffee Menu',
    options = {
        {
            title = 'Coffee',
            description = 'You need 1x Supplies',
            icon = 'mug-hot',
            iconColor = 'SaddleBrown',
            event = 'bd-irishpubjob:client:MakeCoffee',
        },
    }
})
RegisterNetEvent('bd-irishpubjob:client:OpenCoffeeMenu', function()
    lib.showContext('irishpub_coffee_menu')
end)
RegisterNetEvent('bd-irishpubjob:client:MakeCoffee', function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "coffee_pour", 0.2)
    if lib.progressCircle({
        duration = 1250, -- If you change this the sound will play longer then the bar ( can just comment the sound out if you dont care bout hearing the drink pour )
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true,
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_player',
            scenario = 'mini@repair'
        },
    }) then
        TriggerServerEvent('bd-irishpubjob:server:makeCoffee')
    else
    end
end)
------------------------------------------------------------------------------------------------------------------------------------
----- | CREATING DRINK MENU | -----
lib.registerContext({
    id = 'irishpub_drink_menu',
    title = 'All Drink Menu',
    options = {
        {
            title = 'Beer',
            description = 'All Beer Drinks',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            menu = 'irishpub_beer_menu',
        },
        {
            title = 'Whiskey',
            description = 'All Whiskey Drinks',
            icon = 'whiskey-glass',
            iconColor = 'White',
            menu = 'irishpub_whiskey_menu',
        },
        {
            title = 'Other',
            description = 'All Other Drinks',
            icon = 'bottle-droplet',
            iconColor = 'Orange',
            menu = 'irishpub_otherdrinks_menu',
        },
    }
})
----- | REGISTERING MENU TO 'OpenDrinkMenu' | -----
RegisterNetEvent('bd-irishpubjob:client:OpenDrinkMenu', function()
    lib.showContext('irishpub_drink_menu')
end)
------------------------------------------------------------------------------------------------------------------------------------
----- | CREATING BEER MENU | -----
lib.registerContext({
    id = 'irishpub_beer_menu',
    title = 'Beer Menu',
    menu = 'irishpub_drink_menu',
    options = {
        {
            title = 'AM Beer',
            description = 'You need Supplies to make AM Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeAMBeer'
        },
        {
            title = 'Dusche Beer',
            description = 'You need Supplies to make Dusche Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeDusche'
        },
        {
            title = 'Logger Beer',
            description = 'You need Supplies to make Logger Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeLogger'
        },
        {
            title = 'Patriot Beer',
            description = 'You need Supplies to make Patriot Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakePatriot'
        },
        {
            title = 'Pisswaser Beer',
            description = 'You need Supplies to make Pisswaser Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakePisswaser'
        },
        {
            title = 'Pisswaser Dark Beer',
            description = 'You need Supplies to make Pisswaser Dark Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakePisswaserDark'
        },
        {
            title = 'Pisswaser Light Beer',
            description = 'You need Supplies to make Pisswaser Light Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakePisswaserLight'
        },
    }
})
RegisterNetEvent('bd-irishpubjob:client:MakeAMBeer', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakeAMBeer')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeDusche', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakeDusche')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeLogger', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakeLogger')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakePatriot', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakePatriot')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakePisswaser', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakePisswaser')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakePisswaserDark', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakePisswaserDark')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakePisswaserLight', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakePisswaserLight')
	else
	end
end)
------------------------------------------------------------------------------------------------------------------------------------
----- | CREATING WHISKEY MENU | -----
lib.registerContext({
    id = 'irishpub_whiskey_menu',
    title = 'Whiskey Menu',
    menu = 'irishpub_drink_menu',
    options = {
        {
            title = 'Scotch Whiskey',
            description = 'You need Supplies to make Scotch Whiskey',
            icon = 'whiskey-glass',
            iconColor = 'Orange',
            event = 'bd-irishpubjob:client:MakeScotchWhiskey'
        },
        {
            title = 'Irish Whiskey',
            description = 'You need Supplies to make Irish Whiskey',
            icon = 'whiskey-glass',
            iconColor = 'Orange',
            event = 'bd-irishpubjob:client:MakeIrishWhiskey'
        },
    }
})
RegisterNetEvent('bd-irishpubjob:client:MakeScotchWhiskey', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakeScotchWhiskey')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeIrishWhiskey', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakeIrishWhiskey')
	else
	end
end)
------------------------------------------------------------------------------------------------------------------------------------
----- | CREATING OTHER DRINK MENU | -----
lib.registerContext({
    id = 'irishpub_otherdrinks_menu',
    title = 'Other Drinks Menu',
    menu = 'irishpub_drink_menu',
    options = {
        {
            title = 'Irish Cream',
            description = 'You need Supplies to make Irish Cream',
            icon = 'wine-glass',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeIrishCream'
        },
        {
            title = 'Irish Cider',
            description = 'You need Supplies to make Irish Cider',
            icon = 'wine-glass',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeCider'
        },
        {
            title = 'Red Wine',
            description = 'You need Supplies to make Red Wine',
            icon = 'wine-glass',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeRedWine'
        },
    }
})
RegisterNetEvent('bd-irishpubjob:client:MakeIrishCream', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakeIrishCream')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeCider', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakeCider')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeRedWine', function()
	if lib.progressCircle({
		duration = 1250,
		position = 'bottom',
		useWhileDead = false,
		canCancel = true,
		disable = {
			move = true,
			car = true,
			combat = true,
		},
		anim = {
			dict = 'mini@repair',
			clip = 'fixing_a_player',
			scenario = 'mini@repair',
		},
	}) then
		TriggerServerEvent('bd-irishpubjob:server:MakeRedWine')
	else
	end
end)