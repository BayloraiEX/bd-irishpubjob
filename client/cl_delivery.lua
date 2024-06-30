local QBCore = exports['qb-core']:GetCoreObject()
local irishpubVehicle = nil
local hasBox = false
local currentStop = 0
local deliveryBlip = nil
local amountOfBoxes = 0
local irishpubObject = nil
local endBlip = nil
local irishpubBlip = nil
local canTakeBox = true
local currentStopNum = 0
local PZone = nil
local listen = false
local finished = false
local continueworking = false
local playerJob = {}
-- Handlers

-- Functions

local function setupClient()
    irishpubVehicle = nil
    hasBox = false
    currentStop = 0
    deliveryBlip = nil
    amountOfBoxes = 0
    irishpubObject = nil
    endBlip = nil
    currentStopNum = 0
    irishpubBlip = AddBlipForCoord(Config.Locations["pubblip"].coords.x, Config.Locations["pubblip"].coords.y, Config.Locations["pubblip"].coords.z)
        SetBlipSprite(irishpubBlip, 827)
        SetBlipDisplay(irishpubBlip, 4)
        SetBlipScale(irishpubBlip, 0.65)
        SetBlipAsShortRange(irishpubBlip, true)
        SetBlipColour(irishpubBlip, 25)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Locations["pubblip"].label)
        EndTextCommandSetBlipName(irishpubBlip)
end



local function LoadAnimation(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do Wait(10) end
end

local function BringBackCar()
    DeleteVehicle(irishpubVehicle)
    if endBlip then
        RemoveBlip(endBlip)
    end
    if deliveryBlip then
        RemoveBlip(deliveryBlip)
    end
    irishpubVehicle = nil
    hasBox = false
    currentStop = 0
    deliveryBlip = nil
    amountOfBoxes = 0
    irishpubObject = nil
    endBlip = nil
    currentStopNum = 0
end

local function DeleteZone()
    listen = false
    PZone:destroy()
end

local function SetRouteBack()
    local depot = Config.Locations["pubblip"].coords
    endBlip = AddBlipForCoord(depot.x, depot.y, depot.z)
    SetBlipSprite(endBlip, 1)
    SetBlipDisplay(endBlip, 2)
    SetBlipScale(endBlip, 0.8)
    SetBlipAsShortRange(endBlip, false)
    SetBlipColour(endBlip, 17)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.Locations["vehicle"].label)
    EndTextCommandSetBlipName(endBlip)
    SetBlipRoute(endBlip, true)
    DeleteZone()
    finished = true
end

local function AnimCheck()
    CreateThread(function()
        local ped = PlayerPedId()
        while hasBox and not IsEntityPlayingAnim(ped, 'anim@heists@load_box', 'load_box_1',3) do
            if not IsEntityPlayingAnim(ped, 'anim@heists@box_carry@', 'idle', 3) then
                ClearPedTasksImmediately(ped)
                LoadAnimation('anim@heists@load_box')
                TaskPlayAnim(ped, 'anim@heists@box_carry@', 'idle', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
            end
            Wait(1000)
        end
    end)
end

local function DeliverAnim()
    local ped = PlayerPedId()
    LoadAnimation('anim@heists@load_box')
    TaskPlayAnim(ped, 'anim@heists@load_box', 'load_box_1', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
    FreezeEntityPosition(ped, true)
    SetEntityHeading(ped, GetEntityHeading(irishpubVehicle))
    canTakeBox = false
    SetTimeout(1250, function()
        DetachEntity(irishpubObject, 1, false)
        DeleteObject(irishpubObject)
        TaskPlayAnim(ped, 'anim@heists@load_box', 'exit', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
        FreezeEntityPosition(ped, false)
        irishpubObject = nil
        canTakeBox = true
    end)
    if Config.UseTarget and hasBox then
        local CL = Config.Locations["supplyroute"][currentStop]
        hasBox = false
        local pos = GetEntityCoords(ped)
        exports['qb-target']:RemoveTargetEntity(irishpubVehicle)
        if (amountOfBoxes - 1) <= 0 then
            QBCore.Functions.TriggerCallback('bd-irishpubjob:server:NextStop', function(hasMoreStops, nextStop, newBoxAmount)
                if hasMoreStops and nextStop ~= 0 then
                    -- Here is your next location.
                    currentStop = nextStop
                    currentStopNum = currentStopNum + 1
                    amountOfBoxes = newBoxAmount
                    SetSupplyRoute()
                    lib.notify({
                        id = 'irishpub_supplier',
                        title = 'Irish Pub Supplier',
                        description = 'All boxes are loaded, proceed to the next location!',
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
                    SetVehicleDoorShut(irishpubVehicle, 5, false)
                else
                    if hasMoreStops and nextStop == currentStop then
                        lib.notify({
                            id = 'irishpub_supplier',
                            title = 'Irish Pub Supplier',
                            description = 'There was an issue in the warehouse, please return immediately!',
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
                        amountOfBoxes = 0
                    else
                        -- You are done with work here.
                        lib.notify({
                            id = 'irishpub_supplier',
                            title = 'Irish Pub Supplier',
                            description = 'You are done working! Go back to the warehouse',
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
                        SetVehicleDoorShut(irishpubVehicle, 5, false)
                        RemoveBlip(deliveryBlip)
                        SetRouteBack()
                        amountOfBoxes = 0
                    end
                end
            end, currentStop, currentStopNum, pos)
        else
            -- You haven't delivered all boxes here
            amountOfBoxes = amountOfBoxes - 1
            if amountOfBoxes > 1 then
                lib.notify({
                    id = 'irishpub_supplier',
                    title = 'Irish Pub Supplier',
                    description = 'There are still '..amountOfBoxes..' boxes left!',
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
            else
                lib.notify({
                    id = 'irishpub_supplier',
                    title = 'Irish Pub Supplier',
                    description = 'There is still '..amountOfBoxes..' boxes over there!',
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
            exports['qb-target']:AddCircleZone('boxcrate', vector3(CL.coords.x, CL.coords.y, CL.coords.z), 2.0,{
                name = 'boxcrate', debugPoly = false, useZ=true}, {
                options = {{label = 'Grab supply box', icon = 'fa-solid fa-box', action = function() TakeAnim() end}},
                distance = 2.0
            })
        end
    end
end


function TakeAnim()
    local ped = PlayerPedId()
    if lib.progressCircle({
        duration = 2000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true,
            combat = true,
        },
        anim = {
            dict = 'anim@heists@load_box',
            scenario = 'anim@heists@load_box',
            clip = 'lift_box'
        },
    })
    then -- if progressCircle is going then
        -- do this
        LoadAnimation('anim@heists@box_carry@')
        TaskPlayAnim(ped, 'anim@heists@box_carry@', 'idle', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
        irishpubObject = CreateObject(`prop_cardbordbox_02a`, 0, 0, 0, true, true, true)
        AttachEntityToEntity(irishpubObject, ped, GetPedBoneIndex(ped, 57005), 0.25, -0.01, -0.2, 112.71, 85.0, -200.88, true, true, false, true, 1, true)
        StopAnimTask(PlayerPedId(), "anim@heists@load_box", "lift_box", 1.0)
        AnimCheck()
        if Config.UseTarget and not hasBox then
            hasBox = true
            exports['qb-target']:RemoveZone("boxcrate")
            exports['qb-target']:AddTargetEntity(irishpubVehicle, {
            options = {
                {label = 'Load Supplies',icon = 'fa-solid fa-truck',action = function() DeliverAnim() end,canInteract = function() if hasBox then return true end return false end, }
            },
            distance = 2.0
            })
        end
    else
        StopAnimTask(PlayerPedId(), "anim@heists@load_box", "lift_box", 1.0)
        lib.notify({
            id = 'irishpub_supplier',
            title = 'Irish Pub Supplier',
            description = 'Canceled',
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
    end -- ending the if lib
end -- ending take animation

local function RunWorkLoop()
    CreateThread(function()
        local GarbText = false
        while listen do
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local DeliveryData = Config.Locations["supplyroute"][currentStop]
            local Distance = #(pos - vector3(DeliveryData.coords.x, DeliveryData.coords.y, DeliveryData.coords.z))
            if Distance < 15 or hasBox then

                if not hasBox and canTakeBox then
                    if Distance < 1.5 then
                        if not GarbText then
                            GarbText = true
                            exports['qb-core']:DrawText('Grab supply box', 'left')
                        end
                        if IsControlJustPressed(0, 51) then
                            hasBox = true
                            exports['qb-core']:HideText()
                            TakeAnim()
                        end
                    elseif Distance < 10 then
                        if GarbText then
                            GarbText = false
                            exports['qb-core']:HideText()
                        end
                    end
                else
                    if DoesEntityExist(irishpubVehicle) then
                        local Coords = GetOffsetFromEntityInWorldCoords(irishpubVehicle, 0.0, -4.5, 0.0)
                        local TruckDist = #(pos - Coords)
                        local TrucText = false

                        if TruckDist < 2 then
                            if not TrucText then
                                TrucText = true
                                exports['qb-core']:DrawText('Load Supplies', 'left')
                            end
                            if IsControlJustPressed(0, 51) and hasBox then
                                StopAnimTask(PlayerPedId(), 'anim@heists@box_carry@', 'walk', 1.0)
                                DeliverAnim()
                                QBCore.Functions.Progressbar("deliverbag", Lang:t("info.progressbar"), 2000, false, true, {
                                        disableMovement = true,
                                        disableCarMovement = true,
                                        disableMouse = false,
                                        disableCombat = true,
                                    }, {}, {}, {}, function() -- Done
                                        hasBox = false
                                        canTakeBox = false
                                        DetachEntity(irishpubObject, 1, false)
                                        DeleteObject(irishpubObject)
                                        FreezeEntityPosition(ped, false)
                                        irishpubObject = nil
                                        canTakeBox = true
                                        -- Looks if you have delivered all boxes
                                        if (amountOfBoxes - 1) <= 0 then
                                            QBCore.Functions.TriggerCallback('bd-irishpubjob:server:NextStop', function(hasMoreStops, nextStop, newBoxAmount)
                                                if hasMoreStops and nextStop ~= 0 then
                                                    -- Here is your next location
                                                    currentStop = nextStop
                                                    currentStopNum = currentStopNum + 1
                                                    amountOfBoxes = newBoxAmount
                                                    SetSupplyRoute()
                                                    lib.notify({
                                                        id = 'irishpub_supplier',
                                                        title = 'Irish Pub Supplier',
                                                        description = 'All boxes loaded! Procced to next location',
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
                                                    listen = false
                                                    SetVehicleDoorShut(irishpubVehicle, 5, false)
                                                else
                                                    if hasMoreStops and nextStop == currentStop then
                                                        lib.notify({
                                                            id = 'irishpub_supplier',
                                                            title = 'Irish Pub Supplier',
                                                            description = 'There is an issue at the warehouse, please return immediately!',
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
                                                        amountOfBoxes = 0
                                                    else
                                                        -- You are done with work here.
                                                        lib.notify({
                                                            id = 'irishpub_supplier',
                                                            title = 'Irish Pub Supplier',
                                                            description = 'You are done working! Go back to the warehouse',
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
                                                        SetVehicleDoorShut(irishpubVehicle, 5, false)
                                                        RemoveBlip(deliveryBlip)
                                                        SetRouteBack()
                                                        amountOfBoxes = 0
                                                        listen = false
                                                    end
                                                end
                                            end, currentStop, currentStopNum, pos)
                                            hasBox = false
                                        else
                                            -- You haven't delivered all boxes here
                                            amountOfBoxes = amountOfBoxes - 1
                                            if amountOfBoxes > 1 then
                                                lib.notify({
                                                    id = 'irishpub_supplier',
                                                    title = 'Irish Pub Supplier',
                                                    description = 'There is '..amountOfBoxes..' boxes left',
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
                                            else
                                                lib.notify({
                                                    id = 'irishpub_supplier',
                                                    title = 'Irish Pub Supplier',
                                                    description = 'There is still '..amountOfBoxes..' boxes',
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
                                            hasBox = false
                                        end

                                        Wait(1500)
                                        if TrucText then
                                            exports['qb-core']:HideText()
                                            TrucText = false
                                        end
                                    end, function() -- Cancel
                                    lib.notify({
                                        id = 'irishpub_supplier',
                                        title = 'Irish Pub Supplier',
                                        description = 'Canceled',
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
                                end)

                            end
                        end
                    else
                        lib.notify({
                            id = 'irishpub_supplier',
                            title = 'Irish Pub Supplier',
                            description = 'You have no truck!',
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
                        hasBox = false
                    end
                end
            end
            Wait(1)
        end
    end)
end

local function CreateZone(x, y, z)
    CreateThread(function()
        PZone = CircleZone:Create(vector3(x, y, z), 15.0, {
            name = "NewRouteWhoDis",
            debugPoly = false,
        })

        PZone:onPlayerInOut(function(isPointInside)
            if isPointInside then
                if not Config.UseTarget then
                    listen = true
                    RunWorkLoop()
                end
                SetVehicleDoorOpen(irishpubVehicle,5,false,false)
            else
                if not Config.UseTarget then
                    exports['qb-core']:HideText()
                    listen = false
                end
                SetVehicleDoorShut(irishpubVehicle, 5, false)
            end
        end)
    end)
end

function SetSupplyRoute()
    local CL = Config.Locations["supplyroute"][currentStop]
    if deliveryBlip then
        RemoveBlip(deliveryBlip)
    end
    deliveryBlip = AddBlipForCoord(CL.coords.x, CL.coords.y, CL.coords.z)
    SetBlipSprite(deliveryBlip, 478)
    SetBlipDisplay(deliveryBlip, 2)
    SetBlipScale(deliveryBlip, 0.8)
    SetBlipAsShortRange(deliveryBlip, false)
    SetBlipColour(deliveryBlip, 25)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.Locations["supplyroute"][currentStop].name)
    EndTextCommandSetBlipName(deliveryBlip)
    SetBlipRoute(deliveryBlip, true)
    finished = false
    if Config.UseTarget and not hasBox then
        exports['qb-target']:AddCircleZone('boxcrate', vector3(CL.coords.x, CL.coords.y, CL.coords.z), 2.0,{
            name = 'boxcrate', debugPoly = false, useZ=true }, {
            options = {{label = 'Grab supply box', icon = 'fa-solid fa-box', action = function() TakeAnim() end }},
            distance = 2.0
        })
    end
    if PZone then
        DeleteZone()
        Wait(500)
        CreateZone(CL.coords.x, CL.coords.y, CL.coords.z)
    else
        CreateZone(CL.coords.x, CL.coords.y, CL.coords.z)
    end
end

local ControlListen = false
local function Listen4Control()
    ControlListen = true
    CreateThread(function()
        while ControlListen do
            if IsControlJustReleased(0, 38) then
                TriggerEvent("bd-irishpubjob:client:StartMenu")
            end
            Wait(1)
        end
    end)
end

local pedsSpawned = false
local function spawnPeds()
    if not Config.Peds or not next(Config.Peds) or pedsSpawned then return end
    for i = 1, #Config.Peds do
        local current = Config.Peds[i]
        current.model = type(current.model) == 'string' and GetHashKey(current.model) or current.model
        RequestModel(current.model)
        while not HasModelLoaded(current.model) do
            Wait(0)
        end
        local ped = CreatePed(0, current.model, current.coords, false, false)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        current.pedHandle = ped

        if Config.UseTarget then
            exports['qb-target']:AddTargetEntity(ped, {
                options = {{type = "client", event = "bd-irishpubjob:client:StartMenu", label = 'Talk To Supplier', icon = 'fa-solid fa-truck-ramp-box', job = Config.Jobname}},
                distance = 2.0
            })
        else
            local options = current.zoneOptions
            if options then
                local zone = BoxZone:Create(current.coords.xyz, options.length, options.width, {
                    name = "zone_cityhall_" .. ped,
                    heading = current.coords.w,
                    debugPoly = false
                })
                zone:onPlayerInOut(function(inside)
                    if LocalPlayer.state.isLoggedIn then
                        if inside then
                            exports['qb-core']:DrawText('[E] Talk to IrishPub Supplier', 'left')
                            Listen4Control()
                        else
                            ControlListen = false
                            exports['qb-core']:HideText()
                        end
                    end
                end)
            end
        end
    end
    pedsSpawned = true
end

local function deletePeds()
    if not Config.Peds or not next(Config.Peds) or not pedsSpawned then return end
    for i = 1, #Config.Peds do
        local current = Config.Peds[i]
        if current.pedHandle then
            DeletePed(current.pedHandle)
        end
    end
end

-- Events

RegisterNetEvent('bd-irishpubjob:client:SetWaypointHome', function()
    SetNewWaypoint(Config.Locations["pubblip"].coords.x, Config.Locations["pubblip"].coords.y)
end)

RegisterNetEvent('bd-irishpubjob:client:RequestRoute', function()
    if irishpubVehicle then continueworking = true TriggerServerEvent('bd-irishpubjob:server:PayShift', continueworking) end
    QBCore.Functions.TriggerCallback('bd-irishpubjob:server:NewShift', function(shouldContinue, firstStop, totalBoxes)
        if shouldContinue then
            if not irishpubVehicle then
                local occupied = false
                for _,v in pairs(Config.Locations["vehicle"].coords) do
                    if not IsAnyVehicleNearPoint(vector3(v.x,v.y,v.z), 2.5) then
                        QBCore.Functions.TriggerCallback('QBCore:Server:SpawnVehicle', function(netId)
                            local veh = NetToVeh(netId)
                            SetVehicleEngineOn(veh, false, true)
                            irishpubVehicle = veh
                            SetVehicleNumberPlateText(veh, "IRISHPUB")
                            SetEntityHeading(veh, v.w)
                            exports['LegacyFuel']:SetFuel(veh, 100.0)
                            SetVehicleFixed(veh)
                            SetEntityAsMissionEntity(veh, true, true)
                            SetVehicleDoorsLocked(veh, 1)
                            currentStop = firstStop
                            currentStopNum = 1
                            amountOfBoxes = totalBoxes
                            SetSupplyRoute()
                            TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                            TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
                            lib.notify({
                                id = 'irishpub_supplier',
                                title = 'Irish Pub Supplier',
                                description = 'Your supply route has been marked on the GPS!',
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
                        end, Config.Vehicle, v, false)
                        return
                    else
                        occupied = true
                    end
                end
                if occupied then
                    lib.notify({
                        id = 'irishpub_supplier',
                        title = 'Irish Pub Supplier',
                        description = 'All parking spots are occupied',
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
            end
            currentStop = firstStop
            currentStopNum = 1
            amountOfBoxes = totalBoxes
            SetSupplyRoute()
        else
            --
        end
    end, continueworking)
end)

RegisterNetEvent('bd-irishpubjob:client:RequestPaycheck', function()
    if irishpubVehicle then
        BringBackCar()
        lib.notify({
            id = 'irishpub_supplier',
            title = 'Irish Pub Supplier',
            description = 'Truck returned',
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
    TriggerServerEvent('bd-irishpubjob:server:PayShift')
end)

----- | CREATING START MENU | -----
RegisterNetEvent('bd-irishpubjob:client:StartMenu', function()
    TriggerEvent('bd-irishpubjob:client:irishpubStartMenu')
end)

lib.registerContext({
    id = 'irishpub_startmenu',
    title = 'Irish Pub Supplier',
    options ={
        {
            title = 'Request Route',
            description = 'Want to start a supply route?',
            icon = 'truck-front',
            event = 'bd-irishpubjob:client:RouteMenu',
        },
        {
            title = 'Return Vehicle',
            icon = 'warehouse',
            event = 'bd-irishpubjob:client:RequestPaycheck',
        }
    }
})

RegisterNetEvent('bd-irishpubjob:client:irishpubStartMenu', function()
    lib.showContext('irishpub_startmenu')
end)
----- | END OF START MENU | -----

RegisterNetEvent('bd-irishpubjob:client:RouteMenu', function()
    local alert = lib.alertDialog({
        header = 'Irish Pub Supply',
        content = 'Are you sure you want to start a supply route?',
        centered = true,
        cancel = true,
        labels = {
            confirm = 'Start'
        },
    })
    if alert == 'confirm' then
        TriggerEvent('bd-irishpubjob:client:RequestRoute')
    elseif alert == 'cancel' then
        lib.notify({
            id = 'irishpub_supplier',
            title = 'Irish Pub Supplier',
            description = 'Quit wasting time',
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

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    playerJob = QBCore.Functions.GetPlayerData().job
    setupClient()
    spawnPeds()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    playerJob = JobInfo
    if irishpubBlip then
        RemoveBlip(irishpubBlip)
    end
    if endBlip then
        RemoveBlip(endBlip)
    end
    if deliveryBlip then
        RemoveBlip(deliveryBlip)
    end
    endBlip = nil
    deliveryBlip = nil
    setupClient()
    spawnPeds()
end)

AddEventHandler('onResourceStop', function(resource)
    if GetCurrentResourceName() == resource then
        if irishpubObject then
            DeleteEntity(irishpubObject)
            irishpubObject = nil
        end
        deletePeds()
    end
end)

AddEventHandler('onResourceStart', function(resource)
    if GetCurrentResourceName() == resource then
        playerJob = QBCore.Functions.GetPlayerData().job
        setupClient()
        spawnPeds()
    end
end)
