local LS_CORE = exports['ls-core']:GetCoreObject()

local function GetPlayerJob()
    return LS_CORE.Functions.GetPlayerData().PlayerData.job.name
end
local function ShowHelpText(string)	
    BeginTextCommandDisplayHelp("STRING")
	AddTextComponentSubstringPlayerName(string)
    EndTextCommandDisplayHelp(0, 0, 1, -1)
end

Citizen.CreateThread(function()
    while true do
        wait = 5
        local ped = PlayerPedId()
        local inZone = false

        for k, v in pairs(Config.Stashes) do
            local dist = #(GetEntityCoords(ped)-vector3(Config.Stashes[k].coords.x, Config.Stashes[k].coords.y, Config.Stashes[k].coords.z))
            if dist <= 3.0 then
                wait = 0
                inZone  = true

                if IsControlJustReleased(0, 38) then
                    TriggerEvent('qb-business:client:openStash', k, Config.Stashes[k].stashName)
                end
                break
            else
                wait = 2000
            end
        end

        if inZone then 
            ShowHelpText("Press [E] key to open stash")
        end
        
        Citizen.Wait(wait)
    end
end)

RegisterNetEvent('qb-business:client:openStash', function(currentstash, stash)

    local PlayerJob = GetPlayerJob()
    local canOpen = false

    if Config.PoliceOpen then 
        if PlayerJob == "police" then
            canOpen = true
        end
    end

    if Config.Stashes[currentstash].jobrequired then 
        if PlayerJob == Config.Stashes[currentstash].job then
            canOpen = true
        end
    end

    if Config.Stashes[currentstash].requirecid then
        for k, v in pairs (Config.Stashes[currentstash].cid) do 
            if LS_CORE.Functions.GetPlayerData().cid == v then
                canOpen = true
            end
        end
    end

    if canOpen then 
        TriggerServerEvent("inventory:server:OpenInventory", "stash", Config.Stashes[currentstash].stashName, {maxweight = Config.Stashes[currentstash].stashSize, slots = Config.Stashes[currentstash].stashSlots})
    end

end)