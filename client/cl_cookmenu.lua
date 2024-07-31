local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'ox' then
    ----- | CREATING COOK MENU LOCATION | -----
	exports.ox_target:addBoxZone({
		coords = vector4(826.19, -108.93, 79.81, 332.13),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'IrishPubCookMenu',
				event = 'bd-irishpubjob:client:OpenCookMenu',
				icon = 'fa-solid fa-fire-burner',
				label = 'Cook Menu',
				groups = {
					irishpub = 0
				},
			},
		}
	})
elseif Config.TargetSystem == 'qb' then
    ----- | CREATING COOK MENU LOCATION | -----
    exports['qb-target']:AddBoxZone("IrishPubCookMenu", vector3(826.36, -108.98, 79.77), 0.9, 0.9, {
        name = "IrishPubCookMenu",
        heading = 35.39,
        debugPoly = false,
        minZ = 79.77 - 2,
        maxZ = 79.77 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-irishpubjob:client:OpenCookMenu",
                icon = "fa-solid fa-fire-burner",
                label = "Cook Menu",
                job = "irishpub",
            },
        },
        distance = 2.5
    })
end
----- | CREATING MAIN MENU | -----
lib.registerContext({
    id = 'irishpub_cook_menu',
    title = 'Main Menu',
    options = {
        {
            title = 'Burgers',
            description = 'All Types Of Burgers',
            icon = 'burger',
            iconColor = 'LightGreen',
            menu = 'irishpub_burger_menu'
        },
        {
            title = 'Chicken',
            description = 'All Types Of Chicken',
            icon = 'drumstick-bite',
            iconColor = 'White',
            menu = 'irishpub_chicken_menu'
        },
        {
            title = 'Fries',
            description = 'All Types Of Fries',
            icon = 'hand',
            iconColor = 'White',
            menu = 'irishpub_fries_menu'
        },
        {
            title = 'Nachos',
            description = 'All Types Of Nachos',
            icon = 'hand',
            iconColor = 'Orange',
            menu = 'irishpub_nacho_menu'
        }
    }
})
----- | REGISTERING MENU TO 'OpenCookMenu' | -----
RegisterNetEvent('bd-irishpubjob:client:OpenCookMenu', function()
    lib.showContext('irishpub_cook_menu')
end)
---------------------------------------------------------------------------------------------------------------------------------------------------------------
if Config.InventorySystem == 'qs' then
	RegisterNetEvent('bd-irishpubjob:client:MakeCheeseBurger', function()
		local ingredients = QBCore.Functions.HasItem({'ip_supplies'})
		if ingredients then
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
				TriggerServerEvent('bd-irishpubjob:server:MakeCheeseBurger')
			else
				lib.notify({
					id = 'irish_pub',
					title = 'Irish Pub',
					description = 'Turned off the grill',
					showDuration = false,
					position = 'top',
					style = {
						backgroundColor = '#141517',
						color = '#228B22',
						['.description'] = {
						  color = '#909296'
						}
					},
					icon = 'bottle-droplet',
					iconColor = '#228B22'
				})
			end
		else
			lib.notify({
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Cheese Burger',
                showDuration = false,
                position = 'top',
                style = {
                    backgroundColor = '#141517',
                    color = '#228B22',
                    ['.description'] = {
                      color = '#909296'
                    }
                },
                icon = 'bottle-droplet',
                iconColor = '#228B22'
            })
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------
----- | CREATING BURGERS MENU | -----
lib.registerContext({
    id = 'irishpub_burger_menu',
    title = 'Burger Menu',
    menu = 'irishpub_cook_menu',
    options = {
        {
            title = 'Cheese Burger',
            description = 'You need Supplies to make a Cheese Burger',
            icon = 'burger',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeCheeseBurger'
        },
        {
            title = 'Bacon Cheese Burger',
            description = 'You need Supplies to make a Bacon Cheese Burger',
            icon = 'burger',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeBaconCheeseBurger'
        },
        {
            title = 'Chicken Burger',
            description = 'You need Supplies to make a Chicken Burger',
            icon = 'burger',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeChickenBurger'
        },
        {
            title = 'Bacon Chicken Burger',
            description = 'You need Supplies to make a Bacon Chicken Burger',
            icon = 'burger',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeBaconChickenBurger'
        },
        {
            title = 'Steak Burger',
            description = 'You need Supplies to make a Steak Burger',
            icon = 'burger',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeSteakBurger'
        },
        {
            title = 'Steak Sandwich',
            description = 'You need Supplies to make a Steak Sandwich',
            icon = 'bread-slice',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeSteakSandwich'
        },
    }
})
RegisterNetEvent('bd-irishpubjob:client:MakeCheeseBurger', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeCheeseBurger')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeBaconCheeseBurger', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeBaconCheeseBurger')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeChickenBurger', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeChickenBurger')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeBaconChickenBurger', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeBaconChickenBurger')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeSteakBurger', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeSteakBurger')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeSteakSandwich', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeSteakSandwich')
	else
	end
end)
--------------------------------------------------------------------------------------------------------------
----- | CREATING CHICKEN MENU | -----
lib.registerContext({
    id = 'irishpub_chicken_menu',
    title = 'Chicken Menu',
    menu = 'irishpub_cook_menu',
    options = {
        {
            title = 'Chicken Strips',
            description = 'You need Supplies to make Chicken Strips',
            icon = 'drumstick-bite',
            iconColor = 'Orange',
            event = 'bd-irishpubjob:client:MakeChickenStrips'
        },
        {
            title = 'Honey Lemon Wings',
            description = 'You need Supplies to make Honey Lemon Chicken Wings',
            icon = 'drumstick-bite',
            iconColor = 'Orange',
            event = 'bd-irishpubjob:client:MakeLemonChickenWings'
        },
        {
            title = 'Spicy Buffalo Wings',
            description = 'You need Supplies to make Buffalo Chicken Wings',
            icon = 'drumstick-bite',
            iconColor = 'Orange',
            event = 'bd-irishpubjob:client:MakeBuffaloChickenWings'
        },
        {
            title = 'Spicy Sriracha Wings',
            description = 'You need Supplies to make Sriracha Chicken Wings',
            icon = 'drumstick-bite',
            iconColor = 'Orange',
            event = 'bd-irishpubjob:client:MakeSrirachaChickenWings'
        },
    }
})
RegisterNetEvent('bd-irishpubjob:client:MakeChickenStrips', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeChickenStrips')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeLemonChickenWings', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeLemonChickenWings')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeBuffaloChickenWings', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeBuffaloChickenWings')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeSrirachaChickenWings', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeSrirachaChickenWings')
	else
	end
end)
--------------------------------------------------------------------------------------------------------------
----- | CREATING FRIES MENU | -----
lib.registerContext({
    id = 'irishpub_fries_menu',
    title = 'Fries Menu',
    menu = 'irishpub_cook_menu',
    options = {
        {
            title = 'Bacon Cheese Fries',
            description = 'You need Supplies to make Bacon Cheese Fries',
            icon = 'hand',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeBaconCheeseFries'
        },
        {
            title = 'Bacon Ranch Chili Cheese Fries',
            description = 'You need Supplies to make Bacon Ranch Chili Cheese Fries',
            icon = 'hand',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeBaconRanchChiliCheeseFries'
        },
        {
            title = 'Poutine',
            description = 'You need Supplies to make Poutine',
            icon = 'hand',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakePoutine'
        },
        {
            title = 'Curly Fries',
            description = 'You need Supplies to make Curly Fries',
            icon = 'hand',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeCurlyFries'
        },
        {
            title = 'Fries',
            description = 'You need Supplies to make Fries',
            icon = 'hand',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeFries'
        },
        {
            title = 'Onion Rings',
            description = 'You need Supplies to make Onion Rings',
            icon = 'hand',
            iconColor = 'LightGreen',
            event = 'bd-irishpubjob:client:MakeOnionRings'
        },
    }
})
RegisterNetEvent('bd-irishpubjob:client:MakeBaconCheeseFries', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeBaconCheeseFries')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeBaconRanchChiliCheeseFries', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeBaconRanchChiliCheeseFries')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakePoutine', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakePoutine')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeCurlyFries', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeCurlyFries')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeFries', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeFries')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeOnionRings', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeOnionRings')
	else
	end
end)
--------------------------------------------------------------------------------------------------------------
----- | CREATING NACHO MENU | -----
lib.registerContext({
    id = 'irishpub_nacho_menu',
    title = 'Nacho Menu',
    menu = 'irishpub_cook_menu',
    options = {
        {
            title = 'Fully Loaded Nachos',
            description = 'You need Supplies to make Fully Loaded Nachos',
            icon = 'hand',
            iconColor = 'Orange',
            event = 'bd-irishpubjob:client:MakeLoadedNachos'
        },
        {
            title = 'Nachos',
            description = 'You need Supplies to make Nachos',
            icon = 'hand',
            iconColor = 'Orange',
            event = 'bd-irishpubjob:client:MakeNachos'
        },
    }
})
RegisterNetEvent('bd-irishpubjob:client:MakeLoadedNachos', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeLoadedNachos')
	else
	end
end)
RegisterNetEvent('bd-irishpubjob:client:MakeNachos', function()
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
		TriggerServerEvent('bd-irishpubjob:server:MakeNachos')
	else
	end
end)
