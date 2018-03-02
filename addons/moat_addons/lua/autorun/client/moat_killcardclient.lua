MOAT_KILLCARDS = MOAT_KILLCARDS or {}
MOAT_KILLCARDS.CardQueue = {}
MOAT_KILLCARDS.CardInfo = {
	w = 450,
	h = 150
}
MOAT_KILLCARDS.CardInfo.Pnl = {
	w = MOAT_KILLCARDS.CardInfo.w,
	h = MOAT_KILLCARDS.CardInfo.h - 50,
	x = 0,
	y = 35
}
MOAT_KILLCARDS.TimeDisplayed = 7

MOAT_KILLCARDS.Strings = {
	{"Killed By", 91},
	{"Killed", 61}
}

local math 				= math
local table 			= table
local draw 				= draw
local team 				= team
local IsValid 			= IsValid
local CurTime 			= CurTime
local draw_SimpleText = draw.SimpleText
local draw_SimpleTextOutlined = draw.SimpleTextOutlined
local surface_DrawRect = surface.DrawRect
local surface_DrawLine = surface.DrawLine
local surface_DrawTexturedRect = surface.DrawTexturedRect
local surface_SetDrawColor = surface.SetDrawColor
local surface_SetMaterial = surface.SetMaterial

local gradient_u = Material("vgui/gradient-u")

local scrw = ScrW()
local scrh = ScrH()

MOAT_KILLCARDS.CardInfoF = {
	x = (scrw / 2) - (MOAT_KILLCARDS.CardInfo.w / 2),
	y = scrh - 250
}
MOAT_KILLCARDS.Colors = {
	shadow = Color(0, 0, 0, 30),
	white = Color(255, 255, 255),
	red = Color(255, 0, 0),
	blue = Color(0, 0, 255),
	green = Color(0, 255, 0),
	black = Color(0, 0, 0),
	kname = {
		["Traitor"] = Color(220, 25, 25),
		["Innocent"] = Color(25, 220, 25),
		["Detective"] = Color(25, 25, 220),
		["Enviroment"] = Color(255, 255, 255),
		["Player"] = Color(255, 255, 255)
	}
}

MOAT_KILLCARDS.DeathTypes = {
	"Unknown Weapon",
	"Drowned to Death",
	"Prop Killed",
	"Fell to Death",
	"Burned to Death",
	"Explosion",
	"Hit n' Run",
	"Shocked to Death",
	"Unknown Death"
}

local blur = Material("pp/blurscreen")

local function DrawBlur(panel, amount)
    local x, y = panel:LocalToScreen(0, 0)
    local scrW, scrH = ScrW(), ScrH()
    surface_SetDrawColor(255, 255, 255)
    surface_SetMaterial(blur)

    for i = 1, 3 do
        blur:SetFloat("$blur", (i / 3) * (amount or 6))
        blur:Recompute()
        render.UpdateScreenEffectTexture()
        surface_DrawTexturedRect(x * -1, y * -1, scrW, scrH)
    end
end

local TryTranslation = nil
local GetLang = nil

function moat_LoadLanguage()
    if (LANG and LANG.TryTranslation and LANG.GetUnsafeLanguageTable) then
        TryTranslation = LANG.TryTranslation
        GetLang = LANG.GetUnsafeLanguageTable
    else
        timer.Simple(1, function()
            TryTranslation = LANG.TryTranslation
            GetLang = LANG.GetUnsafeLanguageTable
        end)
    end
end
moat_LoadLanguage()

function MOAT_KILLCARDS:GetInflicorInfo(num, wpn)
	local istr, icol, ieff, irainbow = "Unknown Weapon", self.Colors.white

	if (num == 1 and wpn and wpn:IsValid()) then
		if (wpn.ItemStats and wpn.ItemStats.item) then
			istr = wpn.PrintName or "Unknown Weapon"
			icol = wpn.ItemStats.item.NameColor or rarity_names[wpn.ItemStats.item.Rarity][2]

			if (wpn.ItemStats.item.Rarity == 9) then
				irainbow = true	
			end

			if (wpn.ItemStats.item.NameEffect) then
				ieff = wpn.ItemStats.item.NameEffect
			end
		else
			istr = TryTranslation(wpn.PrintName or "Unknown Weapon")
		end
	else
		istr = self.DeathTypes[num]
	end

    return istr, icol, ieff, irainbow
end

function MOAT_KILLCARDS:DrawDeathCard(pl, kby, wpn, pl_role)
	self.CardInfo.x = (scrw / 2) - (self.CardInfo.w / 2)
	self.CardInfo.y = scrh

	if (IsValid(self.CurCard)) then
		self.CurCard:Remove()
	end

	self.CurCard = vgui.Create("DFrame")
	self.CurCard.EndTime = CurTime() + self.TimeDisplayed
	self.CurCard:SetPos(self.CardInfo.x, self.CardInfo.y)
	self.CurCard:SetSize(self.CardInfo.w, self.CardInfo.h)
	self.CurCard:ShowCloseButton(false)
	self.CurCard:SetTitle("")
	self.CurCard.kstr = MOAT_KILLCARDS.Strings[1]
	self.CurCard.kname = nil

	local L = nil
	if (GetLang) then
		L = GetLang()
	end

	if (not L) then 
		self.CurCard:Remove()
		self.CurCard = nil
		
		return
	end

	if (pl and pl:IsValid() and pl:IsPlayer()) then
		if (pl == LocalPlayer()) then
			self.CurCard.kname = "Yourself"
		elseif (GetRoundState() ~= ROUND_PREP) then
			self.CurCard.kname = pl_role or "Player"
		else
			self.CurCard.kname = "Player"
		end
	else
		self.CurCard.kname = "Enviroment"
	end

	local role_color = Color(255, 255, 255)

	if (self.CurCard.kname) then
		role_color = self.Colors.kname[self.CurCard.kname] or Color(255, 255, 255)
	end

	self.CurCard.Paint = function(s, w, h)
		draw_SimpleTextOutlined(s.kstr[1], "moat_Trebuchet", 0, 0, self.Colors.white, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 2, self.Colors.shadow)

		if (s.kname) then
			draw_SimpleTextOutlined(s.kname, "moat_Trebuchet", s.kstr[2], 0, self.Colors.kname[s.kname] or self.Colors.white, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 2, self.Colors.shadow)
		end

		surface_SetDrawColor(180, 180, 180, 200)
		surface_DrawLine(0, 30, w, 30)
		surface_DrawLine(0, h-11, w, h-11)
	end

	self.CurCard.Pnl = vgui.Create("DPanel", self.CurCard)
	self.CurCard.Pnl:SetPos(self.CardInfo.Pnl.x, self.CardInfo.Pnl.y)
	self.CurCard.Pnl:SetSize(self.CardInfo.Pnl.w, self.CardInfo.Pnl.h)
	self.CurCard.Pnl.Paint = nil

	if (pl and pl:IsValid()) then
		self.CurCard.PnlAva = vgui.Create("AvatarImage", self.CurCard.Pnl)
		self.CurCard.PnlAva:SetPos(0, -200)
		self.CurCard.PnlAva:SetSize(450, 450)
		self.CurCard.PnlAva:SetPlayer(pl, 184)
		self.CurCard.PnlAva:SetAlpha(150)
	end

	self.CurCard.Blur = vgui.Create("DPanel", self.CurCard.Pnl)
	self.CurCard.Blur:SetPos(0, 0)
	self.CurCard.Blur:SetSize(self.CardInfo.Pnl.w, self.CardInfo.Pnl.h)
	self.CurCard.Blur.Paint = function(s, w, h)
		DrawBlur(s, 1.5)

		surface_SetDrawColor(28, 28, 36, 150)
		surface_DrawRect(0, 0, w, h)
	end

	if (pl and pl:IsValid()) then
		self.CurCard.KAva = vgui.Create("AvatarImage", self.CurCard.Pnl)
		self.CurCard.KAva:SetPos(10, 10)
		self.CurCard.KAva:SetSize(80, 80)
		self.CurCard.KAva:SetPlayer(pl, 84)
	end

    local health_ratio = 0
    local health_string = "Dead"
    local att_name = "Enviroment"

    if (pl:IsValid() and IsValid(pl) and pl:IsPlayer()) then
    	att_name = pl:Nick()

    	if (pl ~= LocalPlayer()) then
    		health_string = "HP: " .. pl:Health() .. "/" .. pl:GetMaxHealth()
    		health_ratio = math.Clamp(pl:Health() / pl:GetMaxHealth(), 0, 1)
    	end
    end

    local health_green = 255 * health_ratio
    local health_red = 255 - (255 * health_ratio)

    local weapon_str, weapon_col, weapon_eff, weapon_rainbow = self:GetInflicorInfo(kby, wpn)

	self.CurCard.KInfo = vgui.Create("DPanel", self.CurCard.Pnl)
	self.CurCard.KInfo:SetSize(self.CardInfo.Pnl.w - 110, self.CardInfo.Pnl.h - 20)
	self.CurCard.KInfo:SetPos(100, 10)
	self.CurCard.KInfo.Paint = function(s, w, h)
		draw_SimpleTextOutlined(att_name, "moat_Trebuchet", 0, -4, role_color, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 2, self.Colors.shadow)

		if (weapon_eff and weapon_eff == "glow") then
			local da_col = weapon_col

			if (weapon_rainbow) then
				da_col = rarity_names[9][2]
			end

            m_DrawGlowingText(false, weapon_str, "moat_Trebuchet", 0, 20, da_col)
        else
			local da_col = weapon_col

			if (weapon_rainbow) then
				da_col = rarity_names[9][2]
			end
			
            draw_SimpleTextOutlined(weapon_str, "moat_Trebuchet", 0, 20, da_col, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, 2, self.Colors.shadow)
        end
		
		surface_SetDrawColor(28, 28, 36, 200)
		surface_DrawRect(0, 50, w, 30)

		surface_SetDrawColor(0, 0, 0, 255)
		surface_DrawRect(1, 51, w - 2, 28)

		surface_SetDrawColor(health_red / 5, health_green / 5, 0)
		surface_DrawRect(1, 51, w - 2, 28)

		surface_SetDrawColor(health_red, health_green, 0, 60)
		surface_SetMaterial(gradient_u)
		surface_DrawTexturedRect(1, 51, (w - 2) * health_ratio, 28)

		draw_SimpleTextOutlined(health_string, "TimeLeft", w / 2, 52, self.Colors.white, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 2, self.Colors.shadow)
	end

	self.CurCard.Think = function(s)
		if (s.EndTime <= CurTime() and not s.ExitingScreen) then
			s.ExitingScreen = true

			s:MoveTo(self.CardInfoF.x, self.CardInfoF.y - 10, 0.1, 0, -1, function(a, p)
				p:MoveTo(self.CardInfo.x, self.CardInfo.y, 0.2, 0, -1, function(a2, p2)
					s:Remove()
					self.CurCard = nil
				end)
			end)
		end
	end

	self.CurCard:MoveTo(self.CardInfoF.x, self.CardInfoF.y - 10, 0.3, 0, -1, function(a, p)
		p:MoveTo(self.CardInfoF.x, self.CardInfoF.y, 0.1, 0, -1)
	end)
end

net.Receive("moat_killcard_died", function()
	local dtype = net.ReadUInt(8)
	local kply = net.ReadEntity()

	if (dtype == 1) then
		local role = net.ReadString()

		MOAT_KILLCARDS:DrawDeathCard(kply, dtype, net.ReadEntity(), role)
	else
		MOAT_KILLCARDS:DrawDeathCard(kply, dtype)
	end
end)