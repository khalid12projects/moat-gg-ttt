AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
	self.Entity:SetModel("models/weapons/w_bugbait.mdl")
	self:PrecacheGibs()
	self.Entity:PhysicsInit(SOLID_VPHYSICS)
	self.Entity:SetMoveType(MOVETYPE_VPHYSICS)
	self.Entity:SetSolid(SOLID_VPHYSICS)

	local Phys = self.Entity:GetPhysicsObject()
	if (Phys:IsValid()) then
		Phys:Wake()
	end
end

function ENT:PhysicsCollide(Data, PhysObj)
	if (Data.HitEntity:IsPlayer()) then
		self:Cure(Data.HitEntity)
	end
	
	self.Entity:EmitSound("physics/flesh/flesh_squishy_impact_hard"..math.random(1, 4)..".wav", 100, 100)
	
	self:Remove()
end

function ENT:OnRemove( )	
end

function ENT:OnTakeDamage(DmgInfo)
end

function ENT:Think()
end


function ENT:Break()
	
end
