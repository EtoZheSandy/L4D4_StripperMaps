::LevelChangeVar.m_ladderlist <- [
0, Vector(2447, 3210, 496.981), Vector(2409, 3199, 15), Vector(0, 1, 0), // height : 481.981
1, Vector(1537, 2587, 496.981), Vector(1525, 2553, 15), Vector(-1, 0, 0), // height : 481.981
2, Vector(1931, 2385, 496.981), Vector(1897, 2373, 15), Vector(0, -1, 0), // height : 481.981
3, Vector(2571, 2577, 496.981), Vector(2559, 2543, 15), Vector(1, 0, 0), // height : 481.981
4, Vector(1739, 3961, 225), Vector(1701, 3958, 15), Vector(0, -1, 0), // height : 210
5, Vector(2058, 4627, 225), Vector(2055, 4589, 15), Vector(1, 0, 0), // height : 210
6, Vector(2085, 1793, 641), Vector(2047, 1774, 15), Vector(0, -1, 0), // height : 626
7, Vector(1470, 2046, 136.717), Vector(1436, 2043, 14.7169), Vector(0, -1, 0), // height : 122
8, Vector(1190, 2050, 129), Vector(1156, 2047, 7), Vector(0, -1, 0), // height : 122
9, Vector(858, 2041, 137), Vector(824, 2038, 15), Vector(0, -1, 0), // height : 122
10, Vector(3425, 3967, 133), Vector(3391, 3964, 15), Vector(0, -1, 0), // height : 118
11, Vector(3425, 3975, 133), Vector(3391, 3972, 15), Vector(0, 1, 0), // height : 118
12, Vector(3327, 4022, 288.988), Vector(3293, 4019, 14.9883), Vector(0, 1, 0), // height : 274
13, Vector(2496, 705, 145), Vector(2462, 701, 47), Vector(0, -1, 0), // height : 98
14, Vector(3272.08, 4104.93, 153), Vector(3264.92, 4071.07, 14.9883), Vector(0.991474, -0.130307, 0), // height : 138.012
15, Vector(2570.02, 3152, 496.981), Vector(2559.02, 3114, 15), Vector(1, 0, 0), // height : 481.981
];

::LevelChangeVar.m_objectlist[0] <- [
	//true, true, true, "del_clip", Vector(130, 8, 1200), Vector(-8, -54, -86),
	//true, true, true, "del_clip", Vector(8, 8, 800), Vector(-54, -130, -98),
	//true, true, true, "del_clip", Vector(8, 33, 536), Vector(0, -22, -8),
	//true, true, true, "del_clip", Vector(35, 60, 328), Vector(-25, -70, -100),
	true, true, true, "del_clip", Vector(12, 8, 260), Vector(-240, -8, -208),//시작지점 난간 드드득
	true, true, Vector(248, 18, 468), "phyblock", Vector(2172, 1420, 16), Vector(0, 0, 0),//위에서 삭제 클립 대체
/*	true, true, true, "obj_props/de_nuke/truck_nuke.mdl", Vector(1493.09, 2343.85, 13.6848), Vector(0, 34, 0),
	true, true, true, "lap_props/de_nuke/truck_nuke_glass.mdl", Vector(1493.09, 2343.85, 13.6848), Vector(0, 34, 0),
	true, true, true, "zom_navblock", Vector(1549.67, 2287.95, 16.0313), Vector(0, -175, 0),
	true, true, Vector(40, 40, 50), "zom_phyblock", Vector(1587.66, 2200.17, 16.0313), Vector(0, 0, 0),
	true, true, Vector(8, 50, 36), "zom_phyblock", Vector(1572.49, 2228.58, 72), Vector(0, 123, 0),
	true, true, Vector(12, 50, 32), "zom_phyblock", Vector(1572.49, 2228.58, 72), Vector(0, 123, 0),
	true, true, Vector(16, 50, 28), "zom_phyblock", Vector(1572.49, 2228.58, 72), Vector(0, 123, 0),
	true, true, Vector(20, 50, 24), "zom_phyblock", Vector(1572.49, 2228.58, 72), Vector(0, 123, 0),
	true, true, Vector(24, 50, 20), "zom_phyblock", Vector(1572.49, 2228.58, 72), Vector(0, 123, 0),
	true, true, Vector(28, 50, 16), "zom_phyblock", Vector(1572.49, 2228.58, 72), Vector(0, 123, 0),
	true, true, Vector(32, 50, 12), "zom_phyblock", Vector(1572.49, 2228.58, 72), Vector(0, 123, 0),
	true, true, Vector(36, 50, 8), "zom_phyblock", Vector(1572.49, 2228.58, 72), Vector(0, 123, 0),*/

//	true, true, true, "rescue", Vector(1796, 2720, 16), Vector(0, -90, 0),
	true, true, true, "rescue", Vector(2400, 2620, 16), Vector(0, 180, 0),
//	true, true, true, "rescue", Vector(1852, 3090, 16), Vector(0, 0, 0),
	true, true, true, "rescue", Vector(1633, 1821, 16), Vector(0, -90, 0),
//	true, true, true, "rescue", Vector(1892, 946, 222), Vector(0, 180, 0),
//	true, true, true, "rescue", Vector(1658, 1298, 222), Vector(0, 0, 0),

	true, true, true, "vso_lad_10", Vector(1666, 2384, 378), Vector(0, 0, 0),
	true, true, true, "vso_lad_10", Vector(1929, 3938, 238), Vector(0, 304, 0),
	true, true, true, "vso_lad_10", Vector(1929, 3938, 358), Vector(0, 304, 0),
	true, true, true, "vso_lad_10", Vector(1929, 3938, 478), Vector(0, 304, 0),
	true, true, true, "vso_lad_10", Vector(1002, 1934, 8), Vector(0, 0, 0),//버스
	true, true, true, "vso_lad_10", Vector(1252, 1934, 8), Vector(0, 0, 0),//버스
	true, true, true, "vso_lad_10", Vector(2752.16, 2559, -16), Vector(0, 225, 0),
	
	false, true, true, "dmf_", Vector(1812, 1420, 360), Vector(0, 0, 0),

	true, true, true, "vso_lad_0", Vector(690, 5088, 10), Vector(0, 0, 0),

	true, true, true, "vso_props_rooftop/gutter_pipe_256.mdl", Vector(2472, 1988, 640), Vector(0, 90, 0),
	true, true, true, "vso_props_rooftop/gutter_pipe_256.mdl", Vector(2472, 1988, 384), Vector(0, 90, 0),
	true, true, true, "vso_props_rooftop/gutter_pipe_128.mdl", Vector(2472, 1988, 128), Vector(0, 90, 0),
	true, true, true, "vso_lad_6", Vector(2472, 1988, 15), Vector(0, 90, 0),

	true, true, true, "vso_props_rooftop/gutter_pipe_256.mdl", Vector(2296, 2200, 640), Vector(0, 180, 0),
	true, true, true, "vso_props_rooftop/gutter_pipe_128.mdl", Vector(2296, 2200, 384), Vector(0, 180, 0),
	true, true, true, "vso_props_rooftop/gutter_pipe_256.mdl", Vector(2296, 2200, 256), Vector(0, 180, 0),
	true, true, true, "vso_lad_6", Vector(2296, 2200, 15), Vector(0, 180, 0),

	true, true, true, "vso_props_rooftop/gutter_pipe_256.mdl", Vector(842, 5088, 272), Vector(0, 0, 0),
	true, true, true, "vso_lad_2", Vector(842, 5084, -209), Vector(0, 0, 0),

	true, true, true, "vso_props_rooftop/gutter_pipe_256.mdl", Vector(768, 4470, 462), Vector(0, 90, 0),
	true, true, true, "vso_props_rooftop/gutter_pipe_256.mdl", Vector(768, 4470, 206), Vector(0, 90, 0),
	true, true, true, "vso_lad_2", Vector(772, 4470, -16), Vector(0, 90, 0),

	true, true, true, "vso_props_rooftop/gutter_pipe_256.mdl", Vector(768, 3850, 462), Vector(0, 90, 0),
	true, true, true, "vso_props_rooftop/gutter_pipe_256.mdl", Vector(768, 3850, 206), Vector(0, 90, 0),
	true, true, true, "vso_lad_2", Vector(772, 3850, -16), Vector(0, 90, 0),

	true, true, true, "vso_lad_4", Vector(1171, 4131.65, -25), Vector(0, 170.5, 0),

	true, true, true, "vso_lad_4", Vector(1962, 1412, 431), Vector(0, 0, 0),
	
	false, true, false, "grp_c_props_vehicles/taxi_cab:props_vehicles/police_car_glass:0", Vector(1321.09, 3742.34, 8.625), Vector(359, 136, 359),
	true, true, true, "obj_props_vehicles/bus01.mdl", Vector(1103, 1988, 8), Vector(0, 0, 0),
	true, true, true, "zom_navblock", Vector(1299.74, 1976.92, 8.03125), Vector(0, 0, 0),
	true, true, true, "zom_navblock", Vector(924.694, 1965.42, 8.03125), Vector(0, 0, 0),
	false, true, false, "grp_c_props_vehicles/cara_82hatchback_wrecked:props_vehicles/cara_82hatchback_wrecked_glass:R", Vector(1196.531250, 2751.375000, 11.250000), Vector(0, 122.475586, 0),
	false, true, false, "box2", Vector(2522.632568, 2155.854980, 36.437500), Vector(0, 79.744293, 0),
	false, true, false, "box2", Vector(2509.28, 1536.22, 36.4688), Vector(360, 82, 360),
	false, true, false, "box2", Vector(2524, 1789, 36.437500), Vector(0, 170, 180),
	false, true, false, "box2", Vector(2554.53, 2098.13, 36.4063), Vector(0, 129, 180),
	false, true, false, "box1", Vector(2532.21, 2137.49, 76.7813), Vector(0, 101, 0),
	false, true, false, "box1", Vector(2517.46, 1773.32, 56.594), Vector(0, 108, 0),
	false, true, false, "box2", Vector(2512.22, 2029.28, 50.6563), Vector(0, 116, 90),
	false, true, false, "box2", Vector(2538.81, 1979.91, 50.5938), Vector(359, 13, 89),
	false, true, false, "box2", Vector(2449.85, 1757.33, 16.0313), Vector(0, 87, 0),
	false, true, false, "box2", Vector(2316.94, 1111.13, 50.6563), Vector(0, 90, 89),
	false, true, false, "box2", Vector(2368.41, 1088.63, 50.7188), Vector(0, 291, 90),
	false, true, false, "box2", Vector(2389.28, 1148.34, 50.5938), Vector(360, 221, 89),
	false, true, false, "box1", Vector(2467.46, 1151.86, 16.0313), Vector(0, 80, 0),
	
	false, true, true, "imi_deadbodies/common_male_fence01.mdl", Vector(2511.61, 1791.32, 536.781), Vector(0, -90, 0),
	false, true, true, "imi_deadbodies/common_worker_male01_fence01.mdl", Vector(1706.61, 2339.95, 248.781), Vector(0, 0, 0),
	false, true, true, "imi_deadbodies/dead_female_civilian_draped_01.mdl", Vector(3031.89, 3420.11, -239.969), Vector(0, -144, 0),
	false, true, true, "imi_deadbodies/dead_male_sittingchair.mdl", Vector(1996.87, 2959.65, 16.0313), Vector(0, -43, 0),
	false, true, true, "imi_deadbodies/dead_male_torso_01.mdl", Vector(2073.08, 3051.11, 16.0312), Vector(0, 179, 0),
	false, true, true, "imi_deadbodies/dead_male_tsaagent_01.mdl", Vector(1921.09, 2810.73, 16.0313), Vector(0, -84, 0),
	false, true, true, "imi_deadbodies/dead_female_teen_01.mdl", Vector(2064.46, 2570.05, 16.0313), Vector(0, -3, 0),
	false, true, true, "imi_deadbodies/human/pose_b.mdl", Vector(2073.67, 2672.91, 16.0313), Vector(0, -90, 0),
	
	false, true, false, "grp_policeOn", Vector(1965.12, 3602.32, 8.03127), Vector(0, 124, 0),
	false, true, true, "sk1_obj_props/cs_office/vending_machine.mdl", Vector(1894.9, 2579.66, 16.0313), Vector(0, 180, 0),
	false, true, false, "grp_c_props_vehicles/van:props_vehicles/van_glass:0", Vector(2564.267334, 4670.974121, 8.031246), Vector(0, -105.83, 0),
	false, true, false, "grp_c_props_vehicles/van:props_vehicles/van_glass:0", Vector(806.666077, 3312.416504, 116.031250), Vector(359.868, 134.912, 180),
	
	false, true, true, "obj_props_rooftop/acunit01.mdl", Vector(2192, 1760, 320), Vector(0, 270, 0),
	false, true, true, "obj_props_rooftop/acunit01.mdl", Vector(2192, 1760, 420), Vector(0, 270, 0),
	false, true, true, "obj_props_rooftop/acunit01.mdl", Vector(2387, 2233.37, 260), Vector(0, 90, 0),
	false, true, true, "obj_props_rooftop/acunit01.mdl", Vector(2187, 2233.37, 310), Vector(0, 90, 0),
	false, true, true, "obj_props_rooftop/acunit01.mdl", Vector(2505.37, 2100, 360), Vector(0, 0, 0),
	false, true, true, "nav_obj_props_rooftop/satellitedish_large01.mdl", Vector(1660, 872, 432), Vector(0, 180, 0),

	false, true, true, "sup_locker", Vector(1590, 3052, 16.0313), Vector(0, 270, 0),
	true, true, true, "sup_icechest", Vector(710, 5050, 16.0312), Vector(0, 180, 0),
];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "obj_props_wasteland/exterior_fence002a.mdl", Vector(2315, 1417, 92), Vector(0, 90, 0),
	102, true, true, "obj_props_wasteland/exterior_fence003a.mdl", Vector(2363, 1417, 92), Vector(0, 90, 0),
	102, true, true, "obj_props_wasteland/exterior_fence002a.mdl", Vector(2411, 1417, 92), Vector(0, 90, 0),
	102, true, true, "obj_props_wasteland/exterior_fence002b.mdl", Vector(2459.5, 1417, 92), Vector(0, 90, 0),
	102, true, true, "obj_props_wasteland/exterior_fence003b.mdl", Vector(2376.81, 1280, 16.0312), Vector(90, -65, 0),
	102, true, true, "zom_navblock", Vector(2425.16, 1414.13, 16.0313), Vector(0, 0, 0),
	102, true, true, "zom_navblock", Vector(2337.49, 1412.58, 16.0313), Vector(0, 0, 0),
	102, true, true, "hur_fence_2000", Vector(2296, 1302, 198), Vector(2534, 1466, 333),
	-102, true, Vector(200, 20, 40), "zom_navblock//void", Vector(2394, 1420, 128), Vector(0, 0, 0),

	103, true, true, "grp_fake_fire", Vector(2767.6, 2623.97, 572), Vector(0, 90, 0),
	104, true, true, "grp_fake_fire", Vector(768.031, 1620.74, 732), Vector(0, 170, 0),
	104, true, true, "grp_fake_fire", Vector(768.031, 1736.99, 732), Vector(0, 190, 0),
	105, true, true, "grp_fake_fire", Vector(768.031, 1967.08, 390), Vector(0, 180, 0),
	
	106, true, true, "dmp_1", Vector(1727, 3973, 224), Vector(0, 0, 0),
	106, true, true, "dmp_1", Vector(1856, 3973, 224), Vector(0, 0, 0),
	106, true, true, "grp_fake_fire", Vector(1857.32, 4001.76, 222), Vector(0, 90, 0),
	106, true, true, "grp_fake_fire", Vector(1729.56, 4007.96, 222), Vector(0, 90, 0),
	106, true, true, "grp_fake_fire_light", Vector(1793.04, 4034.98, 247.063), Vector(0, 0, 0),

	107, true, true, "dmf_", Vector(2112, 1092, 88), Vector(0, 270, 0),
	107, true, true, "obj_props_unique/infectedbreakwall01_2x4core_main.mdl", Vector(2112, 1092, 88), Vector(0, 270, 0),
	107, true, true, "zom_navblock", Vector(2110, 1086, 24), Vector(0, 0, 0),
	
	108, true, true, "obj_props/cs_militia/boxes_frontroom.mdl", Vector(3077.79, 3662.71, -239.969), Vector(0, -123, 0),
	108, true, true, "zom_navblock", Vector(3112.34, 3674.81, -239.969), Vector(0, 0, 0),
	108, true, true, "zom_navblock", Vector(3050.71, 3650.05, -239.969), Vector(0, 3, 0),
	-108, true, true, "zom_navblock", Vector(3099.89, 3675.82, -190), Vector(0, 0, 0),
	109, true, true, "obj_props/cs_militia/boxes_garage_lower.mdl", Vector(2900.06, 3635.99, -239.969), Vector(0, 11, 0),
	109, true, true, "zom_navblock", Vector(2887.27, 3624.79, -239.969), Vector(0, 105, 0),

	110, true, true, "obj_props_vehicles/deliveryvan.mdl", Vector(1170, 2932, 7), Vector(0, 342, 0),
	110, true, true, "lap_props_vehicles/deliveryvan_glass.mdl", Vector(1170, 2932, 7), Vector(0, 342, 0),
	110, true, Vector(220, 40, 60), "zom_navblock", Vector(1129.43, 2952, 34), Vector(0, 0, 0),
	110, true, true, "zom_navblock", Vector(1050, 3000, 8), Vector(0, 0, 0),
	110, true, true, "zom_navblock", Vector(1275, 2875, 8), Vector(0, 0, 0),
	110, true, Vector(102, 74, 42), "zom_phyblock", Vector(1238.48, 2909.75, 63), Vector(0, 72, 47),
	110, true, Vector(102, 4, 25), "zom_phyblock", Vector(1295.54, 2891.21, 32), Vector(0, 72, 343),
	110, true, Vector(102, 214, 114), "zom_phyblock", Vector(1131.96, 2944.36, 7), Vector(0, 72, 0),
	110, true, true, "imi_deadbodies/bodies128_b.mdl", Vector(1285, 3008, 8), Vector(0, 72, 0),
	-110, true, Vector(220, 40, 20), "zom_navblock//void",  Vector(1137.8, 2942.72, 122.663), Vector(0, 0, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [[2,10]];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "props_vehicles/semi_trailer.mdl", Vector(1338, 4565, 16), Vector(0, 180, 0),
	102, true, true, "cor_058075044obj_props_vehicles/flatnose_truck.mdl", Vector(1338, 4276, 16), Vector(0, -90, 0),
	102, true, true, "lap_props_vehicles/flatnose_truck_glass.mdl", Vector(1338, 4276, 16), Vector(0, -90, 0),
	102, true, Vector(20, 600, 20), "zom_navblock", Vector(1338, 4476, 16), Vector(0, 0, 0),
	103, true, true, "props_vehicles/semi_trailer.mdl", Vector(1338, 4565, 16), Vector(0, 180, 0),
	103, true, true, "cor_058075044obj_props_vehicles/flatnose_truck.mdl", Vector(1338, 4276, 16), Vector(0, -90, 0),
	103, true, true, "lap_props_vehicles/flatnose_truck_glass.mdl", Vector(1338, 4276, 16), Vector(0, -90, 0),
	103, true, Vector(20, 600, 20), "zom_navblock", Vector(1338, 4476, 16), Vector(0, 0, 0),

	104, true, false, "grp_c_props_vehicles/van:props_vehicles/van_glass:0", Vector(1413.674683, 4304.219727, 17.239838), Vector(0, 92.16, 0),
	104, true, Vector(20, 600, 50), "zom_navblock", Vector(1338, 4476, 160), Vector(0, 0, 0),
	105, true, Vector(20, 600, 50), "zom_navblock//void", Vector(1338, 4476, 160), Vector(0, 0, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,5)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "props_vehicles/semi_trailer.mdl", Vector(910, 4565, 16), Vector(0, 180, 0),
	102, true, true, "cor_058075044obj_props_vehicles/flatnose_truck.mdl", Vector(910, 4276, 16), Vector(0, -90, 0),
	102, true, true, "lap_props_vehicles/flatnose_truck_glass.mdl", Vector(910, 4276, 16), Vector(0, -90, 0),
	102, true, Vector(20, 600, 20), "zom_navblock", Vector(910, 4476, 16), Vector(0, 0, 0),
	103, true, true, "props_vehicles/semi_trailer.mdl", Vector(910, 4565, 16), Vector(0, 180, 0),
	103, true, true, "cor_058075044obj_props_vehicles/flatnose_truck.mdl", Vector(910, 4276, 16), Vector(0, -90, 0),
	103, true, true, "lap_props_vehicles/flatnose_truck_glass.mdl", Vector(910, 4276, 16), Vector(0, -90, 0),
	103, true, Vector(20, 600, 20), "zom_navblock", Vector(910, 4476, 16), Vector(0, 0, 0),

	104, true, false, "grp_c_props_vehicles/utility_truck:props_vehicles/utility_truck_windows:0", Vector(941.749, 4872.1, 15.648), Vector(-0, 154.413, 0),
	104, true, Vector(20, 600, 50), "zom_navblock", Vector(910, 4476, 160), Vector(0, 0, 0),
	105, true, Vector(20, 600, 50), "zom_navblock//void", Vector(910, 4476, 160), Vector(0, 0, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,5)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "vsb_lad_10", Vector(2205.14, 3660.89, 8.03125), Vector(0, 297, 0),
	102, true, true, "vsb_lad_10", Vector(2215.14, 3668.89, 8.03125), Vector(0, 117, 0),
	102, true, true, "vsb_lad_10", Vector(2090.74, 3888.9, 16.0313), Vector(0, 295, 0),
	102, true, true, "vsb_lad_10", Vector(2100.74, 3896.9, 16.0313), Vector(0, 115, 0),
	102, true, true, "vsb_lad_10", Vector(2302.86, 3430.71, 8.03123), Vector(0, 285, 0),
	102, true, true, "vsb_lad_10", Vector(2310.86, 3438.71, 8.03123), Vector(0, 105, 0),
	102, true, true, "vsb_lad_10", Vector(2312.65, 3290.16, 16.0312), Vector(0, 267, 0),
	102, true, true, "vsb_lad_10", Vector(2318.65, 3292.16, 16.0312), Vector(0, 87, 0),
	102, true, true, "vsb_obj_props_street/police_barricade_368in.mdl", Vector(2210.14, 3664.89, 8.03125), Vector(0, 27, 0),
	102, true, true, "vsb_obj_props_street/police_barricade2.mdl", Vector(2095.74, 3892.9, 16.0313), Vector(0, 25, 0),
	102, true, true, "vsb_obj_props_street/police_barricade2.mdl", Vector(2306.86, 3434.71, 8.03123), Vector(0, 15, 0),
	102, true, true, "vsb_obj_props_street/police_barricade2.mdl", Vector(2315.65, 3291.16, 16.0312), Vector(0, -3, 0),
	102, true, true, "vsb_grp_barrel_fire", Vector(1497.87, 4005.4, 16.8015), Vector(0, -19, 0),
	//102, true, true, "grp_flare", Vector(1188.77, 4507.09, 13), Vector(0, 64, 0),
	102, true, true, "vsb_grp_wallLight01", Vector(1290.18, 5055.97, 450.2), Vector(0, 90, 0),
	102, true, true, "vsb_grp_wallLight02", Vector(768.031, 4872.5, 349.949), Vector(0, 180, 0),
	102, true, true, "vsb_grp_wallLight01", Vector(2048.03, 5025.02, 247.547), Vector(0, 180, 0),
	102, true, true, "vsb_zom_navblock", Vector(2307.85, 3311.23, 16.0313), Vector(0, 0, 0),
	102, true, true, "vsb_zom_navblock", Vector(2315.29, 3411.86, 8.03126), Vector(0, 0, 0),
	102, true, true, "vsb_zom_navblock", Vector(2286.68, 3487.02, 8.03125), Vector(0, 0, 0),
	102, true, true, "vsb_zom_navblock", Vector(2262.36, 3558.68, 8.03125), Vector(0, 0, 0),
	102, true, true, "vsb_zom_navblock", Vector(2224.45, 3638.67, 8.03125), Vector(0, 0, 0),
	102, true, true, "vsb_zom_navblock", Vector(2188.14, 3700.3, 8.03125), Vector(0, 0, 0),
	102, true, true, "vsb_zom_navblock", Vector(2161.88, 3762.76, 8.03125), Vector(0, 0, 0),
	102, true, true, "vsb_zom_navblock", Vector(2159.32, 3813.43, 8.03125), Vector(0, 0, 0),
	102, true, true, "vsb_zom_navblock", Vector(2155.16, 3838.43, 16.0312), Vector(0, 0, 0),
	102, true, true, "vsb_zom_navblock", Vector(2124.38, 3863.16, 16.0313), Vector(0, 0, 0),
	102, true, true, "vsb_zom_navblock", Vector(2076.79, 3922.1, 16.0313), Vector(0, 0, 0),
	102, true, true, "vsb_ammo", Vector(694.813, 4793.61, 16.0313), Vector(0, -45, 0),
	102, true, true, "vsb_rem_road_block", Vector(2118, 3852, 66), Vector(0, 0, 0),
	102, true, true, "vsb_rem_road_block", Vector(2189, 3708, 66), Vector(0, 0, 0),
	102, true, true, "vsb_rem_road_block", Vector(2251, 3584, 66), Vector(0, 0, 0),
	102, true, true, "vsb_rem_road_block", Vector(2307, 3436, 66), Vector(0, 0, 0),
	102, true, true, "vsb_rem_road_block", Vector(2322, 3300, 66), Vector(0, 0, 0),
	102, true, true, "vsb_rem_path_thisway", Vector(1249, 3977, 60), Vector(0, 0, 0),
	102, true, true, "vsb_rem_path_thisway", Vector(1053, 3979, 60), Vector(0, 81, 0),
	-102, true, true, "vsb_zom_navblock//void", Vector(2088.61, 3884.9, 133.125), Vector(0, 0, 0),
	-102, true, true, "vsb_zom_navblock//void", Vector(2211.86, 3661.8, 125.125), Vector(0, 0, 0),
	-102, true, true, "vsb_zom_navblock//void", Vector(2307.9, 3431.6, 125.125), Vector(0, 0, 0),
	-102, true, true, "vsb_zom_navblock//void", Vector(2315.14, 3303.57, 133.125), Vector(0, 0, 0),
	102, true, true, "sta_dec_decals/checkpoint01_red", Vector(851.74, 5087.97, 127.166), Vector(0, 119, 0),
	102, true, true, "props_industrial/plywood_leaning.mdl", Vector(1456.05, 3969, 16.0313), Vector(0, 270, 0),
	102, true, true, "sta_dec_decals/checkpoint01_black", Vector(1481, 3954.91, 50), Vector(0, 90, 0),
	102, true, true, "sta_dec_decals/checkpointarrow01_black", Vector(1426, 3955.09, 50), Vector(0, 41, 0),

	102, true, true, "grp_fake_fire", Vector(2394.23, 5370.96, 114.11), Vector(0, 93, 0),
	102, true, true, "grp_fake_fire", Vector(2506.75, 5454.18, 213.429), Vector(0, 103, 0),
	102, true, true, "grp_fake_fire", Vector(2627.17, 5430.4, 85.1738), Vector(0, 94, 0),
	102, true, true, "grp_fake_fire", Vector(2347.62, 5495.76, 239.179), Vector(0, 96, 0),
	102, true, true, "grp_fake_fire", Vector(2251.45, 5495.63, 227.128), Vector(0, -71, 0),
	102, true, true, "grp_fake_fire_light", Vector(2658.31, 5314.85, 155), Vector(0, 177, 0),
	102, true, true, "grp_fake_fire_light", Vector(2395.95, 5298.77, 155), Vector(0, -177, 0),

	102, true, true, "grp_fake_fire", Vector(3004.94, 5399.62, 328.031), Vector(0, 3, 0),
	102, true, true, "grp_fake_fire", Vector(2984.12, 5325.18, 328.031), Vector(0, 3, 0),
	102, true, true, "grp_fake_fire", Vector(3023.59, 5294.29, 328.031), Vector(0, -6, 0),
	102, true, true, "grp_fake_fire", Vector(2985.58, 5243.43, 328.031), Vector(0, 10, 0),
	102, true, true, "grp_fake_fire", Vector(2994.73, 5207.53, 405.267), Vector(0, 9, 0),
	102, true, true, "grp_fake_fire_light", Vector(2924.92, 5291.34, 360), Vector(0, 0, 0),

	103, true, true, "lad_10", Vector(2222.8, 3824, 11), Vector(0, 293, 0),
	103, true, true, "lad_10", Vector(2320, 3594.5, 11), Vector(0, 293, 0),
	103, true, true, "lad_10", Vector(2326, 3865, 11), Vector(0, 113, 0),
	103, true, true, "lad_10", Vector(2422, 3637, 11), Vector(0, 113, 0),
	103, true, true, "obj_props_vehicles/bus01.mdl", Vector(2331.5, 3709.5, 8.031250), Vector(0, 113, 0),
	103, true, true, "zom_navblock", Vector(2199.84, 3862.57, 8.03125), Vector(0, 0, 0),
	103, true, true, "zom_navblock", Vector(2310.22, 3734.02, 8.03125), Vector(0, 0, 0),
	103, true, true, "zom_navblock", Vector(2345.57, 3595.36, 8.03125), Vector(0, 0, 0),
	103, true, true, "zom_navblock", Vector(2383.97, 3498.63, 8.03125), Vector(0, 0, 0),
	103, true, true, "zom_navblock", Vector(2461.58, 3511.36, 8.03125), Vector(0, 0, 0),
	-103, true, Vector(20, 200, 20), "zom_navblock//void", Vector(2263.95, 3874.82, 139.563), Vector(0, 0, 0),
	-103, true, Vector(20, 200, 20), "zom_navblock//void", Vector(2364.85, 3624.92, 139.563), Vector(0, 0, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,5)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "grp_fake_fire", Vector(1590.37, 2624.36, 208.031), Vector(0, 0, 0),
	102, true, true, "grp_fake_fire_light", Vector(1590.37, 2624.36, 228.031), Vector(0, 0, 0),
	102, true, true, "grp_fake_fire", Vector(1859.36, 2438, 208.031), Vector(0, 90, 0),
	102, true, true, "grp_fake_fire_light", Vector(1855.91, 2420, 228.031), Vector(0, 0, 0),
	102, true, true, "dmp_1", Vector(1856, 2392, 224), Vector(0, 0, 0),
	103, true, true, "grp_fake_fire", Vector(2365.86, 2438, 208.031), Vector(0, 90, 0),
	103, true, true, "grp_fake_fire_light", Vector(2365.86, 2420, 228.031), Vector(0, 0, 0),
	103, true, true, "dmp_1", Vector(2368, 2391, 224), Vector(0, 0, 0),
	104, true, true, "doorlock", Vector(1544, 2598, 68.25), Vector(0, 0, 0),
	104, true, true, "zom_navblock", Vector(1562.52, 2625.54, 16.0313), Vector(0, 0, 0),
	104, true, true, "zom_navblock", Vector(1536.28, 2625.7, 16.0313), Vector(0, 0, 0),
	104, true, true, "lighthouse/props/wood_plank_128.mdl", Vector(1542.97, 2605.34, 83.6852), Vector(75, 90, 90),
	104, true, true, "lighthouse/props/wood_plank_128.mdl", Vector(1542.97, 2607.11, 56.454), Vector(-80, 90, 90),
	104, true, true, "lighthouse/props/wood_plank_128.mdl", Vector(1542.97, 2604.46, 35.567), Vector(-90, 0, 0),
	104, true, true, "lighthouse/props/wood_plank_128.mdl", Vector(1545.97, 2605.34, 83.6852), Vector(75, 90, 90),
	104, true, true, "lighthouse/props/wood_plank_128.mdl", Vector(1545.97, 2607.11, 56.454), Vector(-80, 90, 90),
	104, true, true, "lighthouse/props/wood_plank_128.mdl", Vector(1545.97, 2604.46, 35.567), Vector(-90, 0, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(1,4)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "lad_10", Vector(1225.95, 2470, -4), Vector(0, 53, 0),
	102, true, true, "lad_10", Vector(1146, 2570, -4), Vector(0, 233, 0),
	102, true, true, "obj_props_vehicles/ambulance.mdl", Vector(1144.860107, 2465.426514, 8.031250), Vector(0, 143, 0),
	102, true, false, "props_unique/hospital/gurney.mdl", Vector(1313.96, 2668.79, 8.03127), Vector(0, -161, 0),
	102, true, true, "rag_infected/common_male02.mdl", Vector(1323.43, 2639.27, 58), Vector(275, -166, 92),
	102, true, true, "rag_infected/common_female_nurse01.mdl", Vector(1245.53, 2559.95, 78), Vector(155, 184, 210),
	102, true, true, "zom_navblock", Vector(1149.17, 2425.81, 8.03125), Vector(0, 0, 0),
	102, true, true, "zom_navblock", Vector(1234.75, 2554.75, 8.03125), Vector(0, 0, 0),
	102, true, true, "zom_navblock", Vector(1197.62, 2620.41, 8.03125), Vector(0, 0, 0),
	-102, true, Vector(140, 200, 50), "zom_navblock//void", Vector(1173.19, 2495.53, 116.136), Vector(0, 0, 0),

	103, true, true, "del_caralarm", Vector(2472.56, 4081.44, 8.5625), Vector(360, 300, 359),
	103, true, true, "caralarm", Vector(1035.25, 2539.47, 8.625), Vector(0, 293, 0),
	103, true, true, "con_alarm2", Vector(0, 0, 0), Vector(0, 0, 0),
	-103, true, true, "con_alarm1", Vector(0, 0, 0), Vector(0, 0, 0),
	
	104, true, false, "grp_policeOn", Vector(1038.7, 2541.42, 8.03127), Vector(0, -40, 0),
	104, true, true, "rag_deadbodies/dead_police_male01.mdl", Vector(1159.56, 2559.16, 20.1), Vector(0, -168, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,5)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "coc_alarm2|obj_props_vehicles/airport_fuel_truck.mdl", Vector(2470, 4300, 8.03125), Vector(0, 21, 0),
	102, true, true, "coc_alarm2|sur_lad_7", Vector(2544.53, 4104.97, 8.03125), Vector(0, 21, 0),//
	102, true, Vector(10, 420, 10), "coc_alarm2|zom_navblock", Vector(2463.91, 4303.62, 12), Vector(0, 0, 0),
	102, true, Vector(100, 400, 50), "coc_alarm1|zom_navblock", Vector(2463.38, 4297.15, 138), Vector(0, 0, 0),
	-102, true, Vector(100, 400, 50), "zom_navblock//void", Vector(2463.38, 4297.15, 138), Vector(0, 0, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,3)];

/*
::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "grp_locker_molo", Vector(1590, 3052, 16.0313), Vector(0, 270, 0),
	103, true, true, "grp_locker_pill", Vector(1590, 3052, 16.0313), Vector(0, 270, 0),
	104, true, true, "grp_locker_pipe", Vector(1590, 3052, 16.0313), Vector(0, 270, 0),
	105, true, true, "cancel", Vector(0, 0, 0), Vector(0, 0, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [[2,5]];
*/

/*
::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "grp_icechest_pill", Vector(710, 5050, 16.0312), Vector(0, 180, 0),
	103, true, true, "grp_icechest_adre", Vector(710, 5050, 16.0312), Vector(0, 180, 0),
];
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [[2,3]];
*/

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "dmd_900", Vector(1785, 1116, 484), Vector(0, 0, 0),
	103, true, true, "dmd_800", Vector(1785, 1116, 484), Vector(0, 0, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,4)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "dmd_600", Vector(1698, 1013, 348.003), Vector(0, 0, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,3)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "dmd_300", Vector(2067, 988, 211.996), Vector(0, 90, 0),
	103, true, true, "dmd_900", Vector(2067, 988, 211.996), Vector(0, 90, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,4)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "dmd_600", Vector(1705, 1196, 211.996), Vector(0, 270, 0),
	103, true, true, "dmd_900", Vector(1705, 1196, 211.996), Vector(0, 270, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,4)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "dmd_600", Vector(1604, 1196, 76), Vector(0, 270, 0),
	103, true, true, "dmd_900", Vector(1604, 1196, 76), Vector(0, 270, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,4)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "dmd_600", Vector(1785, 801, 75.7429), Vector(0, 0, 0),
	103, true, true, "dmd_900", Vector(1785, 801, 75.7429), Vector(0, 0, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,4)];

::LevelChangeVar.m_objectlist[::LevelChangeVar.m_objectlist.len()] <- [
	102, true, true, "dmd_600", Vector(2042, 1600, 68), Vector(0, 180, 0),
	103, true, true, "dmd_900", Vector(2042, 1600, 68), Vector(0, 180, 0),
]
::LevelChangeVar.m_objectindex[::LevelChangeVar.m_objectindex.len()] <- [RandomInt(2,4)];