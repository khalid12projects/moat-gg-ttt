AddCSLuaFile()

MOAT_PAINT = MOAT_PAINT or {}

MOAT_PAINT.Colors = MOAT_PAINT.Colors or {
  {"Mint Green", {3, 255, 171}, 6},
  {"Joker Green", {2, 153, 57}, 3},
  {"Pindel Pink", {247, 136, 206}, 5},
  {"Bleek Banana", {236, 255, 140}, 3},
  {"Water Melon", {187, 235, 42}, 4},
  {"Magnetic Blue", {73, 76, 153}, 3},
  {"Aqua Blue", {66, 208, 255}, 4},
  {"Toxic Yellow", {221, 225, 3}, 6},
  {"Bright Purple", {96, 62, 148}, 4},
  {"Neon Pink", {255, 105, 180}, 5},
  {"Bright Gold", {227, 190, 70}, 7},
  {"Turkey Stuffer Green", {22, 161, 18}, 5},
  {"Neon Green", {5, 193, 25}, 4},
  {"Neon Purple", {27, 29, 163}, 6},
  {"Dark Gold Chrome", {251, 184, 41}, 7},
  {"Hot Pink", {255, 105, 180}, 7},
  {"Detox Purple", {157, 153, 188}, 3},
  {"Glossy Green", {0, 70, 0}, 3},
  {"Sky Blue", {127, 200, 255}, 5},
  {"Neon Sky Blue", {123, 255, 255}, 6},
  {"Pure Black", {0, 0, 0}, 6},
  {"Sharpe Yellow", {255, 255, 1}, 6},
  {"Bright Orange", {251, 86, 4}, 6},
  {"Cotton Candy Pink", {249, 82, 107}, 6},
  {"Deep Red", {229, 14, 6}, 3},
  {"Flueorescent Blue", {5, 193, 255}, 4},
  {"Freeze Green", {140, 255, 50}, 4},
  {"Red Bull Blue", {51, 51, 153}, 3},
  {"Monster Energy Neon Green", {51, 255, 153}, 3},
  {"Dr. Pepper Red", {153, 34, 34}, 3},
  {"Razer Green", {71, 225, 12}, 4},
  {"Electric Lime", {206, 250, 5}, 3},
  {"Blazing Blue", {44, 117, 255}, 3},
  {"Sunshine Orange", {255, 65, 5}, 4},
  {"Electric Indigo", {111, 0, 255}, 5},
  {"American Rose", {255, 3, 62}, 6},
  {"Lazer Blue", {0, 15, 255}, 4},
  {"Neon Aqua Blue", {123, 255,255}, 5},
  {"Bleak Banana", {236, 255, 140}, 3},
  {"Chameleon Green", {0, 43, 21}, 3},
  {"Perpiling Purple", {140, 138, 255}, 4},
  {"Serpentine Green", {64, 124, 132}, 3},
  {"Menacing Red", {52, 0, 17}, 4},
  {"Creamsicle Orange", {242, 80, 32}, 5},
  {"Glycerine Green", {3, 51, 9}, 3},
  {"Corrosive Green", {132, 255, 10}, 5},
  {"Electric Lime", {80, 100, 0}, 3},
  {"Deep Pink", {100, 0, 40}, 5},
  {"Pure Orange", {100, 60, 0}, 3},
  {"Very Soft Pink", {97, 69, 72}, 3},
  {"New Lime", {3, 39, 15}, 3},
  {"Brown Town", {39, 15, 3}, 4},
  {"Nardo Grey", {104, 106, 118}, 5},
  {"Light Teal", {103, 186, 181}, 4},
  {"Neon Mint", {0, 204, 120}, 5},
  {"Neon Lime", {0, 150, 45}, 4},
  {"Pure White", {255, 255, 255}, 6},
  {"George's Surprise", {115, 34, 136}, 7},
}
/*
MOAT_PAINT.Textures = {
  {"Flesh", "models/flesh", 7}
}
*/
MOAT_PAINT.Tints = MOAT_PAINT.Tints or {
	[6001] = {'Mint Green Tint', {3, 255, 171}, 6},
	[6002] = {'Joker Green Tint', {2, 153, 57}, 3},
	[6003] = {'Pindel Pink Tint', {247, 136, 206}, 5},
	[6004] = {'Bleek Banana Tint', {236, 255, 140}, 3},
	[6005] = {'Water Melon Tint', {187, 235, 42}, 4},
	[6006] = {'Magnetic Blue Tint', {73, 76, 153}, 3},
	[6007] = {'Aqua Blue Tint', {66, 208, 255}, 4},
	[6008] = {'Toxic Yellow Tint', {221, 225, 3}, 6},
	[6009] = {'Bright Purple Tint', {96, 62, 148}, 4},
	[6010] = {'Neon Pink Tint', {255, 105, 180}, 5},
	[6011] = {'Bright Gold Tint', {227, 190, 70}, 7},
	[6012] = {'Turkey Stuffer Green Tint', {22, 161, 18}, 5},
	[6013] = {'Neon Green Tint', {5, 193, 25}, 4},
	[6014] = {'Neon Purple Tint', {27, 29, 163}, 6},
	[6015] = {'Dark Gold Chrome Tint', {251, 184, 41}, 7},
	[6016] = {'Hot Pink Tint', {255, 105, 180}, 7},
	[6017] = {'Detox Purple Tint', {157, 153, 188}, 3},
	[6018] = {'Glossy Green Tint', {0, 70, 0}, 3},
	[6019] = {'Sky Blue Tint', {127, 200, 255}, 5},
	[6020] = {'Neon Sky Blue Tint', {123, 255, 255}, 6},
	[6021] = {'Pure Black Tint', {0, 0, 0}, 6},
	[6022] = {'Sharpe Yellow Tint', {255, 255, 1}, 6},
	[6023] = {'Bright Orange Tint', {251, 86, 4}, 6},
	[6024] = {'Cotton Candy Pink Tint', {249, 82, 107}, 6},
	[6025] = {'Deep Red Tint', {229, 14, 6}, 3},
	[6026] = {'Flueorescent Blue Tint', {5, 193, 255}, 4},
	[6027] = {'Freeze Green Tint', {140, 255, 50}, 4},
	[6028] = {'Red Bull Blue Tint', {51, 51, 153}, 3},
	[6029] = {'Monster Energy Neon Green Tint', {51, 255, 153}, 3},
	[6030] = {'Dr. Pepper Red Tint', {153, 34, 34}, 3},
	[6031] = {'Razer Green Tint', {71, 225, 12}, 4},
	[6032] = {'Electric Lime Tint', {206, 250, 5}, 3},
	[6033] = {'Blazing Blue Tint', {44, 117, 255}, 3},
	[6034] = {'Sunshine Orange Tint', {255, 65, 5}, 4},
	[6035] = {'Electric Indigo Tint', {111, 0, 255}, 5},
	[6036] = {'American Rose Tint', {255, 3, 62}, 6},
	[6037] = {'Lazer Blue Tint', {0, 15, 255}, 4},
	[6038] = {'Neon Aqua Blue Tint', {123, 255, 255}, 5},
	[6039] = {'Bleak Banana Tint', {236, 255, 140}, 3},
	[6040] = {'Chameleon Green Tint', {0, 43, 21}, 3},
	[6041] = {'Perpiling Purple Tint', {140, 138, 255}, 4},
	[6042] = {'Serpentine Green Tint', {64, 124, 132}, 3},
	[6043] = {'Menacing Red Tint', {52, 0, 17}, 4},
	[6044] = {'Creamsicle Orange Tint', {242, 80, 32}, 5},
	[6045] = {'Glycerine Green Tint', {3, 51, 9}, 3},
	[6046] = {'Corrosive Green Tint', {132, 255, 10}, 5},
	[6047] = {'Electric Lime Tint', {80, 100, 0}, 3},
	[6048] = {'Deep Pink Tint', {100, 0, 40}, 5},
	[6049] = {'Pure Orange Tint', {100, 60, 0}, 3},
	[6050] = {'Very Soft Pink Tint', {97, 69, 72}, 3},
	[6051] = {'New Lime Tint', {3, 39, 15}, 3},
	[6052] = {'Brown Town Tint', {39, 15, 3}, 4},
	[6053] = {'Nardo Grey Tint', {104, 106, 118}, 5},
	[6054] = {'Light Teal Tint', {103, 186, 181}, 4},
	[6055] = {'Neon Mint Tint', {0, 204, 120}, 5},
	[6056] = {'Neon Lime Tint', {0, 150, 45}, 4},
	[6057] = {'Pure White Tint', {255, 255, 255}, 6},
	[6058] = {'George\'s Surprise Tint', {115, 34, 136}, 7},
	[6566] = {'Infinity Tint', {255, 255, 255}, 9, 'https://cdn.moat.gg/f/57731eec78594998cdfecf618fdb3cad.png', Dream = true}
}

MOAT_PAINT.Paints = MOAT_PAINT.Paints or {
	[6059] = {'Mint Green Paint', {3, 255, 171}, 6},
	[6060] = {'Joker Green Paint', {2, 153, 57}, 3},
	[6061] = {'Pindel Pink Paint', {247, 136, 206}, 5},
	[6062] = {'Bleek Banana Paint', {236, 255, 140}, 3},
	[6063] = {'Water Melon Paint', {187, 235, 42}, 4},
	[6064] = {'Magnetic Blue Paint', {73, 76, 153}, 3},
	[6065] = {'Aqua Blue Paint', {66, 208, 255}, 4},
	[6066] = {'Toxic Yellow Paint', {221, 225, 3}, 6},
	[6067] = {'Bright Purple Paint', {96, 62, 148}, 4},
	[6068] = {'Neon Pink Paint', {255, 105, 180}, 5},
	[6069] = {'Bright Gold Paint', {227, 190, 70}, 7},
	[6070] = {'Turkey Stuffer Green Paint', {22, 161, 18}, 5},
	[6071] = {'Neon Green Paint', {5, 193, 25}, 4},
	[6072] = {'Neon Purple Paint', {27, 29, 163}, 6},
	[6073] = {'Dark Gold Chrome Paint', {251, 184, 41}, 7},
	[6074] = {'Hot Pink Paint', {255, 105, 180}, 7},
	[6075] = {'Detox Purple Paint', {157, 153, 188}, 3},
	[6076] = {'Glossy Green Paint', {0, 70, 0}, 3},
	[6077] = {'Sky Blue Paint', {127, 200, 255}, 5},
	[6078] = {'Neon Sky Blue Paint', {123, 255, 255}, 6},
	[6079] = {'Pure Black Paint', {0, 0, 0}, 6},
	[6080] = {'Sharpe Yellow Paint', {255, 255, 1}, 6},
	[6081] = {'Bright Orange Paint', {251, 86, 4}, 6},
	[6082] = {'Cotton Candy Pink Paint', {249, 82, 107}, 6},
	[6083] = {'Deep Red Paint', {229, 14, 6}, 3},
	[6084] = {'Flueorescent Blue Paint', {5, 193, 255}, 4},
	[6085] = {'Freeze Green Paint', {140, 255, 50}, 4},
	[6086] = {'Red Bull Blue Paint', {51, 51, 153}, 3},
	[6087] = {'Monster Energy Neon Green Paint', {51, 255, 153}, 3},
	[6088] = {'Dr. Pepper Red Paint', {153, 34, 34}, 3},
	[6089] = {'Razer Green Paint', {71, 225, 12}, 4},
	[6090] = {'Electric Lime Paint', {206, 250, 5}, 3},
	[6091] = {'Blazing Blue Paint', {44, 117, 255}, 3},
	[6092] = {'Sunshine Orange Paint', {255, 65, 5}, 4},
	[6093] = {'Electric Indigo Paint', {111, 0, 255}, 5},
	[6094] = {'American Rose Paint', {255, 3, 62}, 6},
	[6095] = {'Lazer Blue Paint', {0, 15, 255}, 4},
	[6096] = {'Neon Aqua Blue Paint', {123, 255, 255}, 5},
	[6097] = {'Bleak Banana Paint', {236, 255, 140}, 3},
	[6098] = {'Chameleon Green Paint', {0, 43, 21}, 3},
	[6099] = {'Perpiling Purple Paint', {140, 138, 255}, 4},
	[6100] = {'Serpentine Green Paint', {64, 124, 132}, 3},
	[6101] = {'Menacing Red Paint', {52, 0, 17}, 4},
	[6102] = {'Creamsicle Orange Paint', {242, 80, 32}, 5},
	[6103] = {'Glycerine Green Paint', {3, 51, 9}, 3},
	[6104] = {'Corrosive Green Paint', {132, 255, 10}, 5},
	[6105] = {'Electric Lime Paint', {80, 100, 0}, 3},
	[6106] = {'Deep Pink Paint', {100, 0, 40}, 5},
	[6107] = {'Pure Orange Paint', {100, 60, 0}, 3},
	[6108] = {'Very Soft Pink Paint', {97, 69, 72}, 3},
	[6109] = {'New Lime Paint', {3, 39, 15}, 3},
	[6110] = {'Brown Town Paint', {39, 15, 3}, 4},
	[6111] = {'Nardo Grey Paint', {104, 106, 118}, 5},
	[6112] = {'Light Teal Paint', {103, 186, 181}, 4},
	[6113] = {'Neon Mint Paint', {0, 204, 120}, 5},
	[6114] = {'Neon Lime Paint', {0, 150, 45}, 4},
	[6115] = {'Pure White Paint', {255, 255, 255}, 6},
	[6116] = {'George\'s Surprise Paint', {115, 34, 136}, 7},
	[6565] = {'Infinity Paint', {255, 255, 255}, 9, 'https://cdn.moat.gg/f/57731eec78594998cdfecf618fdb3cad.png', Dream = true}
}

local holidays = 'Holiday Collection'
MOAT_PAINT.Skins = MOAT_PAINT.Skins or {
	[6117] = {'Flesh Skin', 'https://cdn.moat.gg/f/20688272007422241100.vtf', 7, 'https://cdn.moat.gg/f/63853522385224562742.png'},
	[6119] = {'Test Skin', 'https://i.imgur.com/dvRkf9t.png'/*'https://cdn.moat.gg/ttt/uwu/b4573.vtf'*/, 8, nil, 'Testing Collection'},
	[6120] = {'Merry Poops', 'https://cdn.moat.gg/ttt/uwu/merry_poops.vtf', 3, 'https://cdn.moat.gg/ttt/uwu/owo/1/0.png', holidays},
	[6123] = {'Blizzard Skin', 'https://cdn.moat.gg/ttt/uwu/blizzard.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/1/1.png', holidays},
	[6127] = {'Pokemon Skin', 'https://cdn.moat.gg/ttt/uwu/pokemon.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/1/2.png', holidays},
	[6128] = {'Playful Skin', 'https://cdn.moat.gg/ttt/uwu/playful.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/1/3.png', holidays},
	[6129] = {'Xmas Skin', 'https://cdn.moat.gg/ttt/uwu/xmas.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/1/4.png', holidays},
	[6131] = {'Stickers Skin', 'https://cdn.moat.gg/ttt/uwu/stickers.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/1/6.png', holidays},
	[6132] = {'Warrior Skin', 'https://cdn.moat.gg/ttt/uwu/warrior.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/1/7.png', holidays},
	[6133] = {'Scales Skin','https://cdn.moat.gg/ttt/uwu/scales.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/1/25.png', holidays},
	[6151] = {'Polkadot Skin', 'https://cdn.moat.gg/ttt/uwu/polkadot.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/1/9.png', holidays},
	[6140] = {'Flourish Skin', 'https://cdn.moat.gg/ttt/uwu/flourish.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/1/20.png', holidays},
	[6136] = {'Riptide Skin', 'https://cdn.moat.gg/ttt/uwu/riptide.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/1/14.png', holidays},
	[6135] = {'Lightning Skin', 'https://cdn.moat.gg/ttt/uwu/lightning.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/1/17.png', holidays},
	[6137] = {'Magma Skin', 'https://cdn.moat.gg/ttt/uwu/magma.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/1/12.png', holidays},
	[6138] = {'Polygon Skin', 'https://cdn.moat.gg/ttt/uwu/polygon.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/1/16.png', holidays},
	[6139] = {'Comic Skin', 'https://cdn.moat.gg/ttt/uwu/comic.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/1/18.png', holidays},
	[6141] = {'Zebra Skin', 'https://cdn.moat.gg/ttt/uwu/zebra.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/1/19.png', holidays},
	[6130] = {'Hype Skin', 'https://cdn.moat.gg/ttt/uwu/hype.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/1/5.png', holidays},
	[6142] = {'Sherbert Skin', 'https://cdn.moat.gg/ttt/uwu/sherbert.vtf', 7, 'https://cdn.moat.gg/ttt/uwu/owo/1/24.png', holidays},
	[6143] = {'Trippin Skin', 'https://cdn.moat.gg/ttt/uwu/trippin.vtf', 7, 'https://cdn.moat.gg/ttt/uwu/owo/1/23.png', holidays},
	[6134] = {'Holo Skin', 'https://cdn.moat.gg/ttt/uwu/holo.vtf', 7, 'https://cdn.moat.gg/ttt/uwu/owo/1/21.png', holidays},
	[6144] = {'Gold Skin', 'https://cdn.moat.gg/ttt/uwu/gold.vtf', 7, 'https://cdn.moat.gg/ttt/uwu/owo/1/11.png', holidays},
	[6149] = {'Skrilla Skin', 'https://cdn.moat.gg/f/skrilla.vtf', 7, 'https://cdn.moat.gg/f/26.png', holidays},
	[6145] = {'Hotline Skin', 'https://cdn.moat.gg/ttt/uwu/hotline.vtf', 9, 'https://cdn.moat.gg/ttt/uwu/owo/1/8.png', holidays},
	[6146] = {'Galaxy Skin', 'https://cdn.moat.gg/ttt/uwu/galaxy.vtf', 9, 'https://cdn.moat.gg/ttt/uwu/owo/1/13.png', holidays},
	[6154] = {'Elevate Skin', 'https://cdn.moat.gg/ttt/uwu/elevate.vtf', 7, 'https://cdn.moat.gg/ttt/uwu/owo/1/27.png', holidays},
	[6200] = {'Blurred Neon', 'https://cdn.moat.gg/ttt/uwu/blurred_neon.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/8386aa028923f6a3dd29c47ef921858c.png', 'Easter 2019 Collection'},
	[6201] = {'Bubbles','https://cdn.moat.gg/ttt/uwu/bubbles.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/6e44b0bdd0825e94314b7c3213b826c3.png', 'Easter 2019 Collection'},
	[6202] = {'Butterflies', 'https://cdn.moat.gg/ttt/uwu/butterflies.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/2/2e098152134e19a1d46b70e3891915e0.jpg.png', 'Easter 2019 Collection'},
	[6203] = {'Camo', 'https://cdn.moat.gg/ttt/uwu/camo.vtf', 3, 'https://cdn.moat.gg/ttt/uwu/owo/2/26999dfcaa29a2f603624dd2e7578a5c.jpg.png', 'Easter 2019 Collection'},
	[6204] = {'Caution', 'https://cdn.moat.gg/ttt/uwu/caution.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/efb9e85dcbc8d7e8d1f26e829754d192.jpg.png', 'Easter 2019 Collection'},
	[6205] = {'Cheetah', 'https://cdn.moat.gg/ttt/uwu/cheetah.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/2/2bca40a67181b8140ca9c08e4fbf3ce1.jpg.png', 'Easter 2019 Collection'},
	[6206] = {'Dew', 'https://cdn.moat.gg/ttt/uwu/dew.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/2/3c7169761fb38e824f85a3934a0339a6.jpg.png', 'Easter 2019 Collection'},
	[6207] = {'Electric Current', 'https://cdn.moat.gg/ttt/uwu/.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/763b8407dba8b2102880b2210d679220.png', 'Easter 2019 Collection'},
	[6208] = {'Encrypted','https://cdn.moat.gg/ttt/uwu/.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/b21555007ac41a2902398a462560affa.png', 'Easter 2019 Collection'},
	[6209] = {'Energy Flower', 'https://cdn.moat.gg/ttt/uwu/energy_flower.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/3370671649f4764afc07574466d85e05.jpg.png', 'Easter 2019 Collection'},
	[6210] = {'Energy', 'https://cdn.moat.gg/ttt/uwu/energy.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/2/4e50c2f170712682f3ce78f0c1d93168.jpg.png', 'Easter 2019 Collection'},
	[6211] = {'Fantasy','https://cdn.moat.gg/ttt/uwu/fantasy.vtf', 7, 'https://cdn.moat.gg/ttt/uwu/owo/2/9df22d8c941edfa345c794c6f6343aa8.png', 'Easter 2019 Collection'},
	[6212] = {'Glitch','https://cdn.moat.gg/ttt/uwu/glitch.vtf', 7, 'https://cdn.moat.gg/ttt/uwu/owo/2/300d4710501cc1332f1030a9cd80fe17.png', 'Easter 2019 Collection'},
	[6213] = {'Hairy Dragon', 'https://cdn.moat.gg/ttt/uwu/hairy_dragon.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/9d832c58737ea628dfefe14ddf62010c.jpg.png', 'Easter 2019 Collection'},
	[6214] = {'Halo', 'https://cdn.moat.gg/ttt/uwu/halo.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/2/f2a69a05c99bb506d028be0e31d7d615.jpg.png', 'Easter 2019 Collection'},
	[6215] = {'Heatwave','https://cdn.moat.gg/ttt/uwu/heatwave.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/d58bf097bad54764a67b37088437dc31.png', 'Easter 2019 Collection'},
	[6216] = {'Hyperdrive', 'https://cdn.moat.gg/ttt/uwu/hyperdrive.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/05789d96474c80c2bb9a6e86b11dcf2a.png', 'Easter 2019 Collection'},
	[6217] = {'Hypno', 'https://cdn.moat.gg/ttt/uwu/hypno.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/aa9c50ad672c54e36ee5df8de15eb102.jpg.png', 'Easter 2019 Collection'},
	[6218] = {'Illusion', 'https://cdn.moat.gg/ttt/uwu/illusion.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/73ddf39d987cf26bff825a807e64ee32.jpg.png', 'Easter 2019 Collection'},
	[6219] = {'Kaleidoscope', 'https://cdn.moat.gg/ttt/uwu/kaleidoscope.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/9527ea7c171b0f03b3d37c9f8c92f522.png', 'Easter 2019 Collection'},
	[6220] = {'Kali', 'https://cdn.moat.gg/ttt/uwu/kali.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/4e3671954223fe4e55e25a24850da1de.jpg.png', 'Easter 2019 Collection'},
	[6221] = {'Lava Lamp', 'https://cdn.moat.gg/ttt/uwu/lava_lamp.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/2/98cddcb0be672f1edf9a025368387046.png', 'Easter 2019 Collection'},
	[6222] = {'Light Show','https://cdn.moat.gg/ttt/uwu/light_show.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/f4b666942ba450e36a81ddcb4deae445.jpg.png', 'Easter 2019 Collection'},
	[6223] = {'Loofa', 'https://cdn.moat.gg/ttt/uwu/loofa.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/096d3872874a46ab8b7c90a3c11b1722.png', 'Easter 2019 Collection'},
	[6224] = {'Lunar','https://cdn.moat.gg/ttt/uwu/lunar.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/1bec49a349602c7f1e8103deec138311.png', 'Easter 2019 Collection'},
	[6225] = {'Magikarp', 'https://cdn.moat.gg/ttt/uwu/magikarp.vtf', 7, 'https://cdn.moat.gg/ttt/uwu/owo/2/4f7f00786c835fb61c4dde9d888c3aa5.jpg.png', 'Easter 2019 Collection'},
	[6226] = {'Mirrored', 'https://cdn.moat.gg/ttt/uwu/mirrored.vtf', 3, 'https://cdn.moat.gg/ttt/uwu/owo/2/e12490e67e214bf4f597f29dcbd43313.jpg.png', 'Easter 2019 Collection'},
	[6227] = {'Missing Green', 'https://cdn.moat.gg/ttt/uwu/missing_green.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/2f78bfbc6eb50ed5fbb62b955cb42cef.jpg.png', 'Easter 2019 Collection'},
	[6228] = {'Mosaic','https://cdn.moat.gg/ttt/uwu/mosaic.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/ffcec3d022cb2c72fdb327bec38a5d88.png', 'Easter 2019 Collection'},
	[6229] = {'Motherboard','https://cdn.moat.gg/ttt/uwu/motherboard.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/94fd7c9226bd7a6c9bd379c95fc553b0.png', 'Easter 2019 Collection'},
	[6230] = {'Neon Rider','https://cdn.moat.gg/ttt/uwu/neon_rider.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/80599b6d0f3a3733d12a0e76343f5c0c.png', 'Easter 2019 Collection'},
	[6231] = {'Pattern', 'https://cdn.moat.gg/ttt/uwu/pattern.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/e9f95060477c24caa31d27206e08b980.jpg.png', 'Easter 2019 Collection'},
	[6232] = {'Penguins','https://cdn.moat.gg/ttt/uwu/penguins.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/bb5f686263b962c0f180aa12731c0038.png', 'Easter 2019 Collection'},
	[6233] = {'Refraction', 'https://cdn.moat.gg/ttt/uwu/refraction.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/2dd95e12a6c1bfbb96b50c49ece779af.jpg.png', 'Easter 2019 Collection'},
	[6234] = {'Splat', 'https://cdn.moat.gg/ttt/uwu/splat.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/2/f68e6ba244a2643979b3f25c5c694049.jpg.png', 'Easter 2019 Collection'},
	[6235] = {'Starry', 'https://cdn.moat.gg/ttt/uwu/starry.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/6a57bc4a867ea83dba4bc95270663ae7.jpg.png', 'Easter 2019 Collection'},
	[6236] = {'Stem', 'https://cdn.moat.gg/ttt/uwu/stem.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/94aa34eb2558a67ae37041b9812ab485.jpg.png', 'Easter 2019 Collection'},
	[6237] = {'Sunflower', 'https://cdn.moat.gg/ttt/uwu/sunflower.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/2/93a14c7f43cfbc4909c2bdc547aae2f5.jpg.png', 'Easter 2019 Collection'},
	[6238] = {'Sunset', 'https://cdn.moat.gg/ttt/uwu/sunset.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/c6c34740a195115ef61f5f785fc96974.jpg.png', 'Easter 2019 Collection'},
	[6239] = {'Swirls', 'https://cdn.moat.gg/ttt/uwu/swirls.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/0209a13a0c4a8fc15e8a0a934dc02969.png', 'Easter 2019 Collection'},
	[6240] = {'Techno', 'https://cdn.moat.gg/ttt/uwu/techno.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/69b5ad1fa4b5b0085239a6388f6d5e11.jpg.png', 'Easter 2019 Collection'},
	[6241] = {'Tiles', 'https://cdn.moat.gg/ttt/uwu/tiles.vtf', 4, 'https://cdn.moat.gg/ttt/uwu/owo/2/f1ef513d825b3b75061c2040f67f25e2.jpg.png', 'Easter 2019 Collection'},
	[6242] = {'Triangles', 'https://cdn.moat.gg/ttt/uwu/triangles.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/f7b3d0c70bfbe27b4d0716dde28c1e44.jpg.png', 'Easter 2019 Collection'},
	[6243] = {'Void', 'https://cdn.moat.gg/ttt/uwu/void.vtf', 6, 'https://cdn.moat.gg/ttt/uwu/owo/2/41c59ed5285ec1793ad8ddcd7402f7a9.jpg.png', 'Easter 2019 Collection'},
	[6244] = {'Watery Night', 'https://cdn.moat.gg/ttt/uwu/watery_night.vtf', 5, 'https://cdn.moat.gg/ttt/uwu/owo/2/1d6c0535501256cae3d4b9d00ec45011.jpg.png', 'Easter 2019 Collection'},
	[6245] = {'Yellow Bricks', 'https://cdn.moat.gg/ttt/uwu/yellow_bricks.vtf', 3, 'https://cdn.moat.gg/ttt/uwu/owo/2/0e53fbc7723ee02365d27f35c378fdd9.jpg.png', 'Easter 2019 Collection'},
	[6246] = {'Yellow Flower', 'https://cdn.moat.gg/ttt/uwu/yellow_flower.vtf', 3, 'https://cdn.moat.gg/ttt/uwu/owo/2/b3e968f6ac6c99c6c3f9cd0320d1c0fa.jpg.png', 'Easter 2019 Collection'},

	[6247] = {'Acid Crater Skin', 'https://cdn.moat.gg/ttt/uwu/acid_crater.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/34.png', 'Pumpkin Collection'},
	[6248] = {'Alduinity Skin', 'https://cdn.moat.gg/ttt/uwu/alduinity.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/14.png', 'Pumpkin Collection'},
	[6249] = {'Archaic Arcade Skin', 'https://cdn.moat.gg/ttt/uwu/archaic_arcade.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/8.png', 'Pumpkin Collection'},
	[6250] = {'Burple Skin', 'https://cdn.moat.gg/ttt/uwu/burple.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/25.png', 'Pumpkin Collection'},
	[6251] = {'Californication Skin', 'https://cdn.moat.gg/ttt/uwu/californication.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/41.png', 'Pumpkin Collection'},
	[6252] = {'Candypot Skin', 'https://cdn.moat.gg/ttt/uwu/candypot.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/5.png', 'Pumpkin Collection'},
	[6253] = {'Choropleth Skin', 'https://cdn.moat.gg/ttt/uwu/choropleth.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/39.png', 'Pumpkin Collection'},
	[6254] = {'Cuddly Skin', 'https://cdn.moat.gg/ttt/uwu/cuddly.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/12.png', 'Pumpkin Collection'},
	[6255] = {'Cyter Skin', 'https://cdn.moat.gg/ttt/uwu/cyter.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/17.png', 'Pumpkin Collection'},
	[6256] = {'Daydream Skin', 'https://cdn.moat.gg/ttt/uwu/daydream.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/27.png', 'Pumpkin Collection'},
	[6257] = {'Deep Journey Skin', 'https://cdn.moat.gg/ttt/uwu/deep_journey.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/47.png', 'Pumpkin Collection'},
	[6258] = {'Deluded Skin', 'https://cdn.moat.gg/ttt/uwu/deluded.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/16.png', 'Pumpkin Collection'},
	[6259] = {'Driptina Skin', 'https://cdn.moat.gg/ttt/uwu/driptina.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/24.png', 'Pumpkin Collection'},
	[6260] = {'Eighteye Skin', 'https://cdn.moat.gg/ttt/uwu/eighteye.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/11.png', 'Pumpkin Collection'},
	[6261] = {'Factorion Skin', 'https://cdn.moat.gg/ttt/uwu/factorion.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/46.png', 'Pumpkin Collection'},
	[6262] = {'Felice Skin', 'https://cdn.moat.gg/ttt/uwu/felice.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/45.png', 'Pumpkin Collection'},
	[6263] = {'Gatsby Skin', 'https://cdn.moat.gg/ttt/uwu/gatsby.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/37.png', 'Pumpkin Collection'},
	[6264] = {'Granbow Skin', 'https://cdn.moat.gg/ttt/uwu/granbow.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/30.png', 'Pumpkin Collection'},
	[6265] = {'Heavens Skin', 'https://cdn.moat.gg/ttt/uwu/heavens.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/35.png', 'Pumpkin Collection'},
	[6266] = {'Hellbolt Skin', 'https://cdn.moat.gg/ttt/uwu/hellbolt.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/29.png', 'Pumpkin Collection'},
	[6267] = {'Krakatoa Skin', 'https://cdn.moat.gg/ttt/uwu/krakatoa.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/15.png', 'Pumpkin Collection'},
	[6268] = {'Lost in Divine Skin', 'https://cdn.moat.gg/ttt/uwu/lost_in_divine.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/19.png', 'Pumpkin Collection'},
	[6269] = {'Matrix Skin', 'https://cdn.moat.gg/ttt/uwu/matrix.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/32.png', 'Pumpkin Collection'},
	[6270] = {'Neuralite Skin', 'https://cdn.moat.gg/ttt/uwu/neuralite.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/3.png', 'Pumpkin Collection'},
	[6271] = {'Nightmare Skin', 'https://cdn.moat.gg/ttt/uwu/nightmare.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/36.png', 'Pumpkin Collection'},
	[6272] = {'Ōkami Skin', 'https://cdn.moat.gg/ttt/uwu/okami.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/38.png', 'Pumpkin Collection'},
	[6273] = {'Parallel Cosmos Skin', 'https://cdn.moat.gg/ttt/uwu/parallel_cosmos.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/23.png', 'Pumpkin Collection'},
	[6274] = {'Party City Skin', 'https://cdn.moat.gg/ttt/uwu/party_city.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/10.png', 'Pumpkin Collection'},
	[6275] = {'Phoenix Feather Skin', 'https://cdn.moat.gg/ttt/uwu/phoenix_feather.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/13.png', 'Pumpkin Collection'},
	[6276] = {'Pringle Skin', 'https://cdn.moat.gg/ttt/uwu/pringle.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/7.png', 'Pumpkin Collection'},
	[6277] = {'Pumpzag Skin', 'https://cdn.moat.gg/ttt/uwu/pumpzag.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/6.png', 'Pumpkin Collection'},
	[6278] = {'Pupa Skin', 'https://cdn.moat.gg/ttt/uwu/pupa.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/4.png', 'Pumpkin Collection'},
	[6279] = {'Purpendicular Skin', 'https://cdn.moat.gg/ttt/uwu/purpendicular.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/26.png', 'Pumpkin Collection'},
	[6280] = {'Quantum Realm Skin', 'https://cdn.moat.gg/ttt/uwu/quantum_realm.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/21.png', 'Pumpkin Collection'},
	[6281] = {'Rajah Skin', 'https://cdn.moat.gg/ttt/uwu/rajah.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/44.png', 'Pumpkin Collection'},
	[6282] = {'Reppit Skin', 'https://cdn.moat.gg/ttt/uwu/reppit.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/1.png', 'Pumpkin Collection'},
	[6283] = {'Rygan Skin', 'https://cdn.moat.gg/ttt/uwu/rygan.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/43.png', 'Pumpkin Collection'},
	[6284] = {'Splatter Space Skin', 'https://cdn.moat.gg/ttt/uwu/splatter_space.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/18.png', 'Pumpkin Collection'},
	[6285] = {'Stained Glass Skin', 'https://cdn.moat.gg/ttt/uwu/stained_glass.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/42.png', 'Pumpkin Collection'},
	[6286] = {'Tiki Oasis Skin', 'https://cdn.moat.gg/ttt/uwu/tiki_oasis.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/2.png', 'Pumpkin Collection'},
	[6287] = {'Trilogy Skin', 'https://cdn.moat.gg/ttt/uwu/trilogy.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/22.png', 'Pumpkin Collection'},
	[6288] = {'Ultrabeam Skin', 'https://cdn.moat.gg/ttt/uwu/ultrabeam.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/40.png', 'Pumpkin Collection'},
	[6289] = {'Untouched Skin', 'https://cdn.moat.gg/ttt/uwu/untouched.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/20.png', 'Pumpkin Collection'},
	[6290] = {'Vibestrus Skin', 'https://cdn.moat.gg/ttt/uwu/vibestrus.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/33.png', 'Pumpkin Collection'},
	[6291] = {'Wavelength Skin', 'https://cdn.moat.gg/ttt/uwu/wavelength.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/31.png', 'Pumpkin Collection'},
	[6292] = {'Witchpink Skin', 'https://cdn.moat.gg/ttt/uwu/witchpink.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/9.png', 'Pumpkin Collection'},
	[6293] = {'Zygzag Skin', 'https://cdn.moat.gg/ttt/uwu/zygzag.vtf', 8, 'https://cdn.moat.gg/ttt/uwu/owo/28.png', 'Pumpkin Collection'},

	-- https://cdn.moat.gg/ttt/uwu/8e376.png
	--[6120] = {'Puppy Skin', 'https://cdn.moat.gg/ttt/uwu/dbd23.png', 8}, --'https://cdn.moat.gg/ttt/uwu/91548.png', 8},
	--[6121] = {'Dev Team Stalker Skin', 'https://cdn.moat.gg/ttt/uwu/b8271.png', 8}
}

function GetPaintColor(id)
	return MOAT_PAINT.Paints[id] or MOAT_PAINT.Tints[id]
end

function ItemIsPaint(id)
	return id and MOAT_PAINT.Paints[id]
end

function ItemIsTint(id)
	return id and MOAT_PAINT.Tints[id]
end

function ItemIsSkin(id)
	return id and MOAT_PAINT.Skins[id]
end

function ItemPaints(id)
	return id and (MOAT_PAINT.Paints[id] or MOAT_PAINT.Tints[id] or MOAT_PAINT.Skins[id])
end

MOAT_PAINT.SkinCache = {}
function LoadSkin(id, cb)
	if (MOAT_PAINT.SkinCache[id]) then
		return cb(MOAT_PAINT.SkinCache[id])
	end
	
end

concommand.Add("moat_paint", function()
	local last_id = 6001
	for i = 1, #MOAT_PAINT.Colors do
		print("    ", "[" .. last_id .. "] = {'" .. MOAT_PAINT.Colors[i][1] .. " Tint', {" .. MOAT_PAINT.Colors[i][2][1] .. ", " .. MOAT_PAINT.Colors[i][2][2] .. ", " .. MOAT_PAINT.Colors[i][2][3] .. "}, " .. MOAT_PAINT.Colors[i][3] .. "}")
		last_id = last_id + 1
    end

	for i = 1, #MOAT_PAINT.Colors do
		print("    ", "[" .. last_id .. "] = {'" .. MOAT_PAINT.Colors[i][1] .. " Paint', {" .. MOAT_PAINT.Colors[i][2][1] .. ", " .. MOAT_PAINT.Colors[i][2][2] .. ", " .. MOAT_PAINT.Colors[i][2][3] .. "}, " .. MOAT_PAINT.Colors[i][3] .. "}")
		last_id = last_id + 1
    end

	for i = 1, #MOAT_PAINT.Skins do
		print("    ", "[" .. last_id .. "] = {'" .. MOAT_PAINT.Skins[i][1] .. " Texture', '" .. MOAT_PAINT.Skins[i][2] .. "', " .. MOAT_PAINT.Colors[i][3] .. "}")
		last_id = last_id + 1
    end
end)