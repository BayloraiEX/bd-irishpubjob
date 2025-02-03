local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
    -- COFFEE --
    RegisterNetEvent('bd-irishpubjob:server:makeCoffee', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Coffee',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_coffee', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have poured Coffee',
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
    -- AM BEER --
    RegisterNetEvent('bd-irishpubjob:server:MakeAMBeer', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make AM Beer',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_ambeer', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made AM Beer',
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
    -- DUSCHE --
    RegisterNetEvent('bd-irishpubjob:server:MakeDusche', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Dusche Beer',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_dusche', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Dusche Beer',
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
    -- LOGGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeLogger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Logger Beer',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_logger', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Logger Beer',
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
    -- PATRIOT --
    RegisterNetEvent('bd-irishpubjob:server:MakePatriot', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Patriot Beer',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_patriotbeer', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Patriot Beer',
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
    -- PISSWASSER --
    RegisterNetEvent('bd-irishpubjob:server:MakePisswaser', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Pisswaser Beer',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_pisswaser', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Pisswaser Beer',
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
    -- PISSWASSER DARK --
    RegisterNetEvent('bd-irishpubjob:server:MakePisswaserDark', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Pisswaser Dark Beer',
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
            }) return end
            ox_inventory:AddItem(src, 'ip_pisswaser1', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Pisswaser Dark Beer',
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
    -- PISSWASSER LIGHT --
    RegisterNetEvent('bd-irishpubjob:server:MakePisswaserLight', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Pisswaser Light Beer',
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
            }) return end
            ox_inventory:AddItem(src, 'ip_pisswaser2', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Pisswaser Light Beer',
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
    -- IRISH CREAM --
    RegisterNetEvent('bd-irishpubjob:server:MakeIrishCream', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Irish Cream',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_blarneys', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Irish Cream',
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
    -- IRISH CIDER --
    RegisterNetEvent('bd-irishpubjob:server:MakeCider', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Irish Cider',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_irishcider', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Irish Cider',
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
    -- RED WINE --
    RegisterNetEvent('bd-irishpubjob:server:MakeRedWine', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Red Wine',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_wineglass', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Red Wine',
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
    -- SCOTCH WHISKEY --
    RegisterNetEvent('bd-irishpubjob:server:MakeScotchWhiskey', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Scotch Whiskey',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_macbeth_scotch_whiskey', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Scotch Whiskey',
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
    -- IRISH WHISKEY --
    RegisterNetEvent('bd-irishpubjob:server:MakeIrishWhiskey', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Irish Whiskey',
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
            }) return end
        ox_inventory:AddItem(src, 'ip_tavish_irish_whiskey', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Irish Whiskey',
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
elseif Config.InventorySystem == 'qb' then
    -- COFFEE --
    RegisterNetEvent('bd-irishpubjob:server:makeCoffee', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Coffee',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_coffee', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_coffee'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have poured Coffee',
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
    -- AM BEER --
    RegisterNetEvent('bd-irishpubjob:server:MakeAMBeer', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make AM Beer',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_ambeer', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_ambeer'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made AM Beer',
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
    -- DUSCHE --
    RegisterNetEvent('bd-irishpubjob:server:MakeDusche', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Dusche Beer',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_dusche', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_dusche'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Dusche Beer',
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
    -- LOGGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeLogger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Logger Beer',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_logger', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_logger'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Logger Beer',
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
    -- PATRIOT --
    RegisterNetEvent('bd-irishpubjob:server:MakePatriot', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Patriot Beer',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_patriotbeer', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_patriotbeer'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Patriot Beer',
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
    -- PISSWASSER --
    RegisterNetEvent('bd-irishpubjob:server:MakePisswaser', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Pisswaser Beer',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_pisswaser', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_pisswaser'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Pisswaser Beer',
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
    -- PISSWASSER DARK --
    RegisterNetEvent('bd-irishpubjob:server:MakePisswaserDark', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Pisswaser Dark Beer',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_pisswaser1', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_pisswaser1'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Pisswaser Dark Beer',
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
    -- PISSWASSER LIGHT --
    RegisterNetEvent('bd-irishpubjob:server:MakePisswaserLight', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Pisswaser Light Beer',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_pisswaser2', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_pisswaser2'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Pisswaser Light Beer',
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
    -- IRISH CREAM --
    RegisterNetEvent('bd-irishpubjob:server:MakeIrishCream', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Irish Cream',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_blarneys', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_blarneys'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Irish Cream',
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
    -- IRISH CIDER --
    RegisterNetEvent('bd-irishpubjob:server:MakeIrishCider', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Irish Cider',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_irishcider', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_irishcider'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Irish Cider',
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
    -- RED WINE --
    RegisterNetEvent('bd-irishpubjob:server:MakeRedWine', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Red Wine',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_wineglass', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_wineglass'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Red Wine',
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
    -- SCOTCH WHISKEY --
    RegisterNetEvent('bd-irishpubjob:server:MakeScotchWhiskey', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Scotch Whiskey',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_macbeth_scotch_whiskey', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_macbeth_scotch_whiskey'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Scotch Whiskey',
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
    -- IRISH WHISKEY --
    RegisterNetEvent('bd-irishpubjob:server:MakeIrishWhiskey', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Irish Whiskey',
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
            }) return end
        exports['qb-inventory']:AddItem(src, 'ip_tavish_irish_whiskey', 6, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_tavish_irish_whiskey'], 'add', 6)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made Irish Whiskey',
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
