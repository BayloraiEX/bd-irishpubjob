local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory
local Routes = {}

local function CanPay(Player)
    return Player.PlayerData.money['bank'] >= 0
end


QBCore.Functions.CreateCallback('bd-irishpubjob:server:NewShift', function(source, cb, continue)
    local Player = QBCore.Functions.GetPlayer(source)
    local CitizenId = Player.PlayerData.citizenid
    local shouldContinue = false
    local nextStop = 0
    local totalNumberOfStops = 0
    local boxNum = 0

    if CanPay(Player) or continue then
        math.randomseed(os.time())
        local MaxStops = math.random(Config.MinStops, #Config.Locations['supplyroute'])
        local allStops = {}

        for _ = 1, MaxStops do
            local stop = math.random(#Config.Locations['supplyroute'])
            local newBoxAmount = math.random(Config.MinBoxesPerStop, Config.MaxBoxesPerStop)
            allStops[#allStops + 1] = { stop = stop, boxes = newBoxAmount }
        end

        Routes[CitizenId] = {
            stops = allStops,
            currentStop = 1,
            started = true,
            currentDistance = 0,
            actualPay = 0,
            stopsCompleted = 0,
            totalNumberOfStops = #allStops
        }

        nextStop = allStops[1].stop
        shouldContinue = true
        totalNumberOfStops = #allStops
        boxNum = allStops[1].boxes
    else
        --
    end
    cb(shouldContinue, nextStop, boxNum, totalNumberOfStops)
end)

QBCore.Functions.CreateCallback('bd-irishpubjob:server:NextStop', function(source, cb, currentStop, currentStopNum, currLocation)
    local Player = QBCore.Functions.GetPlayer(source)
    local CitizenId = Player.PlayerData.citizenid
    local currStopCoords = Config.Locations['supplyroute'][currentStop].coords
    currStopCoords = vector3(currStopCoords.x, currStopCoords.y, currStopCoords.z)
    local distance = #(currLocation - currStopCoords)
    local newStop = 0
    local shouldContinue = false
    local newBoxAmount = 0

    if distance <= 20 then
        if currentStopNum >= #Routes[CitizenId].stops then
            Routes[CitizenId].stopsCompleted = tonumber(Routes[CitizenId].stopsCompleted) + 1
            newStop = currentStop
        else
            newStop = Routes[CitizenId].stops[currentStopNum + 1].stop
            newBoxAmount = Routes[CitizenId].stops[currentStopNum + 1].boxes
            shouldContinue = true
            local boxAmount = Routes[CitizenId].stops[currentStopNum].boxes
            local totalNewPay = 0

            for _ = 1, boxAmount do
                totalNewPay = totalNewPay + math.random(Config.BoxLowerWorth, Config.BoxUpperWorth)
            end

            Routes[CitizenId].actualPay = math.ceil(Routes[CitizenId].actualPay + totalNewPay)
            Routes[CitizenId].stopsCompleted = tonumber(Routes[CitizenId].stopsCompleted) + 1
        end
    else
        TriggerClientEvent('QBCore:Notify', source, Lang:t('error.too_far'), 'error')
    end
    cb(shouldContinue, newStop, newBoxAmount)
end)

QBCore.Functions.CreateCallback('bd-irishpubjob:server:EndShift', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local CitizenId = Player.PlayerData.citizenid
    local status = false
    if Routes[CitizenId] ~= nil then status = true end
    cb(status)
end)

if Config.InventorySystem == 'ox' then
    RegisterNetEvent('bd-irishpubjob:server:PayShift', function(continue)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local CitizenId = Player.PlayerData.citizenid
        local amount = math.random(Config.SuppliesAmountMin, Config.SuppliesAmountMax)
        if Routes[CitizenId] ~= nil then
            if tonumber(Routes[CitizenId].stopsCompleted) < tonumber(Routes[CitizenId].totalNumberOfStops) then
            end
            if continue then
            end
            local totalToPay = Routes[CitizenId].actualPay
            Player.Functions.AddMoney('bank', totalToPay, 'supplyroute-payslip')
            ox_inventory:AddItem(src, 'ip_supplies', amount)
            lib.notify(src,{
                id = 'irishpub_supplier',
                title = 'Irish Pub Supplier',
                description = 'You got $'..totalToPay..' added to your bank account! & '..amount..' of supplies',
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
            Routes[CitizenId] = nil
        else
            lib.notify(source,{
                id = 'irishpub_supplier',
                title = 'Irish Pub Supplier',
                description = 'You never requested a route!',
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
        end
    end)
elseif Config.InventorySystem == 'qb' then
    RegisterNetEvent('bd-irishpubjob:server:PayShift', function(continue)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local CitizenId = Player.PlayerData.citizenid
        local amount = math.random(Config.SuppliesAmountMin, Config.SuppliesAmountMax)
        if Routes[CitizenId] ~= nil then
            if tonumber(Routes[CitizenId].stopsCompleted) < tonumber(Routes[CitizenId].totalNumberOfStops) then
            end
            if continue then
            end
            local totalToPay = Routes[CitizenId].actualPay
            Player.Functions.AddMoney('bank', totalToPay, 'supplyroute-payslip')
            exports['qb-inventory']:AddItem(src, 'ip_supplies', amount, false, false)
            TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['ip_supplies'], 'add', amount)
            lib.notify(src,{
                id = 'irishpub_supplier',
                title = 'Irish Pub Supplier',
                description = 'You got $'..totalToPay..' added to your bank account! & '..amount..' of supplies',
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
            Routes[CitizenId] = nil
        else
            lib.notify(source,{
                id = 'irishpub_supplier',
                title = 'Irish Pub Supplier',
                description = 'You never requested a route!',
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
        end
    end)
elseif Config.InventorySystem == 'qs' then
    RegisterNetEvent('bd-irishpubjob:server:PayShift', function(continue)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local CitizenId = Player.PlayerData.citizenid
        local amount = math.random(Config.SuppliesAmountMin, Config.SuppliesAmountMax)
        if Routes[CitizenId] ~= nil then
            if tonumber(Routes[CitizenId].stopsCompleted) < tonumber(Routes[CitizenId].totalNumberOfStops) then
            end
            if continue then
            end
            local totalToPay = Routes[CitizenId].actualPay
            Player.Functions.AddMoney('bank', totalToPay, 'supplyroute-payslip')
            exports['qs-inventory']:AddItem(src, 'ip_supplies', amount)
            lib.notify(src,{
                id = 'irishpub_supplier',
                title = 'Irish Pub Supplier',
                description = 'You got $'..totalToPay..' added to your bank account! & '..amount..' of supplies',
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
            Routes[CitizenId] = nil
        else
            lib.notify(source,{
                id = 'irishpub_supplier',
                title = 'Irish Pub Supplier',
                description = 'You never requested a route!',
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
        end
    end)
end
