local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
    -- BACON CHEESE BURGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeBaconCheeseBurger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Bacon Cheese Burger',
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
        ox_inventory:AddItem(src, 'ip_bacon_cheeseburger', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Bacon Cheese Burgers',
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
    -- BACON CHEESE FRIES --
    RegisterNetEvent('bd-irishpubjob:server:MakeBaconCheeseFries', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Bacon Cheese Fries',
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
        ox_inventory:AddItem(src, 'ip_bacon_cheesefries', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Bacon Cheese Fries',
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
    -- BACON CHICKEN BURGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeBaconChickenBurger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Bacon Chicken Burger',
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
        ox_inventory:AddItem(src, 'ip_bacon_chickenburger', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Bacon Chicken Burgers',
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
    -- BACON RANCH CHILI CHEESE FRIES --
    RegisterNetEvent('bd-irishpubjob:server:MakeBaconRanchChiliCheeseFries', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Bacon Ranch Chili Cheese Fries',
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
        ox_inventory:AddItem(src, 'ip_baconranch_chilicheese_fries', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Bacon Ranch Chili Cheese Fries',
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
    -- BEEF DIP --
    RegisterNetEvent('bd-irishpubjob:server:MakeBeefDip', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Beef Dip',
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
        ox_inventory:AddItem(src, 'ip_beefdip', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Beef Dip',
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
    -- MAKE POUTINE --
    RegisterNetEvent('bd-irishpubjob:server:MakePoutine', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Poutine',
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
        ox_inventory:AddItem(src, 'ip_canadianpoutine', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Poutine',
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
    -- CHEESE BURGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeCheeseBurger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Cheese Burger',
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
        ox_inventory:AddItem(src, 'ip_cheeseburger', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Cheese Burgers',
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
    -- CHICKEN BURGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeChickenBurger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Chicken Burger',
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
        ox_inventory:AddItem(src, 'ip_chickenburger', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Chicken Burgers',
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
    -- CHICKEN STRIPS --
    RegisterNetEvent('bd-irishpubjob:server:MakeChickenStrips', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Chicken Strips',
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
        ox_inventory:AddItem(src, 'ip_chickenstrips', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Chicken Strips',
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
    -- CURLY FRIES --
    RegisterNetEvent('bd-irishpubjob:server:MakeCurlyFries', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Curly Fries',
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
        ox_inventory:AddItem(src, 'ip_curlyfries', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Curly Fries',
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
    -- FRIES --
    RegisterNetEvent('bd-irishpubjob:server:MakeFries', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Fries',
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
        ox_inventory:AddItem(src, 'ip_fries', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Cheese Burgers',
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
    -- LOADED NACHOS --
    RegisterNetEvent('bd-irishpubjob:server:MakeLoadedNachos', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Loaded Nachos',
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
        ox_inventory:AddItem(src, 'ip_fullyloaded_nachos', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Loaded Nachos',
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
    -- HONEY LEMON CHICKEN WINGS --
    RegisterNetEvent('bd-irishpubjob:server:MakeLemonChickenWings', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Honey Lemon Chicken Wings',
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
        ox_inventory:AddItem(src, 'ip_honeylemon_chickenwings', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Honey Lemon Chicken Wings',
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
    -- NACHOS --
    RegisterNetEvent('bd-irishpubjob:server:MakeNachos', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Nachos',
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
        ox_inventory:AddItem(src, 'ip_nachos', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Nachos',
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
    -- ONION RINGS --
    RegisterNetEvent('bd-irishpubjob:server:MakeOnionRings', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Onion Rings',
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
        ox_inventory:AddItem(src, 'ip_onionrings', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Onion Rings',
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
    -- SPICY BUFFALO CHICKEN WINGS --
    RegisterNetEvent('bd-irishpubjob:server:MakeBuffaloChickenWings', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Spicy Buffalo Chicken Wings',
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
        ox_inventory:AddItem(src, 'ip_spicybuffalo_chickenwings', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Spicy Buffalo Chicken Wings',
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
    -- SPICY SRIRACHA CHICKEN WINGS --
    RegisterNetEvent('bd-irishpubjob:server:MakeSrirachaChickenWings', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Spicy Sriracha Chicken Wings',
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
        ox_inventory:AddItem(src, 'ip_spicysriracha_chickenwings', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Spicy Sriracha Chicken Wings',
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
    -- STEAK BURGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeSteakBurger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Steak Burger',
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
        ox_inventory:AddItem(src, 'ip_steakburger', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Steak Burger',
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
    -- STEAK SANDWICH -- 
    RegisterNetEvent('bd-irishpubjob:server:MakeSteakSandwich', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not ox_inventory:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Steak Sandwich',
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
        ox_inventory:AddItem(src, 'ip_steaksandwich', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Steak Sandwich',
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
    -- BACON CHEESE BURGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeBaconCheeseBurger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Bacon Cheese Burger',
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
        exports['qb-inventory']:AddItem(src, 'ip_bacon_cheeseburger', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_bacon_cheeseburger'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Bacon Cheese Burgers',
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
    -- BACON CHEESE FRIES --
    RegisterNetEvent('bd-irishpubjob:server:MakeBaconCheeseFries', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Bacon Cheese Fries',
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
        exports['qb-inventory']:AddItem(src, 'ip_bacon_cheesefries', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_bacon_cheesefries'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Bacon Cheese Fries',
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
    -- BACON CHICKEN BURGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeBaconChickenBurger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Bacon Chicken Burger',
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
        exports['qb-inventory']:AddItem(src, 'ip_bacon_chickenburger', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_bacon_chickenburger'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Bacon Chicken Burgers',
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
    -- BACON RANCH CHILI CHEESE FRIES --
    RegisterNetEvent('bd-irishpubjob:server:MakeBaconRanchChiliCheeseFries', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Bacon Ranch Chili Cheese Fries',
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
        exports['qb-inventory']:AddItem(src, 'ip_baconranch_chilicheese_fries', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_baconranch_chilicheese_fries'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Bacon Ranch Chili Cheese Fries',
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
    -- BEEF DIP --
    RegisterNetEvent('bd-irishpubjob:server:MakeBeefDip', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Beef Dip',
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
        exports['qb-inventory']:AddItem(src, 'ip_beefdip', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_beefdip'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Beef Dip',
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
    -- MAKE POUTINE --
    RegisterNetEvent('bd-irishpubjob:server:MakePoutine', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Poutine',
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
        exports['qb-inventory']:AddItem(src, 'ip_canadianpoutine', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_canadianpoutine'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Poutine',
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
    -- CHEESE BURGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeCheeseBurger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Cheese Burger',
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
        exports['qb-inventory']:AddItem(src, 'ip_cheeseburger', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_cheeseburger'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Cheese Burgers',
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
    -- CHICKEN BURGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeChickenBurger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Chicken Burger',
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
        exports['qb-inventory']:AddItem(src, 'ip_chickenburger', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_chickenburger'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Chicken Burgers',
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
    -- CHICKEN STRIPS --
    RegisterNetEvent('bd-irishpubjob:server:MakeChickenStrips', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Chicken Strips',
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
        exports['qb-inventory']:AddItem(src, 'ip_chickenstrips', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_chickenstrips'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Chicken Strips',
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
    -- CURLY FRIES --
    RegisterNetEvent('bd-irishpubjob:server:MakeCurlyFries', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Curly Fries',
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
        exports['qb-inventory']:AddItem(src, 'ip_curlyfries', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_curlyfries'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Curly Fries',
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
    -- FRIES --
    RegisterNetEvent('bd-irishpubjob:server:MakeFries', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Fries',
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
        exports['qb-inventory']:AddItem(src, 'ip_fries', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_fries'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Cheese Burgers',
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
    -- LOADED NACHOS --
    RegisterNetEvent('bd-irishpubjob:server:MakeLoadedNachos', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Loaded Nachos',
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
        exports['qb-inventory']:AddItem(src, 'ip_fullyloaded_nachos', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_fullyloaded_nachos'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Loaded Nachos',
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
    -- HONEY LEMON CHICKEN WINGS --
    RegisterNetEvent('bd-irishpubjob:server:MakeLemonChickenWings', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Honey Lemon Chicken Wings',
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
        exports['qb-inventory']:AddItem(src, 'ip_honeylemon_chickenwings', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_honeylemon_chickenwings'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Honey Lemon Chicken Wings',
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
    -- NACHOS --
    RegisterNetEvent('bd-irishpubjob:server:MakeNachos', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Nachos',
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
        exports['qb-inventory']:AddItem(src, 'ip_nachos', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_nachos'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Nachos',
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
    -- ONION RINGS --
    RegisterNetEvent('bd-irishpubjob:server:MakeOnionRings', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Onion Rings',
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
        exports['qb-inventory']:AddItem(src, 'ip_onionrings', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_onionrings'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Onion Rings',
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
    -- SPICY BUFFALO CHICKEN WINGS --
    RegisterNetEvent('bd-irishpubjob:server:MakeBuffaloChickenWings', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Spicy Buffalo Chicken Wings',
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
        exports['qb-inventory']:AddItem(src, 'ip_spicybuffalo_chickenwings', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_spicybuffalo_chickenwings'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Spicy Buffalo Chicken Wings',
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
    -- SPICY SRIRACHA CHICKEN WINGS --
    RegisterNetEvent('bd-irishpubjob:server:MakeSrirachaChickenWings', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Spicy Sriracha Chicken Wings',
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
        exports['qb-inventory']:AddItem(src, 'ip_spicysriracha_chickenwings', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_spicysriracha_chickenwings'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Spicy Sriracha Chicken Wings',
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
    -- STEAK BURGER --
    RegisterNetEvent('bd-irishpubjob:server:MakeSteakBurger', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Steak Burger',
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
        exports['qb-inventory']:AddItem(src, 'ip_steakburger', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_steakburger'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Steak Burger',
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
    -- STEAK SANDWICH -- 
    RegisterNetEvent('bd-irishpubjob:server:MakeSteakSandwich', function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if not exports['qb-inventory']:RemoveItem(src, 'ip_supplies', 1, false) then
            lib.notify(source, {
                id = 'irish_pub',
                title = 'Irish Pub',
                description = 'You need 1x Supplies to make Steak Sandwich',
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
        exports['qb-inventory']:AddItem(src, 'ip_steaksandwich', 3, false, false)
        TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['ip_steaksandwich'], 'add', 3)
        lib.notify(source, {
            id = 'irish_pub',
            title = 'Irish Pub',
            description = 'You have made 3x Steak Sandwich',
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
