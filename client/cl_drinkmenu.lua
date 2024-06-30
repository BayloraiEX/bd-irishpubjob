local QBCore = exports['qb-core']:GetCoreObject()
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
            serverEvent = 'bd-irishpubjob:server:makeCoffee',
        },
    }
})

----- | REGISTERING MENU TO 'OpenCoffeeMenu' | -----
RegisterNetEvent('bd-irishpubjob:client:OpenCoffeeMenu', function()
    lib.showContext('irishpub_coffee_menu')
end)
------------------------------------------------------------------------------------------------------------------------------------
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
            serverEvent = 'bd-irishpubjob:server:MakeAMBeer'
        },
        {
            title = 'Dusche Beer',
            description = 'You need Supplies to make Dusche Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeDusche'
        },
        {
            title = 'Logger Beer',
            description = 'You need Supplies to make Logger Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeDusche'
        },
        {
            title = 'Patriot Beer',
            description = 'You need Supplies to make Patriot Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakePatriot'
        },
        {
            title = 'Pisswaser Beer',
            description = 'You need Supplies to make Pisswaser Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakePisswaser'
        },
        {
            title = 'Pisswaser Dark Beer',
            description = 'You need Supplies to make Pisswaser Dark Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakePisswaserDark'
        },
        {
            title = 'Pisswaser Light Beer',
            description = 'You need Supplies to make Pisswaser Light Beer',
            icon = 'beer-mug-empty',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakePisswaserLight'
        },
    }
})
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
            serverEvent = 'bd-irishpubjob:server:MakeScotchWhiskey'
        },
        {
            title = 'Irish Whiskey',
            description = 'You need Supplies to make Irish Whiskey',
            icon = 'whiskey-glass',
            iconColor = 'Orange',
            serverEvent = 'bd-irishpubjob:server:MakeIrishWhiskey'
        },
    }
})
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
            serverEvent = 'bd-irishpubjob:server:MakeIrishCream'
        },
        {
            title = 'Irish Cider',
            description = 'You need Supplies to make Irish Cider',
            icon = 'wine-glass',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeCider'
        },
        {
            title = 'Red Wine',
            description = 'You need Supplies to make Red Wine',
            icon = 'wine-glass',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeRedWine'
        },
    }
})

