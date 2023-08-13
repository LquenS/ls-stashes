# ls-stashes

Modified qb-stashes for work with ls-core/ls-inventory. I'm not giving any support for ls-stashes, do not want any help from me!

## Example Config

```lua
    ["donatorMansion1"] = {
        stashName = "donatorMansion1",
        coords = vector3(-96.17, 817.29, 235.72),
        requirecid = true,
        jobrequired = false,
        job = "",
        cid = {"ENL22736", "LUS73247"},  
        stashSize = 1250000,
        stashSlots = 125, 
    },
    ["liquorBusiness"] = {
        stashName = "liquorBusiness",
        coords = vector3(0.05, -1818.36, 29.54),
        requirecid = false,
        jobrequired = true,
        job = "liquor",
        cid = {},  
        stashSize = 1250000,
        stashSlots = 125, 
    },
    ["ballasExtraStash"] = {
        stashName = "ballasExtraStash",
        coords = vector3(-1730.5, 358.6, 88.73), 
        requirecid = false,
        jobrequired = true,
        job = "ballas",
        cid = {},  
        stashSize = 1250000,
        stashSlots = 125, 
    },
```
