/*

SWEP.Category				= "GMod Tower Tribute"
SWEP.Author				= "Babel Industries"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= "Pried out of the hands of a dead Mississippi man, this double barreled shotgun is immensely powerful."
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "Double-Barrel"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 3				-- Slot in the weapon selection menu
SWEP.SlotPos				= 21			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= true		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "shotgun"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles

SWEP.DisableChambering = true
SWEP.CanBeSilenced		= false
SWEP.ViewModelFOV			= 69
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_vir_doubleb.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_vir_doubleb.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.FiresUnderwater = false
SWEP.Akimbo = false


SWEP.SelectiveFire		= false


SWEP.Primary.Sound			= Sound("Weapon_Double.Fire")		-- Script that calls the primary fire sound
SWEP.Primary.RPM				= 200			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 2		-- Size of a clip
SWEP.Primary.DefaultClip		= 120		-- Bullets you start with
SWEP.Primary.KickUp				= 0.09		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.09		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.09		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false	-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "buckshot"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a light metal peircing shotgun pellets

SWEP.Secondary.IronFOV			= 90		-- How much you 'zoom' in. Less is more! 	
SWEP.Primary.RPM_Semi				= 4200
SWEP.IronSightsSensitivity = 1

SWEP.SelectiveFire		= true
SWEP.FireModes = { 
	"2Burst",
	"Auto"
}

--Recoil Related
SWEP.Primary.KickUp			= 1.80						-- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown			= 1.80						-- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal			= 1.80						-- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.45 	--Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

SWEP.data 				= {}				--The starting firemode
SWEP.data.ironsights			= 1

SWEP.Primary.NumShots	= 20		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 20	-- Base damage per bullet
SWEP.Primary.Spread		= 0.065		-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0.065	 -- Ironsight accuracy, should be the same for shotguns

SWEP.Primary.SpreadMultiplierMax = 1.5 --How far the spread can expand when you shoot.
SWEP.Primary.SpreadIncrement = 1/3.5 --What percentage of the modifier is added on, per shot.
SWEP.Primary.SpreadRecovery = 3 --How much the spread recovers, per second.

--[[SHOTGUN CODE]]--

SWEP.Shotgun = true --Enable shotgun style reloading.

SWEP.ShellTime			= 0.35 -- For shotguns, how long it takes to insert a shell.

-- Enter iron sight info and bone mod info below
SWEP.SightsPos = Vector(-2.76, 4, -0.681)
SWEP.SightsAng = Vector(0, 0, 0)
SWEP.RunSightsPos = Vector()
SWEP.RunSightsAng = Vector()
SWEP.InspectPos = Vector(4.342, -3.747, 1.674)
SWEP.InspectAng = Vector(9.671, 33.223, 17.246)
SWEP.Offset = {
        Pos = {
        Up = 1.3,
        Right = 0.53,
        Forward = 3.892,
        },
        Ang = {
        Up = -1.034,
        Right =  -10.749,
        Forward = 174.756,
        },
		Scale = 1.16
}
*/

AddCSLuaFile()

DEFINE_BASECLASS "weapon_tttbase"

SWEP.HoldType                   = "shotgun"

if CLIENT then
   SWEP.PrintName = "Double Barrel"

   SWEP.Slot = 2
   SWEP.Icon = "vgui/hud/weapon_doubleb"
end
SWEP.PrintName = "Double Barrel"

SWEP.Base                               = "weapon_tttbase"
SWEP.Spawnable = true

SWEP.Kind = WEAPON_HEAVY
SWEP.WeaponID = AMMO_SHOTGUN

SWEP.Primary.Ammo = "Buckshot"
SWEP.Primary.Delay = 1.2
SWEP.Primary.Recoil = 7
SWEP.Primary.Cone = 0.08
SWEP.Primary.Damage = 15
SWEP.Primary.ClipSize = 2
SWEP.Primary.ClipMax = 8
SWEP.Primary.DefaultClip = 2
SWEP.Primary.Automatic = true
SWEP.Primary.NumShots = 8
SWEP.AutoSpawnable      = false
SWEP.AmmoEnt = "item_box_buckshot_ttt"
SWEP.ShowWorldModel                     = false

SWEP.ViewModelFOV                       = 69
SWEP.ViewModelFlip                      = false
SWEP.ViewModel                          = "models/weapons/v_vir_doubleb.mdl"    -- Weapon view model
SWEP.WorldModel                         = "models/weapons/w_vir_doubleb.mdl"    -- Weapon world model
SWEP.Primary.Sound                      = Sound( "Weapon_Double.Fire" )

SWEP.IronSightsPos = Vector( -2.8, 0, 0 )
SWEP.IronSightsAng = Vector( 0, 0, 0 )

function SWEP:SetupDataTables()
   self:NetworkVar("Bool", 0, "Reloading")
   self:NetworkVar("Float", 0, "ReloadTimer")

   return BaseClass.SetupDataTables(self)
end

function SWEP:Reload()

   --if self:GetNetworkedBool( "reloading", false ) then return end
   if self:GetReloading() then return end

   if self:Clip1() < self.Primary.ClipSize and self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 then

      if self:StartReload() then
         return
      end
   end

end

function SWEP:StartReload()
   --if self:GetNWBool( "reloading", false ) then
   if self:GetReloading() then
      return false
   end

   self:SetIronsights( false )

   self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )

   local ply = self.Owner

   if not ply or ply:GetAmmoCount(self.Primary.Ammo) <= 0 then
      return false
   end

   local wep = self

   if wep:Clip1() >= self.Primary.ClipSize then
      return false
   end

   wep:SendWeaponAnim(ACT_SHOTGUN_RELOAD_START)

   self:SetReloadTimer(CurTime() + wep:SequenceDuration())

   --wep:SetNWBool("reloading", true)
   self:SetReloading(true)

   return true
end

function SWEP:PerformReload()
   local ply = self.Owner

   -- prevent normal shooting in between reloads
   self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )

   if not ply or ply:GetAmmoCount(self.Primary.Ammo) <= 0 then return end

   if self:Clip1() >= self.Primary.ClipSize then return end

   self.Owner:RemoveAmmo( 1, self.Primary.Ammo, false )
   self:SetClip1( self:Clip1() + 1 )

   self:SendWeaponAnim(ACT_VM_RELOAD)

   self:SetReloadTimer(CurTime() + self:SequenceDuration())
end

function SWEP:FinishReload()
   self:SetReloading(false)
   self:SendWeaponAnim(ACT_SHOTGUN_RELOAD_FINISH)

   self:SetReloadTimer(CurTime() + self:SequenceDuration())
end

function SWEP:CanPrimaryAttack()
   if self:Clip1() <= 0 then
      self:EmitSound( "Weapon_Shotgun.Empty" )
      self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
      return false
   end
   return true
end

function SWEP:Think()
   BaseClass.Think(self)

   if self:GetReloading() then
      if self.Owner:KeyDown(IN_ATTACK) then
         self:FinishReload()
         return
      end

      if self:GetReloadTimer() <= CurTime() then

         if self.Owner:GetAmmoCount(self.Primary.Ammo) <= 0 then
            self:FinishReload()
         elseif self:Clip1() < self.Primary.ClipSize then
            self:PerformReload()
         else
            self:FinishReload()
         end
         return
      end
   end
end

function SWEP:Deploy()
   self:SetReloading(false)
   self:SetReloadTimer(0)
   return BaseClass.Deploy(self)
end

-- The shotgun's headshot damage multiplier is based on distance. The closer it
-- is, the more damage it does. This reinforces the shotgun's role as short
-- range weapon by reducing effectiveness at mid-range, where one could score
-- lucky headshots relatively easily due to the spread.
function SWEP:GetHeadshotMultiplier(victim, dmginfo)
   local att = dmginfo:GetAttacker()
   if not IsValid(att) then return 3 end

   local dist = victim:GetPos():Distance(att:GetPos())
   local d = math.max(0, dist - 140)

   -- decay from 3.1 to 1 slowly as distance increases
   return 0.8 + math.max(0, (2.1 - 0.002 * (d ^ 1.25)))
end

function SWEP:SecondaryAttack()
   if self.NoSights or (not self.IronSightsPos) or self:GetReloading() then return end
   --if self:GetNextSecondaryFire() > CurTime() then return end

   self:SetIronsights(not self:GetIronsights())

   self:SetNextSecondaryFire(CurTime() + 0.3)
end

SWEP.Offset = {
        Pos = {
        Up = 1.3,
        Right = 0.53,
        Forward = 2.092,
        },
        Ang = {
        Up = -1.034,
        Right =  -10.749,
        Forward = 174.756,
        },
                Scale = 1.16
}

function SWEP:DrawWorldModel()
    local hand, offset, rotate
    local pl = self:GetOwner()

    if IsValid(pl) and pl.SetupBones then
        pl:SetupBones()
        pl:InvalidateBoneCache()
        self:InvalidateBoneCache()
    end

    if IsValid(pl) then
        local boneIndex = pl:LookupBone("ValveBiped.Bip01_R_Hand")

        if boneIndex then
            local pos, ang

            local mat = pl:GetBoneMatrix(boneIndex)
            if mat then
                pos, ang = mat:GetTranslation(), mat:GetAngles()
            else
                pos, ang = pl:GetBonePosition( handBone )
            end

            pos = pos + ang:Forward() * self.Offset.Pos.Forward + ang:Right() * self.Offset.Pos.Right + ang:Up() * self.Offset.Pos.Up
            ang:RotateAroundAxis(ang:Up(), self.Offset.Ang.Up)
            ang:RotateAroundAxis(ang:Right(), self.Offset.Ang.Right)
            ang:RotateAroundAxis(ang:Forward(), self.Offset.Ang.Forward)
            self:SetModelScale(self.Offset.Scale or 1, 0)
            self:SetRenderOrigin(pos)
            self:SetRenderAngles(ang)
            self:DrawModel()
        end
    else
        self:SetRenderOrigin(nil)
        self:SetRenderAngles(nil)
        self:DrawModel()
    end
end
