local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'qb' then
	----- | SETTING THE BOSSMENU TARGET | -----
	exports['qb-target']:AddBoxZone("IrishPubBoss", vector3(830.79, -117.13, 80.43), 0.9, 0.9, {
		name = "IrishPubBoss",
		heading = 347.27,
		debugPoly = false,
		minZ = 80.43 - 2,
		maxZ = 80.43 + 2,
	}, {
		options = {
			{
				type = "client",
				event = "qb-bossmenu:client:OpenMenu",
				icon = "fa-solid fa-right-to-bracket",
				label = "Boss Menu",
				job = {["irishpub"] = 4},
			},
		},
		distance = 2.5
	})
	----- | SETTING THE CLOTHING MENU TARGET | -----
	exports['qb-target']:AddBoxZone("IrishPubClothing", vector3(824.24, -112.29, 80.43), 0.9, 0.9, {
		name = "IrishClothing",
		heading = 347.27,
		debugPoly = false,
		minZ = 80.43 - 2,
		maxZ = 80.43 + 2,
	}, {
		options = {
			{
				type = "client",
				event = "qb-clothing:client:openMenu",
				icon = "fa-solid fa-shirt",
				label = "Changing Lockers",
				job = "irishpub",
			},
		},
		distance = 2.5
	})
	exports['qb-target']:AddBoxZone("IrishPubClock", vector3(825.77, -112.7, 80.43), 0.9, 0.9, {
		name = "IrishPubClock",
		heading = 151.16,
		debugPoly = false,
		minZ = 80.43 - 2,
		maxZ = 80.43 + 2,
	}, {
		options = {
			{
				type = "client",
				event = "bd-irishpubjob:client:ToggleDuty",
				icon = "fa-solid fa-clipboard-user",
				label = "Clock In/Out",
				job = "irishpub"
			},
		},
		distance = 2.5
	})
elseif Config.TargetSystem == 'ox' then
	--  Boss menu --
	exports.ox_target:addBoxZone({
		coords = vector4(830.77, -117.32, 80.43, 134.16),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'irishpub_bossmenu',
				event = 'qb-bossmenu:client:OpenMenu',
				icon = 'fa-solid fa-right-to-bracket',
				label = 'Boss Menu',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	-- Clothing --
	exports.ox_target:addBoxZone({
		coords = vector4(824.47, -112.2, 80.44, 150.67),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'irishpub_clothingmenu',
				event = 'qb-clothing:client:openMenu',
				icon = 'fa-solid fa-shirt',
				label = 'Changing Lockers',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	-- Clock in/out --
	exports.ox_target:addBoxZone({
		coords = vector4(825.85, -113.03, 80.44, 157.07),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'irishpub_clockin',
				event = 'bd-irishpubjob:client:ToggleDuty',
				icon = 'fa-solid fa-clipboard-user',
				label = 'Clock In/Out',
				groups = {
					Config.Jobname
				},
			},
		}
	})
end

RegisterNetEvent('bd-irishpubjob:client:ToggleDuty', function()
	TriggerServerEvent("QBCore:ToggleDuty")
end)
