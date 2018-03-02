ITEM.Name = "Black Doctor Mask"
ITEM.ID = 507
ITEM.Description = "Black doctors are the best doctors out there"
ITEM.Rarity = 2
ITEM.Collection = "Urban Style Collection"
ITEM.Skin = 2
ITEM.Model = "models/sal/halloween/doctor.mdl"
ITEM.Attachment = "eyes"



function ITEM:ModifyClientsideModel(ply, model, pos, ang)

	model:SetSkin( 2 )
	model:SetModelScale( 1.1, 0 )
	
	if (moat_TerroristModels[ply:GetModel()]) then
		pos = pos + (ang:Forward() * -4.917358) + (ang:Right() * 0.063934) + (ang:Up() * -1.163300)
	else
		pos = pos + (ang:Forward() * -4.917358) + (ang:Right() * 0.063934) + (ang:Up() * -2.5)
	end
		
	return model, pos, ang
end

