Config = {}
Config.items = { -- add as many smoke items as you want -> don't forget to insert them in your item database/add item icons
    big_red_smoke = { -- item name
        label = "Big red smoke",
        duration = 60, -- duration in seconds
        scale = 4.0, -- scale of the smoke effect
        color = { r = 255, g = 0, b = 0}, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    big_blue_smoke = { -- item name
        label = "Big blue smoke",
        duration = 60, -- duration in seconds
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
    big_yellow_smoke = { -- item name
        label = "Big yellow smoke",
        duration = 60, -- duration in seconds
        scale = 4.0, -- scale of the smoke effect
        color = { r = 255, g = 255, b = 0 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    big_orange_smoke = { -- item name
        label = "Big orange smoke",
        duration = 60, -- duration in seconds
        scale = 4.0, -- scale of the smoke effect
        color = { r = 255, g = 165, b = 0 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    big_cyan_smoke = { -- item name
        label = "Big cyan smoke",
        duration = 60, -- duration in seconds
        scale = 4.0, -- scale of the smoke effect
        color = { r = 0, g = 255, b = 255 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    big_violet_smoke = { -- item name
        label = "Big violet smoke",
        duration = 60, -- duration in seconds
        scale = 4.0, -- scale of the smoke effect
        color = { r = 238, g = 130, b = 238 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    big_white_smoke = { -- item name
        label = "Big white smoke",
        duration = 60, -- duration in seconds
        scale = 4.0, -- scale of the smoke effect
        color = { r = 255, g = 255, b = 255 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    big_pink_smoke = { -- item name
        label = "Big pink smoke",
        duration = 60, -- duration in seconds
        scale = 4.0, -- scale of the smoke effect
        color = { r = 255, g = 105, b = 180 }, -- RGB color for the smoke
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
    small_blue_smoke = { -- item name
        label = "Small blue smoke",
        duration = 30, -- duration in seconds
        scale = 1.0, -- scale of the smoke effect
        color = { r = 0, g = 0, b = 255 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    small_green_smoke = { -- item name
        label = "Small green smoke",
        duration = 30, -- duration in seconds
        scale = 1.0, -- scale of the smoke effect
        color = { r = 0, g = 255, b = 0 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    small_yellow_smoke = { -- item name
        label = "Small yellow smoke",
        duration = 30, -- duration in seconds
        scale = 1.0, -- scale of the smoke effect
        color = { r = 255, g = 255, b = 0 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    small_orange_smoke = { -- item name
        label = "Small orange smoke",
        duration = 30, -- duration in seconds
        scale = 1.0, -- scale of the smoke effect
        color = { r = 255, g = 165, b = 0 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    small_cyan_smoke = { -- item name
        label = "Small cyan smoke",
        duration = 30, -- duration in seconds
        scale = 1.0, -- scale of the smoke effect
        color = { r = 0, g = 255, b = 255 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    small_violet_smoke = { -- item name
        label = "Small violet smoke",
        duration = 30, -- duration in seconds
        scale = 1.0, -- scale of the smoke effect
        color = { r = 238, g = 130, b = 238 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    small_white_smoke = { -- item name
        label = "Small white smoke",
        duration = 30, -- duration in seconds
        scale = 1.0, -- scale of the smoke effect
        color = { r = 255, g = 255, b = 255 }, -- RGB color for the smoke
        model = `s_dynamitehusk01x`, -- item model to spawn
        rotation = { x = -90.0, y = 0.0, z = 0.0 }, -- rotation of the spawned item
        offset = { x = 0.1, y = 0.5, z = 0.0 }, -- offset of the spawned item
    },
    small_pink_smoke = { -- item name
        label = "Small pink smoke",
        duration = 30, -- duration in seconds
        scale = 1.0, -- scale of the smoke effect
        color = { r = 255, g = 105, b = 180 }, -- RGB color for the smoke
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
Config.maxSmokes = 10 -- Maximum number of simultaneous smokes allowed
Config.maxSmokePerPlayer = 3 -- Maximum number of smokes a single player can create
Config.translations = {
    smokeUsed = "You have used a smoke item.",
    maxSmokesReached = "Maximum number of smokes reached.",
    maxPlayerSmokesReached = "You have reached the maximum number of personal smokes.",
    noSmokeItem = "You do not have this item.",
}
