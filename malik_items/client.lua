--[[ Credits by MalikTM ]]-- ! Don't Edit this Disclaimer !

RegisterNetEvent("malik:coffee")
RegisterNetEvent("malik:haycube")
RegisterNetEvent("malik:beans")
RegisterNetEvent("malik:peach")
RegisterNetEvent("malik:salmon")
RegisterNetEvent("malik:medicine")
RegisterNetEvent('malik:tent')
RegisterNetEvent('malik:campfire')


AddEventHandler("malik:coffee", function(source)

local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:drink', 30)
            TriggerEvent('srp:eat', -5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
	--end
	print("MalikTM - Credits for Food ;)")
end)

AddEventHandler("malik:haycube", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        if SulCavallo then
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
                TaskAnimalInteraction(Ped, Cavallo, -224471938, true, true) --Animazione
                
                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 15)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 15)
            
            --end
        else
        TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
            Citizen.Wait(1000)
                TriggerEvent('srp:eat', 15)
                TriggerEvent('srp:drink', -5)
                local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
                if number then
                print (number)
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
                else 
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
                end
                Citizen.Wait(1000)
        --end
        print("MalikTM - Credits for Food ;)")
        end
end)

AddEventHandler("malik:beans", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)

	print("MalikTM - Credits for Food ;)")

end)

AddEventHandler("malik:peach", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:drink', 10)
            TriggerEvent('srp:eat', 25)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)

	print("MalikTM - Credits for Food ;)")

end)

AddEventHandler("malik:salmon", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:drink', -25)
            TriggerEvent('srp:eat', 60)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)

	print("MalikTM - Credits for Food ;)")

end)

local status = false

AddEventHandler("malik:medicine", function(source)
    
    if status == false then
    local persona = PlayerPedId()
		local propEntity = CreateObject(GetHashKey('p_bottleJD01x'), GetEntityCoords(PlayerPedId()), false, false, 1, 1, 0)
		TaskItemInteraction_2(PlayerPedId(), 1737033966, propEntity, GetHashKey("p_bottleJD01x_ph_r_hand"), GetHashKey("DRINK_BOTTLE@Bottle_Cylinder_D1-3_H30-5_Neck_A13_B2-5_UNCORK"), true, 0, 0)
        status = true
        Citizen.Wait(10000)
		for i=1, 10 do
            
				local closestPlayerPed = GetPlayerPed(closestPlayer)
				local health = GetAttributeCoreValue(closestPlayerPed, 0)
				local newHealth = health + 40
				local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
				local newStamina = stamina + 40
				local health2 = GetEntityHealth(closestPlayerPed)
				local newHealth2 = health2 + 40
				Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
				Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
				SetEntityHealth(closestPlayerPed, newHealth2)	
						
        end
    elseif status == true then
        TriggerEvent("vorp:TipBottom", "You're already drinking a Medicine", 4000)
    end
    status = false

end)

AddEventHandler('malik:tent', function()
    if tent ~= 0 then
        SetEntityAsMissionEntity(tent)
        DeleteObject(tent)
        tent = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a tent...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("mp005_s_posse_tent_bountyhunter07x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    tent = prop
end)

AddEventHandler('malik:campfire', function()

    if campfire ~= 0 then
        SetEntityAsMissionEntity(campfire)
        DeleteObject(campfire)
        campfire = 0
    end
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
    exports['progressBars']:startUI(30000, "You're placing a campfire...")
    Citizen.Wait(30000)
    ClearPedTasksImmediately(PlayerPedId())
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
    local prop = CreateObject(GetHashKey("p_campfire02x"), x, y, z, true, false, true)
    SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
    PlaceObjectOnGroundProperly(prop)
    campfire = prop

end)



RegisterCommand('deletetent', function(source, args, rawCommand)
    if tent == 0 then
     --   print("No hay tienda.")
    else
        SetEntityAsMissionEntity(tent)
        DeleteObject(tent)
        tent = 0
		TriggerServerEvent('malik:additem', "tent")
    end
end, false)

local tent = 0


RegisterCommand('deletecampfire', function(source, args, rawCommand)
    if campfire == 0 then
     --   print("There is no campfire.")
    else
        SetEntityAsMissionEntity(campfire)
        DeleteObject(campfire)
        campfire = 0
		TriggerServerEvent('malik:additem', "campfire")
    end
end, false)

local campfire = 0 