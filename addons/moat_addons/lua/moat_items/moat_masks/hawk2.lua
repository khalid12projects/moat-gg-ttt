ITEM.Name = "Brown Hawk Mask"
ITEM.ID = 402
ITEM.Description = "Show off your true Patriotism"
ITEM.Rarity = 6
ITEM.Collection = "Urban Style Collection"
ITEM.Model = "models/sal/hawk_2.mdl"
ITEM.Attachment = "eyes"

function ITEM:ModifyClientsideModel(ply, model, pos, ang)

	model:SetModelScale( 1.1, 0 )
	pos = pos + (ang:Forward() * -4.406860) + (ang:Right() * 0.094940) +  (ang:Up() * -3.257416)
	
	return model, pos, ang
end

