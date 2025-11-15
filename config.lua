Config = {}
Config.items = {
    big_red_smoke = { -- item name
        label = "Big red smoke",
        duration = 960, -- duration in seconds
        scale = 4.0, -- scale of the smoke effect
        color = { r = 255, g = 0, b = 0}, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    big_blue_smoke = { -- item name
        label = "Big blue smoke",
        duration = 960, -- duration in seconds
        scale = 4.0, -- scale of the smoke effect
        color = { r = 0, g = 0, b = 255 } , -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    big_green_smoke = { -- item name
        label = "Big green smoke",
        duration = 60, -- duration in seconds
        scale = 4.0, -- scale of the smoke effect
        color = {r = 0, g = 255, b = 0}, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    small_red_smoke = { -- item name
        label = "Small red smoke",
        duration = 30, -- duration in seconds
        scale = 1.0, -- scale of the smoke effect
        color = { r = 255, g = 0, b = 0 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
}
Config.animation = {
    dict = 'amb_camp@world_camp_jack_plant@idle_a',
    name = 'idle_a',
    duration = 10000, -- duration in milliseconds
}
Config.notifications = {
    use_smoke = "You have used a smoke item.",
    no_item = "You do not have this item.",
}
Config.maxSmokes = 10 -- Maximum number of simultaneous smokes allowed
Config.maxSmokePerPlayer = 3 -- Maximum number of smokes a single player can create
Config.translations = {
    smokeUsed = "You have used a smoke item.",
    maxSmokesReached = "Maximum number of smokes reached.",
    noSmokeItem = "You do not have this item.",
}
