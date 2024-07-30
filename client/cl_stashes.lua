local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.TargetSystem == 'ox' then
	-- TRAY 1 --
	exports.ox_target:addBoxZone({
		coords = vector4(839.01, -116.68, 79.67, 151.85),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'irishpub_tray1',
				event = 'bd-irishpubjob:client:irishpubTray1',
				icon = 'fa-solid fa-equals',
				label = 'Counter',
			},
		}
	})
	-- TRAY 2 --
	exports.ox_target:addBoxZone({
		coords = vector4(836.77, -114.07, 79.78, 319.86),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'irishpub_tray2',
				event = 'bd-irishpubjob:client:irishpubTray2',
				icon = 'fa-solid fa-equals',
				label = 'Counter',
			},
		}
	})
	-- FRIDGE --
	exports.ox_target:addBoxZone({
		coords = vector4(826.06, -111.2, 79.76, 329.36),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'irishpub_fridge',
				event = 'bd-irishpubjob:client:irishpubFridge',
				icon = 'fa-solid fa-temperature-empty',
				label = 'Fridge',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	-- KEG STORAGE --
	exports.ox_target:addBoxZone({
		coords = vector4(828.82, -115.11, 80.46, 83.88),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'irishpub_keg',
				event = 'bd-irishpubjob:client:irishpubKeg',
				icon = 'fa-solid fa-database',
				label = 'Keg',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	-- SHELF STORAGE --
	exports.ox_target:addBoxZone({
		coords = vector4(826.28, -118.56, 80.25, 59.94),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'irishpub_storage',
				event = 'bd-irishpubjob:client:irishpubStorage',
				icon = 'fa-solid fa-boxes-stacked',
				label = 'Back Shelf',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	-- HEATER --
	exports.ox_target:addBoxZone({
		coords = vector4(829.48, -110.49, 79.78, 145.6),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'irishpub_heater',
				event = 'bd-irishpubjob:client:irishpubHeaterStorage',
				icon = 'fa-solid fa-temperature-high',
				label = 'Heater',
				groups = {
					Config.Jobname
				},
			},
		}
	})
elseif Config.TargetSystem == 'qb' then
	-- TRAY 1 --
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
				event = "bd-irishpubjob:client:irishpubTray1",
				icon = "fa-solid fa-equals",
				label = "Bar Counter",
			},
		},
		distance = 2.5
	})
	-- TRAY 2 --
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
				event = "bd-irishpubjob:client:irishpubTray2",
				icon = "fa-solid fa-equals",
				label = "Bar Counter",
			},
		},
		distance = 2.5
	})
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
				event = "bd-irishpubjob:client:irishpubFridge",
				icon = "fa-solid fa-temperature-empty",
				label = "Fridge",
				job = Config.Jobname,
			},
		},
		distance = 2.5
	})
	-- KEG STORAGE --
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
				event = "bd-irishpubjob:client:irishpubKeg",
				icon = "fa-solid fa-database",
				label = "Keg",
				job = Config.Jobname,
			},
		},
		distance = 2.5
	})
	-- BACK SHELF --
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
				event = "bd-irishpubjob:client:irishpubStorage",
				icon = "fa-solid fa-boxes-stacked",
				label = "Shelf Storage",
				job = Config.Jobname,
			},
		},
		distance = 2.5
	})
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
				event = "bd-irishpubjob:client:irishpubHeaterStorage",
				icon = "fa-solid fa-temperature-high",
				label = "Heater",
				job = Config.Jobname,
			},
		},
		distance = 2.5
	})
end

if Config.InventorySystem == 'ox' then
	-- TRAY 1 --
	RegisterNetEvent('bd-irishpubjob:client:irishpubTray1', function()
		if ox_inventory:openInventory('stash', 'irishpubTray1') == false then
			TriggerServerEvent('ox:irishpubTray1')
			ox_inventory:openInventory('stash', 'irishpubTray1')
		end
	end)
	-- TRAY 2 --
	RegisterNetEvent('bd-irishpubjob:client:irishpubTray2', function()
		if ox_inventory:openInventory('stash', 'irishpubTray2') == false then
			TriggerServerEvent('ox:irishpubTray2')
			ox_inventory:openInventory('stash', 'irishpubTray2')
		end
	end)
	-- FRIDGE --
	RegisterNetEvent('bd-irishpubjob:client:irishpubFridge', function()
		if ox_inventory:openInventory('stash', 'irishpubFridge') == false then
			TriggerServerEvent('ox:irishpubFridge')
			ox_inventory:openInventory('stash', 'irishpubFridge')
		end
	end)
	-- KEG STORAGE --
	RegisterNetEvent('bd-irishpubjob:client:irishpubKeg', function()
		if ox_inventory:openInventory('stash', 'irishpubKeg') == false then
			TriggerServerEvent('ox:irishpubKeg')
			ox_inventory:openInventory('stash', 'irishpubKeg')
		end
	end)
	-- SELF STORAGE --
	RegisterNetEvent('bd-irishpubjob:client:irishpubStorage', function()
		if ox_inventory:openInventory('stash', 'irishpubStorage') == false then
			TriggerServerEvent('ox:irishpubStorage')
			ox_inventory:openInventory('stash', 'irishpubStorage')
		end
	end)
	-- HEATER --
	RegisterNetEvent('bd-irishpubjob:client:irishpubHeaterStorage', function()
		if ox_inventory:openInventory('stash', 'irishpubHeater') == false then
			TriggerServerEvent('ox:irishpubHeater')
			ox_inventory:openInventory('stash', 'irishpubHeater')
		end
	end)
elseif Config.InventorySystem == 'qb' then
	-- TRAY 1 --
	RegisterNetEvent("bd-irishpubjob:client:irishpubTray1", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubTray1')
	end)
	-- TRAY 2 --
	RegisterNetEvent("bd-irishpubjob:client:irishpubTray2", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubTray2')
	end)
	-- FRIDGE --
	RegisterNetEvent("bd-irishpubjob:client:irishpubFridge", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubFridge')
	end)
	-- KEG STORAGE --
	RegisterNetEvent("bd-irishpubjob:client:irishpubKeg", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubKeg')
	end)
	-- SHELF STORAGE --
	RegisterNetEvent("bd-irishpubjob:client:irishpubStorage", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubStorage')
	end)
	-- HEATER --
	RegisterNetEvent("bd-irishpubjob:client:irishpubHeaterStorage", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubHeaterStorage')
	end)
elseif Config.InventorySystem == 'qs' then
	-- TRAY 1 --
	RegisterNetEvent("bd-irishpubjob:client:irishpubTray1", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubTray1')
	end)
	-- TRAY 2 --
	RegisterNetEvent("bd-irishpubjob:client:irishpubTray2", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubTray2')
	end)
	-- FRIDGE --
	RegisterNetEvent("bd-irishpubjob:client:irishpubFridge", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubFridge')
	end)
	-- KEG STORAGE --
	RegisterNetEvent("bd-irishpubjob:client:irishpubKeg", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubKeg')
	end)
	-- SHELF STORAGE --
	RegisterNetEvent("bd-irishpubjob:client:irishpubStorage", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubStorage')
	end)
	-- HEATER --
	RegisterNetEvent("bd-irishpubjob:client:irishpubHeaterStorage", function()
		TriggerServerEvent('bd-irishpubjob:server:irishpubHeaterStorage')
	end)
end