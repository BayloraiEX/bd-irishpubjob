local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'qb' then
	exports['qb-target']:AddBoxZone("IrishPubRegister", vector3(834.42, -115.83, 79.77), 0.9, 0.9, {
		name = "IrishPubRegister",
		heading = 347.27,
		debugPoly = false,
		minZ = 79.77 - 2,
		maxZ = 79.77 + 2,
	}, {
		options = {
			{
				type = "client",
				event = "bd-irishpubjob:client:bill",
				icon = "fa-solid fa-cash-register",
				label = "Register",
				job = "irishpub",
			},
		},
		distance = 2.5
	})
elseif Config.TargetSystem == 'ox' then
	exports.ox_target:addBoxZone({
		coords = vector4(834.64, -115.63, 79.79, 329.9),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'irishpub_register',
				event = 'bd-irishpubjob:client:bill',
				icon = 'fa-solid fa-cash-register',
				label = 'Register',
				groups = {
					Config.Jobname
				},
			},
		}
	})
end

RegisterNetEvent("bd-irishpubjob:client:bill", function()
    local bill = lib.inputDialog('Register', {
        {type = 'input', label = 'Citizen ID', description = 'Players Citizen ID', icon = 'hashtag'},
        {type = 'number', label = 'Bill Price', description = 'The Bills Total Price', icon = 'dollar-sign'}
    })
    if bill ~= nil then
        if bill[1] == nil or bill[2] == nil then
            return
        end
        TriggerServerEvent('bd-irishpubjob:server:billPlayer', bill[1], bill[2])
    end
end)

RegisterNetEvent("bd-irishpubjob:client:BillAlert", function()
	local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
	
	local registerAlert = lib.alertDialog(billed.PlayerData.source, {
		header = 'Irish Pub Register',
		content = 'Would you like to confirm or deny this purchase?',
		centered = true,
		cancel = true,
		labels = {
			confirm = 'Confirm',
			cancel = 'Deny'
		},
	})
	if registerAlert  == 'confirm' then
		lib.notify(source, {
			id = 'irish_pub',
			title = 'Irish Pub',
			description = 'You charged a customer.',
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
		lib.notify(billed.PlayerData.source, {
			id = 'irish_pub',
			title = 'Irish Pub',
			description = 'You have been charged $'..amount..' for your order.',
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
		exports['qb-banking']:AddMoney('irishpub', amount, 'Sale')
	elseif registerAlert == 'cancel' then
		lib.notify(source, {
			id = 'irish_pub',
			title = 'Irish Pub',
			description = 'Customer has declined bill.',
			showDuration = false,
			position = 'bottom-right',
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
		lib.notify(billed.PlayerData.source, {
			id = 'irish_pub',
			title = 'Irish Pub',
			description = 'You have declined the bill.',
			showDuration = false,
			position = 'bottom-right',
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
