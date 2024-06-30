local QBCore = exports['qb-core']:GetCoreObject()

----- | CREATING INVENTORYS | -----
----- | BAR COUNTER | -----
RegisterNetEvent('bd-irishpubjob:server:Tray1', function(Tray1)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'IrishPub Counter'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 50000,
            slots = 15,
        })
    end
end)

----- | BAR COUNTER | -----
RegisterNetEvent('bd-irishpubjob:server:Tray2', function(Tray2)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'IrishPub Counter 2'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 50000,
            slots = 15,
        })
    end
end)

----- | FRIDGE | -----
RegisterNetEvent('bd-irishpubjob:server:Fridge', function(Fridge)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'IrishPub Fridge'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 750000,
            slots = 50,
        })
    end
end)

----- | KEG | -----
RegisterNetEvent('bd-irishpubjob:server:KegStorage', function(KegStorage)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'IrishPub Keg'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 750000,
            slots = 50,
        })
    end
end)

----- | SHELF STORAGE | -----
RegisterNetEvent('bd-irishpubjob:server:ShelfStorage', function(ShelfStorage)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'IrishPub Shelf Storage'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 1000000,
            slots = 75,
        })
    end
end)

----- | HEATER | -----
RegisterNetEvent('bd-irishpubjob:server:HeaterStorage', function(HeaterStorage)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'IrishPub Heater'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 250000,
            slots = 25,
        })
    end
end)
