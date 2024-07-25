# bd-irishpubjob

# QBCORE Job using ox_lib

 Join the Discord for support or questions!
 DISCORD : https://discord.gg/hya9t8XfH8
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Simple and eazy setup!
 Drag bd-irishpubjob into your resource folder and ensure bd-irishpubjob
LOAD AFTER QB-TARGET & INVENTORY
- ensure [qb]
- ensure bd-irishpubjob

Copy and Paste into qb-core --> shared --> items.lua
```
----- | IRISH PUB ITEMS | -----
    ip_ambeer                    = { name = 'ip_ambeer',    label = 'AM Beer',            weight = 25,  type = 'item', image = 'ip_ambeer.png',   unique = false, useable = true, shouldClose = true, description = 'Nothing like a good cold beer!'},
    ip_bacon_cheeseburger        = { name = 'ip_bacon_cheeseburger',  label = 'Bacon Double Cheese Burger', weight = 100, type = 'item', image = 'ip_bacon_cheeseburger.png', unique = false, useable = true, shouldClose = true, description = 'Double Cheese Burger with Bacon!'},
    ip_bacon_cheesefries         = { name = 'ip_bacon_cheesefries',  label = 'Bacon Cheese Fries', weight = 100, type = 'item', image = 'ip_bacon_cheesefries.png', unique = false, useable = true, shouldClose = true, description = 'Bacon Cheese Fries!! OMG'},
    ip_bacon_chickenburger       = { name = 'ip_bacon_chickenburger',  label = 'Bacon Chicken Burger', weight = 100, type = 'item', image = 'ip_bacon_chickenburger.png', unique = false, useable = true, shouldClose = true, description = 'Chicken Burger with bacon!!!!!'},
    ip_baconranch_chilicheese_fries = { name = 'ip_baconranch_chilicheese_fries',  label = 'Bacon Ranch Chili Cheese Fries', weight = 100, type = 'item', image = 'ip_baconranch_chilicheese_fries.png', unique = false, useable = true, shouldClose = true, description = 'Chili! Bacon! Cheese Fries!'},
    ip_beefdip                   = { name = 'ip_beefdip',  label = 'Beef Dip', weight = 125, type = 'item', image = 'ip_beefdip.png', unique = false, useable = true, shouldClose = true, description = 'Roasted Garlic Beef with an Au Juice Dip'},
    ip_blarneys                  = { name = 'ip_blarneys',  label = 'Irish Cream', weight = 25, type = 'item', image = 'ip_blarneys.png', unique = false, useable = true, shouldClose = true, description = 'Irish Cream Liqueur'},
    ip_canadianpoutine           = { name = 'ip_canadianpoutine',  label = 'Poutine', weight = 50, type = 'item', image = 'ip_canadianpoutine.png', unique = false, useable = true, shouldClose = true, description = 'Hot Gravy poured over freshly made fries with cheese chunks'},
    ip_cheeseburger              = { name = 'ip_cheeseburger',  label = 'Cheese Burger', weight = 125, type = 'item', image = 'ip_cheeseburger.png', unique = false, useable = true, shouldClose = true, description = 'Classic Cheeseburger'},
    ip_chickenburger             = { name = 'ip_chickenburger',  label = 'Chicken Burger', weight = 125, type = 'item', image = 'ip_chickenburger.png', unique = false, useable = true, shouldClose = true, description = 'Classic Chicken Burger'},
    ip_chickenstrips             = { name = 'ip_chickenstrips',  label = 'Chicken Strips', weight = 125, type = 'item', image = 'ip_chickenstrips.png', unique = false, useable = true, shouldClose = true, description = 'Chicken Strips'},
    ip_coffee                    = { name = 'ip_coffee',    label = 'Coffee', weight = 125, type = 'item', image = 'ip_coffee.png', unique = false, useable = true, shouldClose = true, description = 'Irish Pub Special Coffee'},
    ip_curlyfries                = { name = 'ip_curlyfries',  label = 'Curly Fries', weight = 40, type = 'item', image = 'ip_curlyfries.png', unique = false, useable = true, shouldClose = true, description = 'Curly Fries are best fries!'},
    ip_dusche                    = { name = 'ip_dusche',    label = 'Dusche Beer', weight = 25, type = 'item', image = 'ip_dusche.png', unique = false, useable = true, shouldClose = true, description = 'Nothing like a good cold beer!'},
    ip_fries                     = { name = 'ip_fries',  label = 'Fries', weight = 30, type = 'item', image = 'ip_fries.png', unique = false, useable = true, shouldClose = true, description = 'Basic ah fries with ketchup'},
    ip_fullyloaded_nachos        = { name = 'ip_fullyloaded_nachos',  label = 'Fully Loaded Nachos', weight = 150, type = 'item', image = 'ip_fullyloaded_nachos.png', unique = false, useable = true, shouldClose = true, description = 'FULLY LOADED NACHOS N CHEESE'},
    ip_honeylemon_chickenwings   = { name = 'ip_honeylemon_chickenwings',  label = 'Honey Lemon Chicken Wings', weight = 125, type = 'item', image = 'ip_honeylemon_chickenwings.png', unique = false, useable = true, shouldClose = true, description = 'Seasoned with Honey Pepper and Lemon'},
    ip_irishcider                = { name = 'ip_irishcider',  label = 'Irish Cider', weight = 25, type = 'item', image = 'ip_irishcider.png', unique = false, useable = true, shouldClose = true, description = 'Classic Cider'},
    ip_logger                    = { name = 'ip_logger',    label = 'Logger Beer', weight = 25, type = 'item', image = 'ip_logger.png', unique = false, useable = true, shouldClose = true, description = 'Nothing like a good cold beer!'},
    ip_macbeth_scotch_whiskey    = { name = 'ip_macbeth_scotch_whiskey',  label = 'Scotch Whiskey', weight = 25, type = 'item', image = 'ip_macbeth_scotch_whiskey.png', unique = false, useable = true, shouldClose = true, description = 'Scotch Whiskey...'},
    ip_nachos                    = { name = 'ip_nachos',    label = 'Nachos', weight = 75, type = 'item', image = 'ip_nachos.png', unique = false, useable = true, shouldClose = true, description = 'Basic ah Nachos n Cheese'},
    ip_onionrings                = { name = 'ip_onionrings',  label = 'Onion Rings', weight = 30, type = 'item', image = 'ip_onionrings.png', unique = false, useable = true, shouldClose = true, description = 'Make sure to take a mint after'},
    ip_patriotbeer               = { name = 'ip_patriotbeer',  label = 'Patriot Beer', weight = 25, type = 'item', image = 'ip_patriotbeer.png', unique = false, useable = true, shouldClose = true, description = 'Nothing like a good cold beer!'},
    ip_pisswaser                 = { name = 'ip_pisswaser',  label = 'Piss Waser Beer', weight = 25, type = 'item', image = 'ip_pisswaser.png', unique = false, useable = true, shouldClose = true, description = 'Nothing like a good cold beer!'},
    ip_pisswaser1                = { name = 'ip_pisswaser1',  label = 'Piss Waser Beer', weight = 25, type = 'item', image = 'ip_pisswaser1.png', unique = false, useable = true, shouldClose = true, description = 'Nothing like a good cold beer!'},
    ip_pisswaser2                = { name = 'ip_pisswaser2',  label = 'Piss Waser Light Beer', weight = 25, type = 'item', image = 'ip_pisswaser2.png', unique = false, useable = true, shouldClose = true, description = 'Nothing like a good cold beer!'},
    ip_spicybuffalo_chickenwings = { name = 'ip_spicybuffalo_chickenwings',  label = 'Buffalo Chicken Wings', weight = 125, type = 'item', image = 'ip_spicybuffalo_chickenwings.png', unique = false, useable = true, shouldClose = true, description = 'Marinated in Spicy Buffalo Sauce'},
    ip_spicysriracha_chickenwings = { name = 'ip_spicysriracha_chickenwings',  label = 'Sriracha Chicken Wings', weight = 125, type = 'item', image = 'ip_spicysriracha_chickenwings.png', unique = false, useable = true, shouldClose = true, description = 'Marinated in Spicy Sriracha Sauce'},
    ip_steakburger               = { name = 'ip_steakburger',  label = 'Steak Burger', weight = 125, type = 'item', image = 'ip_steakburger.png', unique = false, useable = true, shouldClose = true, description = 'Burger Buns with Steak inside'},
    ip_steaksandwich             = { name = 'ip_steaksandwich',  label = 'Steak Sandwich', weight = 125, type = 'item', image = 'ip_steaksandwich.png', unique = false, useable = true, shouldClose = true, description = 'No its not a phili cheesesteak'},
    ip_tavish_irish_whiskey      = { name = 'ip_tavish_irish_whiskey',  label = 'Irish Whiskey', weight = 25, type = 'item', image = 'ip_tavish_irish_whiskey.png', unique = false, useable = true, shouldClose = true, description = 'Classic Irish Whiskey'},
    ip_wineglass                 = { name = 'ip_wineglass',  label = 'Wine Glass', weight = 15, type = 'item', image = 'ip_wineglass.png', unique = false, useable = true, shouldClose = true, description = 'Red Wine'},
    ip_supplies                  = { name = 'ip_supplies',  label = 'Irish Pub Supplies', weight = 750, type = 'item', image = 'ip_supplies.png', unique = false, useable = false, shouldClose = true, description = 'Supplies for the Irish Pub'},
```
Copy and Paste into qb-core --> shared --> jobs.lua
```
irishpub = {
		label = 'Irish Pub',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Janitor', payment = 30 },
			['1'] = { name = 'Employee', payment = 40 },
			['2'] = { name = 'Sr-Employee', payment = 50 },
			['3'] = { name = 'Ast-Manager', payment = 60 },
			['4'] = { name = 'Manager', isboss = true, payment = 75 },
			['5'] = { name = 'CEO', isboss = true, payment = 90 },
		},
	},
```
Copy and Paste into qb-smallresources --> config.lua
```
Config.Consumables = {
        --IRISH PUB ITEMS--
        ['ip_bacon_cheeseburger'] = math.random(60, 80),
        ['ip_bacon_cheesefries'] = math.random(60, 80),
        ['ip_bacon_chickenburger'] = math.random(60, 80),
        ['ip_baconranch_chilicheese_fries'] = math.random(60, 80),
        ['ip_beefdip'] = math.random(60, 80),
        ['ip_canadian_poutine'] = math.random(60, 80),
        ['ip_cheeseburger'] = math.random(60, 80),
        ['ip_chickenburger'] = math.random(60, 80),
        ['ip_chickenstrips'] = math.random(60, 80),
        ['ip_curlyfries'] = math.random(30, 60),
        ['ip_fries'] = math.random(30, 60),
        ['ip_fullyloaded_nachos'] = math.random(40, 70),
        ['ip_honeylemon_chickenwings'] = math.random(60, 80),
        ['ip_nachos'] = math.random(30, 60),
        ['ip_onionrings'] = math.random(30, 60),
        ['ip_spicybuffalo_chickenwings'] = math.random(60, 80),
        ['ip_spicysriracha_chickenwings'] = math.random(60, 80),
        ['ip_steakburger'] = math.random(60, 80),
        ['ip_steaksandwich'] = math.random(60, 80),
    },
    drink = {
        --IRISH PUB ITEMS--
        ['ip_coffee'] = math.random(50, 70),
    },
    alcohol = {
        --IRISH PUB ITEMS--
        ['ip_ambeer'] = math.random(30, 50),
        ['ip_blarneys'] = math.random(30, 50),
        ['ip_dusche'] = math.random(30, 50),
        ['ip_irishcider'] = math.random(30, 50),
        ['ip_logger'] = math.random(30, 50),
        ['ip_pisswaser'] = math.random(30, 50),
        ['ip_pisswaser1'] = math.random(30, 50),
        ['ip_pisswaser2'] = math.random(30, 50),
        ['ip_wineglass'] = math.random(30, 50),
    },
```

Put the images from the images folder into qb-inventory --> html --> images
and you are done :D

- MLO - https://www.gta5-mods.com/maps/mlo-irish-pub-fivem-altv-sp
