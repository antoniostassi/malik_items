--[[ Credits by MalikTM ]]-- ! Don't Edit this Disclaimer !

local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

Citizen.CreateThread(function()

        Citizen.Wait(1000)

VorpInv.RegisterUsableItem("consumable_coffee", function(data)
    --This execute when user use an item.
    VorpInv.subItem(data.source, "consumable_coffee", 1)
    TriggerClientEvent("vorp:TipRight", data.source, "You drink some Coffee", 5000)
    TriggerClientEvent("malik:coffee", data.source)
end)

VorpInv.RegisterUsableItem("consumable_haycube", function(data)

    VorpInv.subItem(data.source, "consumale_haycube", 1)
    TriggerClientEvent("vorp:TipRight", data.source, "You're using some hay", 5000)
    TriggerClientEvent("malik:haycube", data.source)
end)

VorpInv.RegisterUsableItem("consumable_kidneybeans_can", function(data)

    VorpInv.subItem(data.source, "consumable_kidneybeans_can", 1)
    TriggerClientEvent("vorp:TipRight", data.source, "You ate some beans", 5000)
    TriggerClientEvent("malik:beans", data.source)
end)

VorpInv.RegisterUsableItem("consumable_medicine", function(data)

    VorpInv.subItem(data.source, "consumable_medicine", 1)
    TriggerClientEvent("vorp:TipRight", data.source, "You take a medicine", 5000)
    TriggerClientEvent("malik:medicine", data.source)
end)

VorpInv.RegisterUsableItem("consumable_peach", function(data)

    VorpInv.subItem(data.source, "consumable_peach", 1)
    TriggerClientEvent("vorp:TipRight", data.source, "You ate a peach", 5000)
    TriggerClientEvent("malik:peach", data.source)
end)

VorpInv.RegisterUsableItem("consumable_salmon_can", function(data)

    VorpInv.subItem(data.source, "consumable_salmon_can", 1)
    TriggerClientEvent("vorp:TipRight", data.source, "You ate some salmon", 5000)
    TriggerClientEvent("malik:salmon", data.source)
end)

VorpInv.RegisterUsableItem("campfire", function(data)
    VorpInv.subItem(data.source, "campfire", 1)
    TriggerClientEvent("vorp:TipRight", data.source, "You're placing a campfire", 5000)
    TriggerClientEvent("malik:campfire", data.source)
end)

VorpInv.RegisterUsableItem("tent", function(data)
    VorpInv.subItem(data.source, "tent", 1)
    TriggerClientEvent("vorp:TipRight", data.source, "You're placing a tent", 5000)
    TriggerClientEvent("malik:tent", data.source)
end)

VorpInv.RegisterUsableItem("consumable_meat_greavy", function(data)
    Vorp.Inv.subItem(data.source, "consumable_meat_greavy", 1)
    TriggerClientEvent("vorp:TipRight", data.source, "You ate some meat", 5000)
    TriggerClientEvent("malik:peach", data.source)

end)

end)