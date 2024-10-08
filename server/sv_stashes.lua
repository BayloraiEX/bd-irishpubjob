local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
    -- BAR COUNTER 1 --
    RegisterNetEvent('ox:irishpubTray1', function()
        ox_inventory:RegisterStash('irishpubTray1', 'Counter', 5, 5000, true)
    end)
    -- BAR COUNTER 2 --
    RegisterNetEvent('ox:irishpubTray2', function()
        ox_inventory:RegisterStash('irishpubTray2', 'Counter', 5, 5000, true)
    end)
    -- FRIDGE --
    RegisterNetEvent('ox:irishpubFridge', function()
        ox_inventory:RegisterStash('irishpubFridge', 'Fridge', 50, 750000, true)
    end)
    -- KEG --
    RegisterNetEvent('ox:irishpubKeg', function()
        ox_inventory:RegisterStash('irishpubKeg', 'Keg', 50, 750000, true)
    end)
    -- SHELF STORAGE --
    RegisterNetEvent('ox:irishpubStorage', function()
        ox_inventory:RegisterStash('irishpubStorage', 'Storage', 75, 1000000, true)
    end)
    -- HEATER --
    RegisterNetEvent('ox:irishpubHeater', function()
        ox_inventory:RegisterStash('irishpubHeater', 'Heater', 25, 25000, true)
    end)
elseif Config.InventorySystem == 'qb' then
    -- BAR COUNTER 1 --
    RegisterNetEvent('bd-irishpubjob:server:irishpubTray1', function(irishpubTray1)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'IrishPub Counter'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 50000,
                slots = 5,
            })
        end
    end)
    -- BAR COUNTER 2 --
    RegisterNetEvent('bd-irishpubjob:server:irishpubTray2', function(irishpubTray2)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'IrishPub Counter 2'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 50000,
                slots = 5,
            })
        end
    end)
    -- FRIDGE --
    RegisterNetEvent('bd-irishpubjob:server:irishpubFridge', function(irishpubFridge)
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
    -- KEG --
    RegisterNetEvent('bd-irishpubjob:server:irishpubKeg', function(irishpubKeg)
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
    -- SHELF STORAGE --
    RegisterNetEvent('bd-irishpubjob:server:irishpubStorage', function(irishpubStorage)
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
    -- HEATER --
    RegisterNetEvent('bd-irishpubjob:server:irishpubHeaterStorage', function(irishpubHeaterStorage)
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
end
