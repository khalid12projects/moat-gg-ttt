util.AddNetworkString("moat_killcard_died")
util.AddNetworkString("moat_killcard_kill")

hook.Add("DoPlayerDeath", "moat_killcard_death", function(pl, att, dmg)
	if (pl:GetInfo("moat_enable_deathcard") ~= "1") then return end

	net.Start("moat_killcard_died")

	local dtype = 1
	if (dmg:IsExplosionDamage()) then
		dtype = 6
	elseif (dmg:IsFallDamage()) then
		dtype = 4		
	elseif (dmg:IsDamageType(DMG_DROWN)) then
		dtype = 2
	elseif (dmg:IsDamageType(DMG_BURN)) then
		dtype = 5
	elseif (dmg:IsDamageType(DMG_CRUSH)) then
		dtype = 3
	elseif (dmg:IsDamageType(DMG_VEHICLE)) then
		dtype = 7
	elseif (dmg:IsDamageType(DMG_SHOCK)) then
		dtype = 8
	end
	net.WriteUInt(dtype, 8)

	if (not att:IsValid() or (att:IsValid() and not att:IsPlayer()) or att == pl) then
		net.WriteEntity(pl)
	elseif (dtype == 1) then
		net.WriteEntity(att)

		if (GetRoundState() == ROUND_ACTIVE) then
			local str = "Innocent"

			if (att:GetRole() == ROLE_TRAITOR) then
				str = "Traitor"
			elseif (att:GetRole() == ROLE_DETECTIVE) then
				str = "Detective"
			elseif (ROLE_JESTER and att:GetRole() == ROLE_JESTER) then
				str = "Jester"
			elseif (ROLE_KILLER and att:GetRole() == ROLE_KILLER) then
				str = "Serial Killer"
			elseif (ROLE_DOCTOR and att:GetRole() == ROLE_DOCTOR) then
				str = "Doctor"
			elseif (ROLE_BEACON and att:GetRole() == ROLE_BEACON) then
				str = "Beacon"
			elseif (ROLE_SURVIVOR and att:GetRole() == ROLE_SURVIVOR) then
				str = "Survivor"
			elseif (ROLE_HITMAN and att:GetRole() == ROLE_HITMAN) then
				str = "Hitman"
			elseif (ROLE_BODYGUARD and att:GetRole() == ROLE_BODYGUARD) then
				str = "Bodyguard"
			elseif (ROLE_VETERAN and att:GetRole() == ROLE_VETERAN) then
				str = "Veteran"
			elseif (ROLE_XENOMORPH and att:GetRole() == ROLE_XENOMORPH) then
				str = "Phoenix"
			elseif (ROLE_WITCHDOCTOR and att:GetRole() == ROLE_WITCHDOCTOR) then
				str = "Witch Doctor"
			end

			net.WriteString(str)
		end
	end

	if (dtype == 1) then
		local inf = dmg:GetInflictor()
		if (inf and inf:IsValid() and inf:IsWeapon()) then
			net.WriteEntity(dmg:GetInflictor())
		else
			if (IsValid(att) and att:IsPlayer() and IsValid(att:GetActiveWeapon())) then
				net.WriteEntity(att:GetActiveWeapon())
			else
				net.WriteEntity(Entity(0))
			end
		end
	end

	net.Send(pl)
end)



--[[-------------------------------------------------------------------------
Killcard Networking
---------------------------------------------------------------------------]]
if (true) then return end

function moat.send.killcard(pl, att, dmg)
	net.Start("moat_killcard_kill")
	if (not IsValid(att)) then att = pl end
	net.WriteEntity(att)

	

	/*
	net.WriteTable(wpn.item_stats)
	net.Send(pl)*/
end

hook.Add("DoPlayerDeath", "moat.killcard.networking", function(pl, att, dmg)

	moat.send.killcard(pl, att, dmg)
end)