local QBCore = exports['qb-core']:GetCoreObject()

----- | CREATING INVENTORIES | -----
-- 1 --
exports['qb-target']:AddBoxZone("IrishPubTray1", vector3(838.96, -117.04, 79.77), 0.9, 0.9, {
	name = "IrishPubTray1",
	heading = 347.27,
	debugPoly = false,
	minZ = 79.77 - 2,
	maxZ = 79.77 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-irishpubjob:client:Tray1",
			icon = "fa-solid fa-equals",
			label = "Bar Counter",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-irishpubjob:client:Tray1", function()
    TriggerServerEvent('bd-irishpubjob:server:Tray1')
end)

-- 2 --
exports['qb-target']:AddBoxZone("IrishPubTray2", vector3(836.76, -114.24, 79.77), 0.9, 0.9, {
	name = "IrishPubTray2",
	heading = 347.27,
	debugPoly = false,
	minZ = 79.77 - 2,
	maxZ = 79.77 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-irishpubjob:client:Tray2",
			icon = "fa-solid fa-equals",
			label = "Bar Counter",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-irishpubjob:client:Tray2", function()
    TriggerServerEvent('bd-irishpubjob:server:Tray2')
end)

-- FRIDGE --
exports['qb-target']:AddBoxZone("IrishPubFridge", vector3(826.52, -111.17, 79.77), 0.9, 0.9, {
	name = "IrishPubFridge",
	heading = 347.27,
	debugPoly = false,
	minZ = 79.77 - 2,
	maxZ = 79.77 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-irishpubjob:client:Fridge",
			icon = "fa-solid fa-temperature-empty",
			label = "Fridge",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-irishpubjob:client:Fridge", function()
    TriggerServerEvent('bd-irishpubjob:server:Fridge')
end)

-- KEGS --
exports['qb-target']:AddBoxZone("IrishPubKegStorage", vector3(828.39, -115.04, 80.43), 0.9, 0.9, {
	name = "IrishPubKegStorage",
	heading = 347.27,
	debugPoly = false,
	minZ = 80.43 - 2,
	maxZ = 80.43 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-irishpubjob:client:KegStorage",
			icon = "fa-solid fa-database",
			label = "Keg",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-irishpubjob:client:KegStorage", function()
    TriggerServerEvent('bd-irishpubjob:server:KegStorage')
end)

-- SHELF --
exports['qb-target']:AddBoxZone("IrishPubShelfStorage", vector3(826.3, -118.86, 80.43), 0.9, 0.9, {
	name = "IrishPubShelfStorage",
	heading = 347.27,
	debugPoly = false,
	minZ = 80.43 - 2,
	maxZ = 80.43 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-irishpubjob:client:ShelfStorage",
			icon = "fa-solid fa-boxes-stacked",
			label = "Shelf Storage",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-irishpubjob:client:ShelfStorage", function()
    TriggerServerEvent('bd-irishpubjob:server:ShelfStorage')
end)

-- HEATER --
exports['qb-target']:AddBoxZone("IrishPubHeater", vector3(829.47, -110.46, 79.77), 0.9, 0.9, {
	name = "IrishPubHeater",
	heading = 347.27,
	debugPoly = false,
	minZ = 79.77 - 2,
	maxZ = 79.77 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-irishpubjob:client:HeaterStorage",
			icon = "fa-solid fa-temperature-high",
			label = "Heater",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-irishpubjob:client:HeaterStorage", function()
    TriggerServerEvent('bd-irishpubjob:server:HeaterStorage')
end)