ITEM.ID = 7101
ITEM.Name = "Santa's Crate"
ITEM.Description = "Every player will receive a Holiday Crate when this item is used"
ITEM.ShopDesc = "Every player on the server will receive a Holiday Crate when this is used!\nOnly buy this if you are sure that you want to do that!\n<3<3<3<3"
ITEM.Rarity = 8
ITEM.Active = true
ITEM.Preview = false
ITEM.NewItem = 1546128000
ITEM.Price = 50000
ITEM.Collection = "Santa's Collection"
ITEM.Image = "https://cdn.moat.gg/f/kwtCke5lGymTLOXCGpJsL48Vk187.png"
ITEM.ItemUsed = function(pl, slot, item)
	for k, v in pairs(player.GetAll()) do
		v:m_DropInventoryItem("Holiday Crate")
	end
end