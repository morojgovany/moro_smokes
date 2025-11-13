Config = {}
Config.items = {
    big_red_smoke = {
        label = "Big Smoke",
        duration = 60, -- duration in seconds
        scale = 8.0,
        color = {255, 0, 0}, -- RGB color for the smoke
    },
    small_red_smoke = {
        label = "Small Smoke",
        duration = 30, -- duration in seconds
        scale = 4.0,
        color = { 255, 0, 0 }, -- RGB color for the smoke
    },
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
