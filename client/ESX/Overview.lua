if Config.FrameWork ~= "ESX" then
    return
end

ESX = exports["es_extended"]:getSharedObject()

RegisterNUICallback("ps-banking:client:payAllBills", function(data, cb)
    local success = lib.callback.await("ps-banking:server:payAllBills", false)
    cb(success)
end)

RegisterNUICallback("ps-banking:client:getWeeklySummary", function(data, cb)
    local summary = lib.callback.await("ps-banking:server:getWeeklySummary", false)
    cb(summary)
end)