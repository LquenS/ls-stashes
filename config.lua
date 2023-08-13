Config = {}

Config.PoliceOpen = true -- Can Police open all stashes

Config.Stashes = {
    ["geminimansion"] = {
        stashName = "geminimansion",
        coords = vector3(-1730.5, 358.6, 88.73), 
        requirecid = true,
        jobrequired = false,
        job = "",
        cid = {"MAH44286"},  -- Needs to be written with CID in ls-core
        stashSize = 1250000,
        stashSlots = 125, 
    },

    ["policearmory"] = {
        stashName = "policearmory",
        coords = vector3(29.6369, -1353.4575, 29.3379), 
        requirecid = false,
        jobrequired = false,
        job = "",
        cid = {"MAH44286"},  -- Needs to be written with CID in ls-core
        stashSize = 1250000,
        stashSlots = 125, 
    },   
}