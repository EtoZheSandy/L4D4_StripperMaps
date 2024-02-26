::LevelChangeVar.m_ladderlist <- [
0, Vector(2115.72, -13609.2, 123), Vector(2089.72, -13617.2, -59), Vector(0, -1, 0), // height : 182
1, Vector(3645.68, -14180.4, 145), Vector(3615.47, -14199.3, -70.4073), Vector(0.500039, -0.866003, 0), // height : 215.407
2, Vector(5649, -13629, 1), Vector(5619, -13635, -70.8247), Vector(0, 1, 0), // height : 71.8247
3, Vector(5649, -13759, 1), Vector(5619, -13765, -70.8247), Vector(0, -1, 0), // height : 71.8247
4, Vector(6157, -13759, 1), Vector(6127, -13765, -70.8247), Vector(0, -1, 0), // height : 71.8247
5, Vector(6157, -13629, 1), Vector(6127, -13635, -70.8247), Vector(0, 1, 0), // height : 71.8247
6, Vector(4625, -13635, 97), Vector(4595, -13641, -65), Vector(0, 1, 0), // height : 162
7, Vector(2445, -9791, 121), Vector(2431, -9825, -1), Vector(1, 0, 0), // height : 122
8, Vector(989, -10579, 233), Vector(975, -10613, -1), Vector(-1, 0, 0), // height : 234
9, Vector(4277, -13621, 123), Vector(4251, -13629, -59), Vector(0, 1, 0), // height : 182
10, Vector(4277, -13763, 123), Vector(4251, -13771, -59), Vector(0, -1, 0), // height : 182
11, Vector(6837, -13781, 115), Vector(6811, -13789, -67), Vector(0, 1, 0), // height : 182
12, Vector(6837, -13923, 115), Vector(6811, -13931, -67), Vector(0, -1, 0), // height : 182
13, Vector(3793, -10651, 449.134), Vector(3687, -10657, 231), Vector(0, 1, 0), // height : 218.134
14, Vector(-167.167, -10579, 209), Vector(-237.101, -10648.9, 95), Vector(0.640902, 0.641707, 0.421256), // height : 114
15, Vector(-159, -10571, 97), Vector(-200.598, -10612.6, -89), Vector(0.705147, 0.706064, 0.065134), // height : 186
16, Vector(5737, -12427, 230.123), Vector(5703, -12507.9, -30.1237), Vector(0, -0.966927, 0.255055), // height : 260.246
17, Vector(6817, -12458, 268.108), Vector(6783, -12595.9, -70.1235), Vector(0, -0.936902, 0.349592), // height : 338.231
18, Vector(2445, -9791, 121), Vector(2431, -9825, -1), Vector(-4.37114e-008, 1, 0), // height : 122
];

::LevelChangeVar.m_objectlist[0] <-	[
	true, true, true, "lao_", Vector(557, -13437, -1), Vector(0, 0, 0),

	true, true, true, "lad_0", Vector(4024, -13770, -69.5), Vector(0, 0, 0),
	true, true, true, "lad_0", Vector(4024, -13630, -69.5), Vector(0, 180, 0),

	true, true, true, "lad_0", Vector(6587, -13922, -78), Vector(0, 0, 0),
	true, true, true, "lad_0", Vector(6587, -13790, -78), Vector(0, 180, 0),

	true, true, true, "lad_17", Vector(6126, -12490, -70), Vector(0, 0, 0),
	true, true, true, "lad_17", Vector(6450, -12518, -70), Vector(0, 0, 0),
	true, true, true, "lad_17", Vector(7174, -12564, -92), Vector(0, 0, 0),

	true, true, true, "lad_8", Vector(2060, -10450, -12), Vector(0, 180, 0),
	
	true, true, true, "lad_8", Vector(3436, -13606, -146), Vector(0, 90, 0),
	true, true, true, "lad_8", Vector(3436, -13476, -146), Vector(0, 270, 0),

	false, true, false, "grp_floodlight", Vector(-767.71, -11331.8, -31.9688), Vector(0, -119, 0),
	false, true, false, "grp_floodlight", Vector(324.195, -11842.6, -31.9688), Vector(0, -70, 0),
	false, true, false, "grp_floodlight", Vector(1599.28, -12910.9, -23.9688), Vector(0, 112, 0),
	false, true, false, "grp_c_props_vehicles/utility_truck:props_vehicles/utility_truck_windows:0", Vector(1910.16, -11887.7, 255.438), Vector(6, 116, 0),
	false, true, false, "grp_c_props_vehicles/cara_82hatchback_wrecked:props_vehicles/cara_82hatchback_wrecked_glass:R", Vector(7423.656250, -13199.468750, -36.312500), Vector(0.834961, 59.853516, 357.407227),
	false, true, false, "grp_c_props_vehicles/van:props_vehicles/van_glass:R", Vector(2911.66, -10560.8, 1.34375), Vector(6, 165, 4),
	true, true, true, "inf_passage", Vector(-383.965, -10931.1, -31.9687), Vector(0, 0, 0),
];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "rem_train_ladder", Vector(2249.78, -13617, 15.3177), Vector(0, -80, 0),
	102, true, true, "sur_lad_7", Vector(2250.41, -13630.9, -16), Vector(0, 90, 0),
	102, true, true, "props_vehicles/train_ladder.mdl", Vector(2250.41, -13630.9, -19), Vector(0, 180, 0),
	102, true, true, "lad_7", Vector(2754, -13733, -16), Vector(0, 0, 0),
	102, true, true, "lad_7", Vector(2754, -13654, -16), Vector(0, 0, 0),
	102, true, true, "obj_props_vehicles/train_box.mdl", Vector(2484.34, -13696.2, -56.474), Vector(0, 0, 0),
	102, true, true, "zom_navblock", Vector(2271, -13649.5, -62), Vector(0, 0, 0),
	102, true, true, "zom_navblock", Vector(2422, -13699.7, -62), Vector(0, 0, 0),
	102, true, true, "zom_navblock", Vector(2626, -13700.5, -62), Vector(0, 0, 0),
	-102, true, true, "zom_navblock", Vector(2246, -13649.8, 110.428), Vector(0, 0, 0),
	-102, true, true, "zom_navblock", Vector(2322, -13687.1, 112.176), Vector(0, 0, 0),
	-102, true, true, "zom_navblock", Vector(2498, -13687.3, 112.187), Vector(0, 0, 0),
	-102, true, true, "zom_navblock", Vector(2696, -13737.4, 110.671), Vector(0, 0, 0),
	-102, true, true, "zom_navblock", Vector(2724, -13674.9, 111.606), Vector(0, 0, 0),
  
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,3)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "cor_171164154ino_passage_obj_props_update/c2m4_barn_overhang.mdl", Vector(-300, -10895.7, 62), Vector(270, 0, 90),
	102, true, true, "cor_171164154obj_props_update/c2m4_barn_overhang.mdl", Vector(-638.278, -10622.7, 30), Vector(270, 90, 90),
	102, true, true, "zom_navblock", Vector(-362.346, -10775.4, -31.9687), Vector(0, 0, 0),
	102, true, true, "zom_navblock", Vector(-574.818, -10625.2, -63.9688), Vector(0, 0, 0),
	102, true, true, "zom_navblock", Vector(-446.869, -10625.3, -31.9688), Vector(0, 0, 0),
	
	103, true, true, "cor_171164154ino_passage_obj_props_update/c2m4_barn_overhang.mdl", Vector(-300, -10895.7, 62), Vector(270, 0, 90),
	103, true, true, "cor_171164154obj_props_update/c2m4_barn_overhang.mdl", Vector(-638.278, -10622.7, 30), Vector(270, 90, 90),
	103, true, true, "zom_navblock", Vector(-362.346, -10775.4, -31.9687), Vector(0, 0, 0),
	103, true, true, "zom_navblock", Vector(-574.818, -10625.2, -63.9688), Vector(0, 0, 0),
	103, true, true, "zom_navblock", Vector(-446.869, -10625.3, -31.9688), Vector(0, 0, 0),
	
	104, true, true, "cor_171164154obj_props_update/c2m4_barn_overhang.mdl", Vector(-1027.59, -10660, 30), Vector(270, 90, 90),
	104, true, true, "cor_171164154obj_props_update/c2m4_barn_overhang.mdl", Vector(-820, -10890, 62), Vector(270, 90, 90),
	104, true, true, "zom_navblock", Vector(-950.049, -11000.1, -31.9688), Vector(0, 0, 0),
	104, true, true, "zom_navblock", Vector(-1050.08, -11000.2, -31.9688), Vector(0, 0, 0),
	104, true, true, "zom_navblock", Vector(-1199.67, -10900.2, -31.9688), Vector(0, 0, 0),
	104, true, true, "zom_navblock", Vector(-1175.13, -10800.3, -63.9688), Vector(0, 0, 0),
	104, true, true, "zom_navblock", Vector(-1200.11, -10699.9, -63.9688), Vector(0, 0, 0),
	104, true, true, "zom_navblock", Vector(-1287.31, -10651, -63.9688), Vector(0, 0, 0),
	104, true, true, "zom_navblock", Vector(-1175.41, -10624.7, -63.9688), Vector(0, 0, 0),
	104, true, true, "zom_navblock", Vector(-1074.71, -10624.6, -63.9688), Vector(0, 0, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,5)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "sup_locker", Vector(1608.97, -12358.3, -31.9688), Vector(0, 0, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,3)];