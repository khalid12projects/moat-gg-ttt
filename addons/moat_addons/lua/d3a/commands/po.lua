COMMAND.Name = "PO"

COMMAND.Flag = D3A.Config.Commands.PO
COMMAND.AdminMode = true

COMMAND.Args = {{"string", "SteamID"}}

local pretty_key = {
	["A_Name"] = "Staff Name",
	["A_SteamID"] = "Staff SteamID",
	["Time"] = "Date",
	["UnbanReason"] = "Unban Reason"
}

COMMAND.Run = function(pl, args, supp)
	local sid = tostring(args[1]):upper()
	
	if (string.sub(sid, 1, 8) != "STEAM_0:") then
		D3A.Chat.SendToPlayer2(pl, moat_red, "Please input a SteamID!")
		return
	end
	
	D3A.Bans.GetBans(sid, function(Bans)
		local bans_found = false

		if ((Bans.Current and Bans.Current.staff_name) or Bans.Past[1] or Bans.Removed[1]) then
			bans_found = true
		end

		if (not bans_found) then
			D3A.Chat.SendToPlayer2(pl, moat_red, "This user has no previous bans on record.") 
		else
			D3A.Chat.SendToPlayer2(pl, moat_red, "Check Console")

			pl:PrintMessage(HUD_PRINTCONSOLE, "---------------------------")
			pl:PrintMessage(HUD_PRINTCONSOLE, "Past Offences for: " .. sid)
			pl:PrintMessage(HUD_PRINTCONSOLE, "---------------------------")
			if (Bans.Current and Bans.Current.staff_name) then
				pl:PrintMessage(HUD_PRINTCONSOLE, "Current Ban:")

				for k,v in pairs(Bans.Current) do
					local dak = pretty_key[k] or k

					if (dak == "Date") then
						v = os.date("%m/%d/%Y - %H:%M:%S" , v)
					end

					pl:PrintMessage(HUD_PRINTCONSOLE, "    " .. dak .. ": " .. v)
				end
			end

			pl:PrintMessage(HUD_PRINTCONSOLE, "---------------------------")
			
			if (Bans.Past[1]) then
				pl:PrintMessage(HUD_PRINTCONSOLE, "Past Bans: (Expired)")

				for k,v in pairs(Bans.Past) do
					pl:PrintMessage(HUD_PRINTCONSOLE, "    " .. k .. ":")
					for newk, newv in pairs(v) do
						local dak = pretty_key[newk] or newk

						if (dak == "Date") then
							newv = os.date("%m/%d/%Y - %H:%M:%S" , newv)
						end

						pl:PrintMessage(HUD_PRINTCONSOLE, "        " .. dak .. ": " .. newv)
					end
				end
			end

			pl:PrintMessage(HUD_PRINTCONSOLE, "---------------------------")

			if (Bans.Removed[1]) then
				pl:PrintMessage(HUD_PRINTCONSOLE, "Removed Bans: (Unbanned)")

				for k,v in pairs(Bans.Removed) do
					pl:PrintMessage(HUD_PRINTCONSOLE, "    " .. k .. ":")
					for newk, newv in pairs(v) do
						local dak = pretty_key[newk] or newk

						if (dak == "Date") then
							newv = os.date("%m/%d/%Y - %H:%M:%S" , newv)
						end

						pl:PrintMessage(HUD_PRINTCONSOLE, "        " .. dak .. ": " .. newv)
					end
				end
			end

			pl:PrintMessage(HUD_PRINTCONSOLE, "---------------------------")
			pl:PrintMessage(HUD_PRINTCONSOLE, "End of Past Offences")
			pl:PrintMessage(HUD_PRINTCONSOLE, "---------------------------")
		end
	end)
end