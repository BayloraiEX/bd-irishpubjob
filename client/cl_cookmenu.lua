local QBCore = exports['qb-core']:GetCoreObject()

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
            serverEvent = 'bd-irishpubjob:server:MakeCheeseBurger'
        },
        {
            title = 'Bacon Cheese Burger',
            description = 'You need Supplies to make a Bacon Cheese Burger',
            icon = 'burger',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeBaconCheeseBurger'
        },
        {
            title = 'Chicken Burger',
            description = 'You need Supplies to make a Chicken Burger',
            icon = 'burger',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeChickenBurger'
        },
        {
            title = 'Bacon Chicken Burger',
            description = 'You need Supplies to make a Bacon Chicken Burger',
            icon = 'burger',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeBaconChickenBurger'
        },
        {
            title = 'Steak Burger',
            description = 'You need Supplies to make a Steak Burger',
            icon = 'burger',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeSteakBurger'
        },
        {
            title = 'Steak Sandwich',
            description = 'You need Supplies to make a Steak Sandwich',
            icon = 'bread-slice',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeSteakSandwich'
        },
    }
})

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
            serverEvent = 'bd-irishpubjob:server:MakeChickenStrips'
        },
        {
            title = 'Honey Lemon Wings',
            description = 'You need Supplies to make Honey Lemon Chicken Wings',
            icon = 'drumstick-bite',
            iconColor = 'Orange',
            serverEvent = 'bd-irishpubjob:server:MakeLemonChickenWings'
        },
        {
            title = 'Spicy Buffalo Wings',
            description = 'You need Supplies to make Buffalo Chicken Wings',
            icon = 'drumstick-bite',
            iconColor = 'Orange',
            serverEvent = 'bd-irishpubjob:server:MakeBuffaloChickenWings'
        },
        {
            title = 'Spicy Sriracha Wings',
            description = 'You need Supplies to make Sriracha Chicken Wings',
            icon = 'drumstick-bite',
            iconColor = 'Orange',
            serverEvent = 'bd-irishpubjob:server:MakeSrirachaChickenWings'
        },
    }
})

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
            serverEvent = 'bd-irishpubjob:server:MakeBaconCheeseFries'
        },
        {
            title = 'Bacon Ranch Chili Cheese Fries',
            description = 'You need Supplies to make Bacon Ranch Chili Cheese Fries',
            icon = 'hand',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeBaconRanchChiliCheeseFries'
        },
        {
            title = 'Poutine',
            description = 'You need Supplies to make Poutine',
            icon = 'hand',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakePoutine'
        },
        {
            title = 'Curly Fries',
            description = 'You need Supplies to make Curly Fries',
            icon = 'hand',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeCurlyFries'
        },
        {
            title = 'Fries',
            description = 'You need Supplies to make Fries',
            icon = 'hand',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeFries'
        },
        {
            title = 'Onion Rings',
            description = 'You need Supplies to make Onion Rings',
            icon = 'hand',
            iconColor = 'LightGreen',
            serverEvent = 'bd-irishpubjob:server:MakeOnion Rings'
        },
    }
})

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
            serverEvent = 'bd-irishpubjob:server:MakeLoadedNachos'
        },
        {
            title = 'Nachos',
            description = 'You need Supplies to make Nachos',
            icon = 'hand',
            iconColor = 'Orange',
            serverEvent = 'bd-irishpubjob:server:MakeNachos'
        },
    }
})