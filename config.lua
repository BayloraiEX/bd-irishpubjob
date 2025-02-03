--[[
  ____              _                 _                       
 | __ )  __ _ _   _| | ___  _ __ __ _(_)                      
 |  _ \ / _` | | | | |/ _ \| '__/ _` | |                      
 | |_) | (_| | |_| | | (_) | | | (_| | |                      
 |____/ \__,_|\__, |_|\___/|_|  \__,_|_|                  _   
 |  _ \  _____|___/___| | ___  _ __  _ __ ___   ___ _ __ | |_ 
 | | | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
 | |_| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
 |____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
                              |_|                             
--]] 
Config = {}
Config.InventorySystem = 'qb' -- Supports 'qb' & 'ox'
Config.TargetSystem = 'qb' -- Supports 'qb' & 'ox' ( Just use ox, its way better )

Config.UseTarget = true -- True = Use Target  | False = Use Polyzones
Config.Jobname = 'irishpub' -- Job required to see target on ped
Config.MinStops = 1 -- Minumum amount of stops that you could have to make | Max is a random number of how many locations in ["supplyroute"] ( DEFAULT BEING 6 so you will get between 1 to 6 stops every route start )
Config.BoxUpperWorth = 15 -- How much the max amount should be per box you pickup | ONLY MATTERS IF HavePayOption is true
Config.BoxLowerWorth = 5 -- How much the lowest amount should be per box you pickup | ONLY MATTERS IF HavePayOption is true
Config.MinBoxesPerStop = 1 -- Minumum amount of boxes at each spot
Config.MaxBoxesPerStop = 3 -- Maximum amount of boxes at each spot
Config.SuppliesAmountMin = 10 -- Minumum amount of supplies to recieve at end of route
Config.SuppliesAmountMax = 50 -- Maximum amount of supplies to recieve at end of route
Config.Vehicle = 'baller' -- Vehicle name used to spawn

----- | TARGET LOCATIONS | -----
Config.Peds = {
    {
        model = 's_m_y_busboy_01',
        coords = vector4(829.0, -112.8, 78.77, 56.03),
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}

Config.Locations = {
    ["pubblip"] = {
        label = "Irish Pub",
        coords = vector3(837.28, -116.46, 79.77),
    },
    ["vehicle"] = {
        label = "Irish Pub Storage",
        coords = { -- parking spot locations to spawn garbage
            [1] = vector4(825.12, -116.2, 80.43, 148.46),
            [2] = vector4(813.99, -118.24, 80.31, 246.81),
        },
    },
    ["supplyroute"] ={
        [1] = {
            name = 'Murrieta Heights Pickup', -- Close to Mirror Park
            coords = vector4(1119.85, -984.65, 46.29, 348.2),
        },
        [2] = {
            name = 'Vespucci Canals/San Andreas Ave Pickup', -- Beside Burgershot
            coords = vector4(-1222.82, -913.18, 12.33, 209.39),
        },
        [3] = {
            name = 'Morningwood Pickup', -- Morningwood/Del Perro
            coords = vector4(-1473.0, -363.22, 40.21, 210.0),
        },
        [4] = {
            name = 'Bahama Mamas Pickup', -- In the back ally
            coords = vector4(-1378.14, -636.11, 28.67, 35.84),
        },
        [5] = {
            name = 'Vanilla Unicorn Pickup', -- In the back ally
            coords = vector4(106.29, -1280.96, 29.26, 191.96),
        },
        [6] = {
            name = 'Banham Canyon Pickup', -- On the Highway
            coords = vector4(-2956.29, 385.59, 15.02, 83.45),
        },
    }
}
