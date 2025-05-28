---- LOCAL CONFIG
local Config = {}

Config.Recoil = {
    -- PISTOL
    [GetHashKey("weapon_revolver_mk2")] = 8.0,
    [GetHashKey("weapon_doubleaction")] = 5.0,

    -- SMG
    [GetHashKey("weapon_minismg")] = 1.0,
    [GetHashKey("weapon_microsmg")] = 1.0,
    [GetHashKey("weapon_machinepistol")] = 0.4,

    -- SNIPER
    [GetHashKey("weapon_heavysniper")] = 5.0,
}

----
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local playerPed = PlayerPedId()
        if IsPedShooting(playerPed) then
            local weaponHash = GetSelectedPedWeapon(playerPed)
            local recoil = Config.Recoil[weaponHash] or 0.0

            if recoil > 0.0 then
                local camPitch = GetGameplayCamRelativePitch()
                SetGameplayCamRelativePitch(camPitch + recoil, 0.8)
                ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", 0.1 + (recoil * 0.03))
            end
        end
    end
end)
