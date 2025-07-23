local blacklist = lib.load("config.blacklist")

for model, toggle in pairs(blacklist) do
    SetVehicleModelIsSuppressed(model, toggle)
end

lib.onCache("seat", function(seat)
    if seat == -1 and cache.vehicle then
        SetUserRadioControlEnabled(false)

        if GetPlayerRadioStationIndex() ~= 255 then
            SetVehRadioStation(cache.vehicle, "OFF")
        end
    end

    SetPedConfigFlag(cache.ped, 184, true)

    if cache.vehicle and not cache.seat then
        SetPedIntoVehicle(cache.ped, cache.vehicle, seat)
    end
end)