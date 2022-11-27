ESX = nil

Citizen.CreateThread(function() while ESX == nil do TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) Citizen.Wait(0) end end)

local shield = false


local ENR = RegisterNetEvent
local HEA = AddEventHandler

ENR("shield:TogglePoliceShield")
HEA("shield:TogglePoliceShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = PlayerPedId()
      local propName = "prop_jpolice_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
    else
      shield = false
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      shield_net = nil
    end
  end)
end)

ENR("shield:ToggleSheriffShield")
HEA("shield:ToggleSheriffShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = PlayerPedId()
      local propName = "prop_jsheriff_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
    else
      shield = false
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      shield_net = nil
    end
  end)
end)

ENR("shield:ToggleSwatShield")
HEA("shield:ToggleSwatShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = PlayerPedId()
      local propName = "prop_jswat_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
    else
      shield = false
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      shield_net = nil
    end
  end)
end)

ENR("shield:ToggleFibShield")
HEA("shield:ToggleFibShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = PlayerPedId()
      local propName = "prop_jfib_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
    else
      shield = false
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      shield_net = nil
    end
  end)
end)

ENR("shield:ToggleNooseShield")
HEA("shield:ToggleNooseShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = PlayerPedId()
      local propName = "prop_jnoose_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
    else
      shield = false
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      shield_net = nil
    end
  end)
end)

