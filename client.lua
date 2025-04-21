Citizen.CreateThread(function()
    for _, blip in pairs(Config.Blips) do
        local createdBlip = AddBlipForCoord(blip.coords)

        SetBlipSprite(createdBlip, blip.sprite)
        SetBlipDisplay(createdBlip, 4)
        SetBlipScale(createdBlip, blip.scale or 0.8)
        SetBlipColour(createdBlip, blip.color)
        SetBlipAsShortRange(createdBlip, blip.shortRange or true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(blip.name)
        EndTextCommandSetBlipName(createdBlip)
    end
end)
