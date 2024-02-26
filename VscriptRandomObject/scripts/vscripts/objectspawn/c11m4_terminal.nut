::LevelChangeVar.m_ladderlist <- [
0, Vector(-373.999, 3672, 406.174), Vector(-414, 3648, 293.174), Vector(-0.965363, 0, 0.260909), // height : 113
1, Vector(-459, 4981.43, 475.865), Vector(-497, 4931.76, 309.362), Vector(-0, 0.965926, 0.258817), // height : 166.503
2, Vector(501, 2085, 371), Vector(463, 2079, 287), Vector(0, 1, 0), // height : 84
3, Vector(193, 3369, 367), Vector(159, 3363, 295), Vector(0, 1, 0), // height : 72
4, Vector(314, 3832, 487.126), Vector(288, 3806, 15), Vector(-0.707107, 0.707107, 0), // height : 472.126
5, Vector(315, 5113, 488), Vector(288.999, 5087, 15), Vector(-0.707107, -0.707107, 0), // height : 473
6, Vector(-7, 1801, 105), Vector(-41, 1795, 15), Vector(0, 1, 0), // height : 90
7, Vector(2029, 1301, 449), Vector(1995, 1247, 15), Vector(-0, 0.994853, 0.101328), // height : 434
8, Vector(399, 1551, 133), Vector(395, 1517, 15), Vector(1, 0, 0), // height : 118
9, Vector(2601, 1017, 245), Vector(2567, 999, 151), Vector(0, 1, 0), // height : 94
10, Vector(595, 3615, 551), Vector(519.239, 3552.03, 301.306), Vector(-0.622474, 0.78264, -1.6e-005), // height : 249.695
11, Vector(-271.644, 3532.45, 133), Vector(-297.618, 3526.95, 19), Vector(0.104577, 0.994517, 1e-006), // height : 114
12, Vector(-272.163, 3521.1, 133), Vector(-298.137, 3515.6, 19), Vector(-0.10459, -0.994515, 8.9e-005), // height : 114
13, Vector(867, 1873, 97), Vector(863, 1839, 15), Vector(1, 0, 0), // height : 82
14, Vector(875, 1569, 97), Vector(871, 1535, 15), Vector(1, 0, 0), // height : 82
15, Vector(875, 1281, 97), Vector(871, 1247, 15), Vector(1, 0, 0), // height : 82
16, Vector(857, 1425, 97), Vector(853, 1391, 15), Vector(-1, 0, 0), // height : 82
17, Vector(849, 2017, 97), Vector(845, 1983, 15), Vector(-1, 0, 0), // height : 82
18, Vector(577, 1521, 414.403), Vector(543, 1517, 292.403), Vector(0, -1, 0), // height : 122
19, Vector(577, 2729, 414.403), Vector(543, 2725, 292.403), Vector(0, -1, 0), // height : 122
];

::LevelChangeVar.m_objectlist[0] <- [
	true, true, true, "lao_", Vector(-1075.22, 4202.97, 16.0313), Vector(0, -87, 0),
	true, true, true, "lad_4", Vector(326, 4442, -40), Vector(0, 135, 0),
	true, true, true, "lad_4", Vector(326, 4478, -40), Vector(0, 315, 0),
	true, true, Vector(20, 100, 40), "pla_phyblock", Vector(352.5, 4460, 211), Vector(150, 0, 0),

	true, true, true, "lad_2", Vector(520, 4490, 306), Vector(0, 0, 0),
	true, true, true, "lad_2", Vector(620, 4410, 306), Vector(0, 180, 0),
	true, true, true, "lad_2", Vector(570, 4410, 306), Vector(0, 180, 0),
	true, true, true, "lad_3", Vector(626, 4532, 280), Vector(0, 0, 0),
	true, true, true, "lad_3", Vector(626, 4462, 326), Vector(0, 0, 0),

	false, true, true, "dmf_", Vector(1112, 4416, 360), Vector(0, 0, 0),
	false, true, true, "dmf_", Vector(1216, 4416, 360), Vector(0, 0, 0),
	true, 2, true, "sur_static_crate_40", Vector(121.587, 4799.95, 43.1254), Vector(45, 0, 0),//수하물 경사로
	true, 2, true, "zom_static_crate_40", Vector(121.587, 4799.95, 43.1254), Vector(45, 0, 0),
	
	true, true, true, "imi_props_interiors/trashcan01.mdl", Vector(270.1, 5791, 296), Vector(0, 180, 0),//복도 끝 벽 부서지는 화장실
	true, true, true, "imi_props_interiors/paper_towel_dispenser.mdl", Vector(240.1, 5775.99, 352.290), Vector(0, 90, 0),
	true, true, true, "imi_props_interiors/medicinecabinet01_mirror.mdl", Vector(284.1, 5827, 356.292), Vector(0, 180, 0),
	true, true, true, "imi_props_interiors/medicinecabinet01_mirror.mdl", Vector(284.1, 5863, 356.292), Vector(0, 180, 0),
];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, false, "grp_floodlight", Vector(1021.28, 50.9033, 16.0313), Vector(0, -88, 0),
	103, true, false, "grp_floodlight", Vector(1279.05, 514.53, 16.0313), Vector(0, -2, 0),
	104, true, false, "grp_floodlight", Vector(603.292, 1151.62, 16.0313), Vector(0, -163, 0),
	105, true, false, "grp_floodlight", Vector(469.766, 1738.53, 16.0313), Vector(0, 146, 0),
	106, true, false, "grp_floodlight", Vector(440.192, 1414.62, 16.0313), Vector(0, -154, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,6)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "obj_props_unique/airport/luggage_pile1.mdl", Vector(3077.92, 3990.83, 152.031), Vector(0, 100, 0),
	102, true, true, "obj_props_interiors/trashcan01.mdl" Vector(3139.53, 4018.86, 200.19), Vector(87, 181, 71),
	102, true, true, "obj_props_interiors/trashcan01.mdl" Vector(3155.59, 3981.75, 208.962), Vector(31, 156, 250),
	102, true, true, "obj_props_interiors/chairs_airport.mdl", Vector(3128.37, 4010.68, 242.19), Vector(0, 95, 170),
	102, true, true, "zom_navblock", Vector(3119.04, 4023.18, 152.031), Vector(0, 0, 0),
	102, true, true, "zom_navblock", Vector(3055.93, 3926.82, 152.031), Vector(0, 0, 0),
	102, 10, true, "sur_static_crate_40", Vector(3139.34, 4068.38, 152.031), Vector(0, -80, 0),
	102, 10, true, "sur_static_crate_40", Vector(3092.64, 4062.69, 152.031), Vector(0, -79, 0),
	102, 10, true, "sur_static_crate_40", Vector(3046.82, 4050.55, 152.031), Vector(0, -62, 0),
	102, 10, true, "sur_static_crate_40", Vector(3020.16, 4024.35, 152.031), Vector(0, -7, 0),
	102, 10, true, "sur_static_crate_40", Vector(3023.86, 3983.5, 152.031), Vector(0, 18, 0),
	102, 10, true, "sur_static_crate_40", Vector(3026.19, 3957.67, 152.031), Vector(0, 2, 0),
	102, 10, true, "sur_static_crate_40", Vector(3048.27, 3936.48, 152.031), Vector(0, 86, 0),
	102, 10, true, "sur_static_crate_40", Vector(3090.25, 3928.13, 152.031), Vector(0, 85, 0),
	102, 10, true, "sur_static_crate_40", Vector(3136.34, 3933.64, 152.031), Vector(0, 82, 0),

	103, true, true, "nav_obj_props_unique/airport/luggage_pile1.mdl", Vector(2685.73, 2397.88, 152.031), Vector(0, 190, 0),
	103, true, true, "obj_props_unique/airport/luggage_pile1.mdl", Vector(2594.18, 2372.04, 152.031), Vector(0, 10, 0),
	103, 10, true, "sur_static_crate_40", Vector(2783.82, 2399.97, 331.534), Vector(0, 0, 90),
	103, 10, true, "sur_static_crate_40", Vector(2783.82, 2399.97, 331.534), Vector(0, 0, -90),

	104, true, false, "grp_floodlight", Vector(506.251, 4741.06, 296.031), Vector(0, -26, 0),
	104, true, true, "grp_lantern", Vector(418.449, 5298.32, 316.864), Vector(0, -48, 0),
	104, true, true, "obj_props_debris/barricade_tall03a.mdl", Vector(-151.425, 5226.35, 346.031), Vector(-20, -162, 0),
	104, true, true, "obj_props_debris/barricade_tall04a.mdl", Vector(-128.05, 5321.14, 306.031), Vector(20, 188, 20),
	104, true, true, "obj_props_debris/barricade_tall01a.mdl", Vector(-164.629, 5395.7, 336.031), Vector(-20, -166, 0),
	104, true, true, "obj_props_debris/barricade_tall02a.mdl", Vector(-148.351, 5262.4, 326.031), Vector(0, 164, 0),
	104, true, true, "obj_props_debris/barricade_tall04a.mdl", Vector(-155.913, 5338.03, 306.031), Vector(0, 0, 0),
	104, true, true, "obj_props_debris/barricade_tall03a.mdl", Vector(-148.725, 5311.2, 353.787), Vector(0, -178, 0),
	104, true, true, "navblock", Vector(-161.327, 5226.74, 296.031), Vector(0, 0, 0),
	104, true, true, "navblock", Vector(-157.809, 5261.41, 296.031), Vector(0, 0, 0),
	104, true, true, "navblock", Vector(-152.194, 5326.75, 296.031), Vector(0, 0, 0),
	104, true, true, "navblock", Vector(-164.214, 5396.82, 296.031), Vector(0, 0, 0),
	104, true, true, "navblock", Vector(-116.341, 5224.56, 296.031), Vector(0, -178, 0),
	104, 7, true, "zom_static_crate_40", Vector(-98, 5440, 290), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-102, 5440, 305), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-106, 5440, 320), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-110, 5440, 335), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-114, 5440, 350), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-118, 5440, 365), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-122, 5440, 380), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-126, 5440, 385), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-188, 5440, 290), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-184, 5440, 305), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-180, 5440, 320), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-176, 5440, 335), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-172, 5440, 350), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-168, 5440, 365), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-164, 5440, 380), Vector(0, 0, 90),
	104, 7, true, "zom_static_crate_40", Vector(-160, 5440, 385), Vector(0, 0, 90),
	104, 8, true, "sur_static_crate_40", Vector(-122, 5439, 330), Vector(0, 0, 90),
	104, 8, true, "sur_static_crate_40", Vector(-122, 5439, 395), Vector(0, 0, 90),
	104, 8, true, "sur_static_crate_40", Vector(-122, 5439, 420), Vector(0, 0, 90),
	104, 8, true, "sur_static_crate_40", Vector(-183, 5440, 330), Vector(0, 0, 90),
	104, 8, true, "sur_static_crate_40", Vector(-183, 5440, 395), Vector(0, 0, 90),
	104, 8, true, "sur_static_crate_40", Vector(-183, 5440, 420), Vector(0, 0, 90),
	104, true, true, "rem_stair_block", Vector(-79, 5251, 335), Vector(0, 0, 0),
	104, true, true, "rem_stair_block", Vector(-84, 5355, 335), Vector(0, 0, 0),
	104, true, true, "rem_baggage_thisway", Vector(357, 4805, 336), Vector(0, 0, 0),

	107, true, true, "cor_140192221props_c17/handrail04_medium.mdl", Vector(802, 1593, 364), Vector(0, 0, 0),
	107, true, true, "cor_140192221props_c17/handrail04_short.mdl", Vector(802, 1640, 364), Vector(0, 180, 0),
	107, true, true, "obj_props_highway/plywood_01.mdl", Vector(797.656, 1647, 344.031), Vector(0, 90, 94),
	

	//106, true, true, "del_props_doors/doormainmetal01.mdl", Vector(1096, 2852, 68), Vector(0, 90, 0),
	//106, true, true, "lat_grp_alarmdoor1L", Vector(1096, 2852, 68), Vector(0, 90, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [[2,5]];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "sta_dmg_props_unique/zombiebreakwallexteriorairport01_main.mdl", Vector(-148, 5768, 360), Vector(0, 180, 0),
	102, true, true, "sta_dmg_props_unique/zombiebreakwallexteriorairport01_main.mdl", Vector(-36, 5768, 360), Vector(0, 0, 0),
	
	103, true, true, "sta_dmg_props_unique/zombiebreakwallexteriorairport01_main.mdl", Vector(-148, 5768, 360), Vector(0, 180, 0),
	103, true, true, "sta_dmg_props_unique/zombiebreakwallexteriorairport01_main.mdl", Vector(-36, 5768, 360), Vector(0, 0, 0),
	103, true, true, "obj_props_unique/airport/luggage1.mdl", Vector(169.527, 5699.26, 290.303), Vector(0.175, 40.805, 0.043),
	103, true, true, "obj_props_interiors/chairs_airport.mdl", Vector(173.931, 5672.84, 353.703), Vector(64.5832, 6.08453, -170.139),
	103, true, true, "obj_props_interiors/chairs_airport.mdl", Vector(55.6921, 5660.45, 354), Vector(74, 180, -166.5),
	103, true, true, "obj_props_interiors/sofa01.mdl", Vector(147.74, 5632.45, 296.814), Vector(0, 19, 0),
	103, true, true, "obj_props_interiors/sofa01.mdl", Vector(149.381, 5620.36, 356.205), Vector(7.57649, 226.016, 168.761),
	103, true, true, "obj_props_interiors/sofa01.mdl", Vector(131.989, 5601.48, 347.881), Vector(-0.685898, 125.442, -78.1221),
	103, true, true, "obj_props_unique/airport/luggage3.mdl", Vector(168.764, 5588.28, 346.947), Vector(73.8219, 100.537, 44.9558),
	103, true, true, "cor_243210185obj_props_unique/airport/luggage1.mdl", Vector(176.036, 5574.31, 356.794), Vector(0.452352, 359.45, -75.1579),
	103, true, true, "obj_props_unique/airport/luggage2.mdl", Vector(149.037, 5626.51, 368.272), Vector(38.1469, 211.982, -103.523),
	103, true, true, "cor_253236196obj_props_unique/airport/luggage1.mdl", Vector(126.884, 5658.26, 374.254), Vector(-10.9447, 34.8348, 105.543),
	103, true, true, "obj_props_unique/airport/luggage3.mdl", Vector(105.783, 5638.54, 363.523), Vector(63.912, 91.5732, 63.7888),
	103, true, true, "obj_props_interiors/table_end.mdl", Vector(93.1762, 5632.48, 311.652), Vector(87.5, 21, 0),
	103, true, true, "obj_props_plants/plantairport01_dead.mdl", Vector(155.384, 5603.26, 353.381), Vector(-46.0004 21.8637 -67.758),
	103, true, Vector(105, 130, 200), "zom_phyblock",  Vector(134, 5634, 360), Vector(0, -160, 0),
	103, true, true, "sta_zom_navblock", Vector(140.5, 5625.06, 296.031), Vector(0, 0, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [[2,3]];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "cor_140192221props_c17/handrail04_brokenlong.mdl", Vector(916, 1280, 364), Vector(0, 0, 0),
	102, true, true, "cor_140192221props_c17/handrail04_brokenlong.mdl", Vector(916, 1100, 364), Vector(0, 180, 0),
	103, true, true, "cor_140192221props_c17/handrail04_brokenlong.mdl", Vector(916, 1280, 364), Vector(0, 0, 0),
	103, true, true, "cor_140192221props_c17/handrail04_brokenlong.mdl", Vector(916, 1100, 364), Vector(0, 180, 0),
	
	102, true, true, "obj_props_highway/plywood_01.mdl", Vector(923.561, 1236.01, 344.031), Vector(0, 270, 98),
	102, true, true, "obj_props_highway/plywood_02.mdl", Vector(980.453, 1317.83, 344.031), Vector(0, 85, 0),
	103, true, true, "obj_props_highway/plywood_02.mdl", Vector(926.352, 1059.43, 344.031), Vector(0, 273, 95),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [[2,3]];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "cor_140192221props_c17/handrail04_medium.mdl", Vector(670, 2068, 376), Vector(0, 90, 0),
	102, true, true, "cor_140192221props_c17/handrail04_long.mdl", Vector(766, 2068, 376), Vector(0, 90, 0),
	102, true, true, "cor_140192221props_c17/handrail04_long.mdl", Vector(894, 2068, 376), Vector(0, 90, 0),
	103, true, true, "cor_140192221props_c17/handrail04_medium.mdl", Vector(670, 2068, 376), Vector(0, 90, 0),
	103, true, true, "cor_140192221props_c17/handrail04_long.mdl", Vector(766, 2068, 376), Vector(0, 90, 0),
	103, true, true, "cor_140192221props_c17/handrail04_long.mdl", Vector(894, 2068, 376), Vector(0, 90, 0),

	102, true, true, "obj_props_highway/plywood_01.mdl", Vector(711, 1986, 356.031), Vector(0, -17, 0),
	102, true, true, "obj_props_highway/plywood_02.mdl", Vector(775.608, 2020, 358), Vector(0, 5, 0),
	103, true, true, "obj_props_highway/plywood_02.mdl", Vector(794.284, 2068.5, 358), Vector(0, 174, 0),
	103, true, true, "obj_props_highway/plywood_01.mdl", Vector(915.725, 2061.8, 357), Vector(0, 81, 0),
	
	102, true, true, "obj_props_highway/plywood_02.mdl", Vector(758.265, 2067, 405), Vector(0, 0, -93),
	103, true, true, "obj_props_highway/plywood_01.mdl", Vector(796.192, 2060, 358.781), Vector(0, 180, 99),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [[2,3]];