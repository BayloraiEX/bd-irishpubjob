fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Baylorai Development'
description 'QBCore Irish Pub Job using ox_lib'
version '0.0.1'

shared_scripts {
	'@ox_lib/init.lua',
	'@qb-core/shared/locale.lua',
	'config.lua'
}

client_script {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',
	'client/*.lua'
}

server_script 'server/*.lua'
