::LevelChangeVar.m_ladderlist <- [
0, Vector(13162, 5952, 321), Vector(13151, 5926, 15), Vector(1, 0, 0), // height : 306
1, Vector(10743, 6785, 609), Vector(10712, 6774, 15), Vector(0, -1, 0), // height : 594
2, Vector(12752, 10089, -215), Vector(12718, 10077, -481), Vector(0, -1, 0), // height : 266
3, Vector(12420.9, 5882.83, 140.06), Vector(12390.9, 5876.83, 14.0598), Vector(0, 1, 0), // height : 126
4, Vector(11921, 8305, 307), Vector(11887, 8294, 15), Vector(0, -1, 0), // height : 292
5, Vector(11905, 12487, 449), Vector(11894, 12453, 15), Vector(-1, 0, 0), // height : 434
6, Vector(14145, 8204, -423), Vector(14111, 8192, -529), Vector(0, 1, 0), // height : 106
7, Vector(14287, 11649, 9), Vector(14257, 11639, -353), Vector(0, 0, 1), // height : 362
8, Vector(11425, 5441.05, 205), Vector(11391, 5430.05, 15), Vector(0, -1, 0), // height : 190
9, Vector(12058, 5457, 561), Vector(12047, 5423, 15), Vector(1, 0, 0), // height : 546
10, Vector(14141, 8011.02, -255), Vector(14115, 8008, -417), Vector(0, 1, 0), // height : 162
11, Vector(10518, 6433, 161.877), Vector(10515, 6399, 7), Vector(-1, 0, 0), // height : 154.877
14, Vector(12777, 8347, 165), Vector(12743, 8343, 15), Vector(0, 1, 0), // height : 150
15, Vector(13929, 10820, 165), Vector(13895, 10817, 15), Vector(0, -1, 0), // height : 150
16, Vector(12932, 5848, 165), Vector(12929, 5814, 15), Vector(1, 0, 0), // height : 150
17, Vector(11935, 6586, 105), Vector(11875, 6582, 18), Vector(0, 0, 1), // height : 87
19, Vector(12938, 12181, 449), Vector(12927, 12155, 15), Vector(1, 0, 0), // height : 434
20, Vector(10939, 5192, 281), Vector(10909, 5181, 15), Vector(0, 1, 0), // height : 266
21, Vector(11278, 5736, 409), Vector(11211, 5702, 203), Vector(0.915315, -0, 0.402739), // height : 206
22, Vector(12721, 11905, 449), Vector(12695, 11902, 15), Vector(0, -1, 0), // height : 434
];

::LevelChangeVar.m_objectlist[0] <- [
	true, true, true, "lao_", Vector(13180, 5515, 696), Vector(0, 0, 0),
	true, true, true, "del_clip", Vector(13937, 7769, 1209), Vector(12695, 6679, 799),//쓸데없음 알수없음
	true, true, true, "del_clip", Vector(12033, 4609, 1277), Vector(10511, 4503, 553),//시작은신처 바로 옆 옥상들
	true, true, true, "del_clip", Vector(12481, 4545, 1209), Vector(12023, 4527, 467),//시작은신처 주변 주차장 건물 위

	true, true, true, "vso_lad_10", Vector(13426, 12230, 124), Vector(0, 180, 344),
	true, true, true, "vso_lad_10", Vector(13426, 12229, -36), Vector(0, 180, 0),

	true, true, true, "vso_lad_10", Vector(13426, 12474, 124), Vector(0, 0, 344),
	true, true, true, "vso_lad_10", Vector(13426, 12475, -36), Vector(0, 0, 0),
	
	true, true, true, "lad_2", Vector(12028, 4400, 447), Vector(0, 90, 0),
	true, true, true, "lad_2", Vector(11268, 4400, 447), Vector(0, 270, 0),
	true, true, true, "lad_11", Vector(11178, 5090, 320), Vector(0, 0, 0),
	true, true, true, "lad_4", Vector(11036, 6749, -45), Vector(0, 0, 0),
	true, true, true, "lad_16", Vector(12162, 5728, -36), Vector(0, 0, 0),
	true, true, true, "lad_6", Vector(12120, 5690, 65), Vector(0, 0, 0),
	true, true, true, "lad_14", Vector(10678, 6800.5, 158), Vector(0, 0, 0.5),
	true, true, true, "lad_0", Vector(12062, 8074, -35), Vector(0, 0, 0),
	true, true, true, "lad_0", Vector(12066, 7802, -35), Vector(0, 0, 0),
	true, true, true, "lad_5", Vector(11259, 8074, -163), Vector(0, 0, 0),
	true, true, true, "lad_5", Vector(11259, 7802, -163), Vector(0, 0, 0),
	true, true, true, "lad_4", Vector(12452, 7808.5, -22), Vector(0, 0, 0),
	true, true, true, "lad_0", Vector(11052, 7332, -54), Vector(0, 0, 0),
	true, true, true, "lad_11", Vector(14782, 11665, 50), Vector(0, 0, 0),
	true, true, true, "lad_15", Vector(14762, 11678, 181), Vector(0, 0, 0),
	true, true, true, "lad_4", Vector(11745, 8136, -22), Vector(0, 180, 0),
	true, true, true, "lad_4", Vector(11748, 7866, -22), Vector(0, 180, 0),

	true, true, true, "lad_6", Vector(11901, 7360, 26), Vector(0, 0, 0),
	true, true, true, "lad_6", Vector(11264, 7362, 24), Vector(0, 0, 0),
	true, true, true, "lad_11", Vector(11844, 7273, -20), Vector(0, 0, 0),
	true, true, true, "lad_16", Vector(11958, 7273, -20), Vector(0, 0, 0),
	true, true, true, "lad_11", Vector(11849.5, 6873, 0), Vector(0, 0, 0),
	true, true, true, "lad_16", Vector(11960, 6873, 0), Vector(0, 0, 0),
	true, true, true, "lad_11", Vector(11208, 7273, -20), Vector(0, 0, 0),
	true, true, true, "lad_16", Vector(11320, 7273, -20), Vector(0, 0, 0),
	true, true, true, "lad_15", Vector(11264, 6826.35, 20), Vector(0, 0, 0),

	true, true, true, "lad_0", Vector(12488, 7353.5, -45), Vector(0, 270, 0),
	true, true, true, "lad_0", Vector(12124, 7353.5, -45), Vector(0, 270, 0),
	true, true, true, "lad_0", Vector(11788, 7353.5, -45), Vector(0, 270, 0),
	true, true, true, "lad_0", Vector(11484, 7353.5, -45), Vector(0, 270, 0),
	true, true, true, "lad_0", Vector(11150, 7353.5, -45), Vector(0, 270, 0),
	
	true, true, true, "vso_obj_props_urban/fire_escape_platform.mdl", Vector(11068, 4608, 284), Vector(0, 180, 0),  
	true, true, true, "vso_obj_props_urban/fire_escape_upper.mdl", Vector(11068, 4608, 412), Vector(0, 180, 0),  
	true, true, true, "vso_obj_props_urban/fire_escape_upper.mdl", Vector(11068, 4608, 540), Vector(0, 180, 0),  

	true, true, true, "vso_props_street/electrical_box01.mdl", Vector(12704, 6744, 112), Vector(0, 180, 0),
	true, true, true, "vso_lad_5", Vector(12698, 6718, 79), Vector(0, 0, 0),

	true, true, true, "vso_props_rooftop/gutter_pipe_256.mdl", Vector(12704, 7742, 778), Vector(0, -90, 0),
	true, true, true, "vso_lad_0", Vector(12698, 7742, 495), Vector(0, 180, 0),

	true, true, true, "vso_lap_props_rooftop/gutter_pipe_256.mdl", Vector(12064, 4544, 340), Vector(0, 180, 0), 
	true, true, true, "vso_lap_props_rooftop/gutter_pipe_128.mdl", Vector(12064, 4544, 468), Vector(0, 180, 0), 
	true, true, true, "lad_5", Vector(12064, 4550, 35), Vector(0, 270, 0),

	true, true, true, "vso_lap_props_rooftop/gutter_pipe_256.mdl", Vector(12464, 4737, 568), Vector(0, 0, 0),
	true, true, true, "vso_lap_props_rooftop/gutter_pipe_256.mdl", Vector(12464, 4737, 312), Vector(0, 0, 0),
	true, true, true, "vso_lad_1", Vector(12464, 4732, -25), Vector(0, 0, 0),

	true, true, true, "lap_props_rooftop/gutter_pipe_256.mdl", Vector(12720, 7936, 510), Vector(0, 90, 0),
	true, true, true, "lap_props_rooftop/gutter_pipe_256.mdl", Vector(12720, 7936, 254), Vector(0, 90, 0),
	true, true, true, "lad_9", Vector(12725, 7936, -20), Vector(0, 0, 0),

	//true, true, true, "props_pipes/pipeset08d_64_001a.mdl", Vector(11022, 7450, 504), Vector(-90, 270, 0),
	true, true, true, "props_pipes/pipeset08d_corner128d_001a.mdl", Vector(11022, 7503, 410), Vector(180, 270, 0),
	true, true, true, "props_pipes/pipeset08d_64_001adlc3.mdl", Vector(11022, 7453, 506), Vector(90, 270, 0),
	true, true, true, "lad_16", Vector(11033, 7464, 350), Vector(0, 16, 0),
	true, true, true, "lad_16", Vector(11033, 7464, 382), Vector(0, 16, 0),

	true, true, true, "lad_0", Vector(14003.7, 9374, -500), Vector(0, 10, 0),
	true, true, true, "lad_5", Vector(14092, 9412, -190), Vector(0, 0, 0),
	true, true, true, "lad_5", Vector(14249.5, 9374, -600), Vector(0, -10, 0),
	true, true, true, "lad_0", Vector(14164, 9417, -190), Vector(0, 0, 0),

	//바닥 구멍난 창고
	true, true, true, "lad_6", Vector(10680, 7255, 297), Vector(0, 90, 0),
	true, true, true, "lad_6", Vector(10738, 7260, 297), Vector(0, 270, 0),
	true, true, true, "lad_6", Vector(10904, 7433, 297), Vector(0, 270, 0),
	
	true, true, true, "props_industrial/warehouse_shelf003.mdl", Vector(11909.3, 7804.58, 144.484), Vector(0, 90, 0),
	true, true, true, "props_industrial/warehouse_shelf004.mdl", Vector(11415.7, 8136.93, 144.484), Vector(0, 270, 0),

	false, true, false, "props/cs_assault/HandTruck.mdl", Vector(11615.906250, 7431.968750, 15.437500), Vector(0, 30.893555, 0),
	false, true, false, "props/cs_assault/HandTruck.mdl", Vector(12129.125000, 6793.375000, 8.468750), Vector(0, 70.839844, 0),
	false, true, false, "props_junk/dumpster.mdl", Vector(11695.718750, 6195.156250, 16.625000), Vector(0, 163.476563, 0),
	false, true, false, "props_junk/dumpster.mdl", Vector(12538.045898, 6949.471680, 16.031250), Vector(0, 36.265564, 0),
	false, true, false, "props_junk/dumpster.mdl", Vector(14240.906250, 11844.687500, 31.718750), Vector(274.218750, 89.091797, 0),
	false, true, false, "grp_c_props_vehicles/cara_82hatchback_wrecked:props_vehicles/cara_82hatchback_wrecked_glass:R", Vector(13463.7, 12113.6, 62.2813), Vector(5, 18, 224),
	false, true, false, "grp_c_props_vehicles/utility_truck:props_vehicles/utility_truck_windows:0", Vector(14141.718750, 11728.218750, 8.625000), Vector(359, 78, 0),
	false, true, false, "grp_c_props_vehicles/cara_95sedan_wrecked:props_vehicles/cara_95sedan_wrecked_glass:R", Vector(13031.812500, 12359.593750, 18.781250), Vector(355, 154, 6)
	
	false, true, false, "box2", Vector(11454, 7956.15, 16.0313), Vector(0, -57, 0),
	false, true, false, "box1", Vector(11334.3, 7915.58, 16.0313), Vector(0, 12, 0),
	false, true, false, "box1", Vector(11338.3, 7922.53, 79.2718), Vector(0, -154, 0),
	false, true, false, "box2", Vector(12097.8, 7959.22, 16.0313), Vector(0, -171, 0),
	false, true, false, "box2", Vector(12161.9, 8048.73, 16.0312), Vector(0, -142, 0),
	false, true, false, "box2", Vector(12056.7, 8202.06, 16.0313), Vector(0, 154, 0),
	false, true, false, "box1", Vector(12063.7, 7699.91, 16.0313), Vector(0, -170, 0),
	false, true, false, "box1", Vector(11858.4, 7632.68, 16.0313), Vector(0, 172, 0),

	false, true, true, "imi_deadbodies/dead_male_civilian_draped_01.mdl", Vector(11183.7, 4660, 16.0312), Vector(0, 162, 0),
	false, true, true, "imi_deadbodies/dead_male_civilian_02.mdl", Vector(10785.8, 6962.28, 160.031), Vector(0, 51, 0),
	false, true, true, "imi_deadbodies/dead_male_tsaagent_01.mdl", Vector(11137.5, 7715.57, 16.0313), Vector(0, 331, 0),
	false, true, true, "imi_deadbodies/dead_female_civilian_02.mdl", Vector(13670, 7384.72, -183.969), Vector(0, 90, 0),
	false, true, true, "imi_deadbodies/dead_male_civilian_01.mdl", Vector(12812, 8152.98, 16.0313), Vector(0, 180, 0),
	false, true, true, "imi_deadbodies/dead_male_civilian_02.mdl", Vector(13771.5, 7931.27, -255.969), Vector(0, -152, 0),
	false, true, true, "imi_deadbodies/dead_male_civilian_02.mdl", Vector(13498.6, 10319.7, -463.969), Vector(0, 240, 0),
	false, true, true, "imi_deadbodies/dead_female_civilian_draped_02.mdl", Vector(13593.1, 10484.5, -463.969), Vector(0, -27, 0),
	false, true, true, "rag_deadbodies/dead_military_male01.mdl", Vector(14223.7, 11587.8, -221.969), Vector(-30, -104, -12),
	false, true, true, "rag_deadbodies/dead_male_suit_01.mdl", Vector(11085.1, 5551.13, 16.0313), Vector(130, 0, 210),
	false, true, true, "rag_deadbodies/dead_male_suit_01.mdl", Vector(11388.9, 6197.06, 170.735), Vector(90, 0, 210),
	false, true, true, "rag_deadbodies/dead_male_suit_01.mdl", Vector(14151.5, 11589.9, -321.969), Vector(90, 0, 210),

	false, true, true, "rag_deadbodies/dead_military_male01.mdl", Vector(14264, 11533.7, 18.03125), Vector(110, 0, 280),
	false, true, true, "rag_deadbodies/dead_military_male01.mdl", Vector(12616.8, 12333.3, 94.0313), Vector(90, 122, 0),
	false, true, true, "rag_deadbodies/dead_military_male01.mdl", Vector(12636.8, 12332.3, 94.0313), Vector(270, 221, 180),
	false, true, true, "nav_grp_guardshack_white", Vector(10624, 6100, 16), Vector(0, 90, 0),

	false, true, false, "grp_c_props_vehicles/cara_82hatchback:props_vehicles/cara_82hatchback_glass:R", Vector(12227, 6477.5, 17), Vector(360, 270, 359),
	false, true, true, "minigun1", Vector(11928, 5924, 20), Vector(0, 90, 0),
	
	//병원앞 구급차
	//true, true, true, "grp_ambulance", Vector(13764.6, 12116.8, 64), Vector(270, 57, 0),

	//하수도 안 철망
	//true, true, true, "props_wasteland/exterior_fence002b.mdl", Vector(13090, 11610, -480), Vector(0, 0, 180),
	//true, true, true, "props_wasteland/exterior_fence002c.mdl", Vector(13090, 11520, -480), Vector(0, 0, 180),
	//true, true, true, "props_wasteland/exterior_fence002b.mdl", Vector(13090, 11430, -480), Vector(0, 0, 180),
	//true, true, true, "co2_props_rooftop/gutter_pipe_256.mdl", Vector(13078, 11840, -480), Vector(0, 0, 270),
	//true, true, true, "co2_props_rooftop/gutter_pipe_256.mdl", Vector(13078, 11200, -480), Vector(0, 180, 270),
];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	103, true, true, "zom_navblock//void", Vector(12125, 5738, 112), "X",//주유소 옆 트럭
	
 	103, true, true, "zom_navblock//void", Vector(12488, 7364, 265), "X",//주유소 지붕 사다리
 	103, true, true, "zom_navblock//void", Vector(12124, 7364, 265), "X",
 	103, true, true, "zom_navblock//void", Vector(11788, 7364, 265), "X",
 	103, true, true, "zom_navblock//void", Vector(11488, 7364, 265), "X",
 	103, true, true, "zom_navblock//void", Vector(11150, 7364, 265), "X",
 	103, true, true, "zom_navblock//void", Vector(11050, 7334, 245), "X",
 	103, true, true, "zom_navblock//void", Vector(11035, 6750, 245), "X",
 	103, true, true, "zom_navblock//void", Vector(12712.1, 7925.08, 525.529), "X",//창고 지나고 나오는 좁은 통로 옆 지붕으로 올라가는 사다리
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [2];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "obj_props_vehicles/semi_trailer_freestanding.mdl", Vector(11580, 7086.41, -15), Vector(0, 180, 4.3),
	102, true, Vector(20, 400, 20), "zom_navblock", Vector(11580, 7086.41, -15), "X",

	103, true, true, "obj_props_vehicles/semi_trailer.mdl", Vector(11580, 7086.41, -15), Vector(0, 180, 4.3),
	103, true, Vector(20, 400, 20), "zom_navblock", Vector(11580, 7086.41, -15), "X",
	103, true, true, "cor_105121172obj_props_vehicles/longnose_truck.mdl", Vector(11584.4, 6765.07, 7.8264), Vector(0, 180, 3.5),
	103, true, true, "lap_cor_105121172props_vehicles/longnose_truck_glass.mdl", Vector(11584.4, 6765.07, 7.8264), Vector(0, 180, 3.5),
	103, true, Vector(84, 40, 96), "pla_phyblock", Vector(11584.4, 6802, 50), Vector(0, 0, 0),
	103, true, Vector(20, 100, 20), "zom_navblock", Vector(11584, 6765, 7), "X",
	-103, true, Vector(20, 100, 50), "zom_navblock//void", Vector(11584, 6700, 140), "X",
	103, true, true, "sur_lad_17", Vector(11584.4, 6584, 16), Vector(0, 0, 0),

	104, true, false, "forklift", Vector(11565.843750, 6557.875, 45.71), Vector(87, 309, 180),
	104, true, Vector(20, 480, 20), "zom_navblock", Vector(11580, 7086.41, 150), "X",
	105, true, Vector(20, 480, 20), "zom_navblock//void", Vector(11580, 7086.41, 150), "X",
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,5)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "nav_obj_props/cs_militia/boxes_garage_lower.mdl", Vector(10971.4, 7564, 16.0313), Vector(0, 42, 0),
	103, true, true, "nav_obj_props/cs_militia/boxes_garage_lower.mdl", Vector(10604, 7682, 160.031), Vector(0, 42, 0),
	104, true, true, "nav_obj_props/cs_militia/boxes_garage_lower.mdl", Vector(11660, 4707, 16.0313), Vector(0, 133, 0),
	105, true, true, "nav_obj_props/cs_militia/boxes_garage_lower.mdl", Vector(13887.5, 7892, -255.969), Vector(0, 327, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,5)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, false, "forklift", Vector(11706.62, 8207.93, 16.65), Vector(0, 138, 0),
	103, true, false, "forklift", Vector(12002.187500, 6275.531250, 16.59), Vector(0, 141, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,3)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, false, "forklift", Vector(12559.875, 7114.718750, 16.625), Vector(0, 301, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,3)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, false, "forklift", Vector(11027.75, 6520.03, 16.56), Vector(0, 321, 0),
	103, true, false, "forklift", Vector(11420.625, 7672.843750, 16.625), Vector(0, 321, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,3)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "lad_15", Vector(11216, 5020, -32), Vector(0, 0, 0),
	102, true, true, "lad_14", Vector(11216, 5220, -32), Vector(0, 0, 0),
	102, true, true, "props_misc/fire_exit_crushed.mdl", Vector(11160.5, 5150.11, 43.0313), Vector(0, 265, 0),
	102, 2, true, "zom_static_crate_40", Vector(11216.1, 5050.57, 16.0313), Vector(0, 0, 0), //좀비가 스폰되지 못하게 틈새 막기
	102, 2, true, "zom_static_crate_40", Vector(11216.1, 5105.57, 16.0313), Vector(0, 0, 0),
	102, 2, true, "zom_static_crate_40", Vector(11216.1, 5160.57, 16.0313), Vector(0, 0, 0),
	102, false, true, "props_street/police_barricade2.mdl", Vector(11216.5, 5211.5, -3.0313), Vector(0, -66, 0),
	102, false, true, "props_street/police_barricade.mdl", Vector(11284, 5200.15, 115.609), Vector(-90, 24, 0),
	102, false, true, "props_street/police_barricade2.mdl", Vector(11264, 5105.03, 115.609), Vector(-90, 0, 0),
	102, false, true, "props_street/police_barricade2.mdl", Vector(11220.2, 5022.94, -3.0313), Vector(0, 90, 0),
	102, true, true, "zom_navblock", Vector(11216.9, 5118.59, 16.0313), Vector(0, 105, 0),
	102, true, true, "sur_static_crate_40", Vector(11217.5, 5031.74, 133.125), Vector(0, 0, 0), //생존자가 뭔가 밟고 올라가지 못하게 막기
	102, true, true, "rem_alley_block", Vector(11216, 5126, 55), Vector(0, 0, 0),
	-102, true, true, "zom_navblock//void", Vector(11217.2, 5124.3, 134), "X",

	103, true, true, "inf_sewers4", Vector(14073, 9983, -383), Vector(0, 0, 0),
	103, true, true, "ino_sewers4_obj_lighthouse/props/junkyard_column.mdl", Vector(14128, 8704, -420), Vector(0, 0, 0),
	103, true, true, "zom_navblock", Vector(14128, 8704, -500), Vector(0, 0, 0),
	103, true, true, "inf_sewers1", Vector(13395, 8685, -442), Vector(0, 0, 0),
	103, true, true, "ino_sewers1_obj_lighthouse/props/junkyard_column.mdl", Vector(13264, 8704, -420), Vector(0, 0, 0),
	103, true, true, "zom_navblock", Vector(13264, 8704, -500), Vector(0, 0, 0),

	104, true, true, "vsb_inf_sewers3", Vector(13359, 9957, -450), Vector(0, 0, 0),
	104, true, true, "vsb_ino_sewers3_obj_lighthouse/props/junkyard_column.mdl", Vector(13188, 9960, -420), Vector(0, 0, 0),
	104, true, true, "vsb_zom_navblock", Vector(13188, 9960, -500), Vector(0, 0, 0),
	104, true, true, "vsb_inf_sewers2", Vector(13517, 9959, -450), Vector(0, 0, 0),
	104, true, true, "vsb_ino_sewers2_obj_lighthouse/props/junkyard_column.mdl", Vector(13808, 9960, -392), Vector(0, 0, 0),
	104, true, true, "vsb_zom_navblock", Vector(13808, 9960, -472), Vector(0, 0, 0),
	104, true, true, "vsb_obj_lighthouse/props/junkyard_column.mdl", Vector(14428, 9960, -392), Vector(0, 0, 0),
	104, true, true, "vsb_zom_navblock", Vector(14428, 9960, -472), Vector(0, 0, 0),

	105, true, true, "obj_lighthouse/props/junkyard_column.mdl", Vector(12544, 11520, -420), Vector(0, 0, 0),
	105, true, true, "zom_navblock", Vector(12544, 11520, -500), Vector(0, 0, 0),
	105, true, true, "obj_lighthouse/props/junkyard_column.mdl", Vector(13504, 11520, -358), Vector(0, 0, 0),
	105, true, true, "zom_navblock", Vector(13504, 11520, -438), Vector(0, 0, 0),
	105, true, true, "obj_lighthouse/props/junkyard_column.mdl", Vector(14576, 11520, -296), Vector(0, 0, 0),
	105, true, true, "zom_navblock", Vector(14576, 11520, -376), Vector(0, 0, 0),

	106, true, true, "lgt_1_workspots01", Vector(0, 0, 0), Vector(0, 0, 0),
	106, true, true, "props_equipment/light_floodlight.mdl", Vector(13624.6, 10161.9, -463.625), Vector(0, 119.971, 0),
	106, true, true, "lap_props_equipment/light_floodlight.mdl", Vector(13624.4, 10161.9, -463.625), Vector(0, 119.971, 0),
	106, true, true, "lap_props_equipment/light_floodlight.mdl", Vector(13624.5, 10162.0, -463.625), Vector(0, 119.971, 0),
	106, true, true, "lap_props_equipment/light_floodlight.mdl", Vector(13624.5, 10161.8, -463.625), Vector(0, 119.971, 0),
	106, true, true, "lap_props_equipment/light_floodlight.mdl", Vector(13624.5, 10161.9, -463.725), Vector(0, 119.971, 0),
	106, true, true, "lap_props_equipment/light_floodlight.mdl", Vector(13624.5, 10161.9, -463.525), Vector(0, 119.971, 0),
	
	107, true, Vector(70, 320, 105), "zom_phyblock", Vector(10708.7, 7298.34, 296), Vector(0, 0, 0),
	107, true, Vector(70, 160, 105), "zom_phyblock", Vector(10679.2, 7051.7, 296), Vector(0, -14, 0),
	107, true, Vector(70, 320, 105), "zom_phyblock", Vector(10875, 7392, 296), Vector(0, 0, 0),
	107, true, Vector(70, 480, 105), "zom_phyblock", Vector(10546, 7310, 296), Vector(0, 0, 0),
	107, true, true, "obj_props_industrial/warehouse_shelf002.mdl", Vector(10881.2, 6838.07, 297.857), Vector(0, 207, 0),
	107, true, Vector(70, 160, 105), "zom_phyblock", Vector(10815, 6895.87, 297.857), Vector(0, 207, 0),
	107, true, true, "obj_props_industrial/warehouse_shelf003.mdl", Vector(10896.8, 7026.14, 320.19), Vector(20, 226, 0),
	107, true, Vector(70, 160, 105), "zom_phyblock", Vector(10818, 7059.36, 306), Vector(20, 226, 0), 
	107, true, true, "dmg_props_junk/wood_crate001a.mdl", Vector(10952.8, 6858.94, 356.438), Vector(0, 176, 0),
	107, true, true, "dmg_props_junk/wood_crate001a.mdl", Vector(10909.2, 6879.22, 316.406), Vector(359, 7, 359),
	107, true, true, "dmg_props_junk/wood_crate001a.mdl", Vector(10954.2, 6835.06, 316.406), Vector(0, 0, 0),
	107, true, true, "dmg_props_junk/wood_crate001a.mdl", Vector(10954.6, 6879.03, 316.406), Vector(359, 89, 359),
	107, true, true, "zom_navblock", Vector(10750.2, 7072.51, 296.031), Vector(0, 92, 0),
	107, true, true, "zom_navblock", Vector(10813.3, 6975.06, 296.031), Vector(0, -179, 0),
	107, true, true, "zom_navblock", Vector(10814.8, 6849.79, 296.031), Vector(0, 179, 0),
	107, true, true, "lad_6", Vector(10765, 6926, 297), Vector(0, 116, 0),

	108, true, true, "obj_props_vehicles/semi_trailer_freestanding.mdl", Vector(12224, 7088, -15.0147), Vector(0, 180, 4.4),
	108, true, Vector(20, 400, 20), "zom_navblock", Vector(12224, 7088, -15), Vector(0, 0, 0),
	-108, true, Vector(20, 480, 20), "zom_navblock//void", Vector(12224, 7088, 150), Vector(0, 0, 0),
	
	109, true, true, "obj_props_doors/roll-up_door_full.mdl", Vector(12182.4, 4551.06, 15.03), Vector(0, 90, 0),
	109, true, true, "zom_navblock", Vector(12175, 4538, 15), Vector(0, 90, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [[2,9]];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "dmd_900", Vector(11360, 5442, 76), Vector(0, 90, 0),
	103, true, true, "dmd_800", Vector(11360, 5442, 76), Vector(0, 90, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,4)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "vso_dmd_900", Vector(10544, 5820, 68), Vector(0, 270, 0),
	103, true, true, "vso_dmd_800", Vector(10544, 5820, 68), Vector(0, 270, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,4)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "dmd_900", Vector(10634, 7368, 212), Vector(0, 180, 0),
	103, true, true, "dmd_800", Vector(10634, 7368, 212), Vector(0, 180, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,4)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "dmd_900", Vector(12713, 8176, 68), Vector(0, 180, 0),
	103, true, true, "dmd_800", Vector(12713, 8176, 68), Vector(0, 180, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,4)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "vso_dmd_900", Vector(14266, 9544, -300), Vector(0, 180, 0),
	103, true, true, "vso_dmd_800", Vector(14266, 9544, -300), Vector(0, 180, 0),
	104, true, true, "vso_dmd_500", Vector(14266, 9544, -300), Vector(0, 180, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,6)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "vso_dmd_900", Vector(12751.9, 12454.4, 67.8783), Vector(0, 90, 0),
	103, true, true, "vso_dmd_800", Vector(12751.9, 12454.4, 67.8783), Vector(0, 90, 0),
	104, true, true, "vso_dmd_500", Vector(12751.9, 12454.4, 67.8783), Vector(0, 90, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,6)];