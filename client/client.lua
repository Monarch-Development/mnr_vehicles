local blacklist = lib.load("config.blacklist")

---@type blacklist table <model, hash> <toggle, boolean>
---@description Vehicle Model Suppressor (Avoids vehicles spawning in traffic)
for model, toggle in ipairs(blacklist) do
    SetVehicleModelIsSuppressed(model, toggle)
end