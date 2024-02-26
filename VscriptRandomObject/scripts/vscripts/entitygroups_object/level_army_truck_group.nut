LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_Truck,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_Truck,
			EntityGroup.SpawnTables.Level_Truck_block0,
			EntityGroup.SpawnTables.Level_Truck_block1,
			EntityGroup.SpawnTables.Level_Truck_block2,
			EntityGroup.SpawnTables.Level_Truck_block3,
			EntityGroup.SpawnTables.Level_Truck_block4,
			EntityGroup.SpawnTables.Level_Truck_block5,
			EntityGroup.SpawnTables.Level_Truck_block6,
			EntityGroup.SpawnTables.Level_Truck_block7,
			EntityGroup.SpawnTables.Level_Truck_block8,
			EntityGroup.SpawnTables.Level_Truck_block9,
			EntityGroup.SpawnTables.Level_Truck_block10,
			EntityGroup.SpawnTables.Level_Truck_block11,
			EntityGroup.SpawnTables.Level_Truck_block12,
			EntityGroup.SpawnTables.Level_Truck_block13,
			EntityGroup.SpawnTables.Level_Truck_block14,
			EntityGroup.SpawnTables.Level_Truck_block15,
			EntityGroup.SpawnTables.Level_Truck_block16,
			EntityGroup.SpawnTables.Level_Truck_block17,
			EntityGroup.SpawnTables.Level_Truck_block18,
			EntityGroup.SpawnTables.Level_Truck_block19,
			EntityGroup.SpawnTables.Level_Truck_block20,
			EntityGroup.SpawnTables.Level_Truck_block21,
			EntityGroup.SpawnTables.Level_Truck_block22,
			EntityGroup.SpawnTables.Level_Truck_block23,
			EntityGroup.SpawnTables.Level_Truck_block24,
			EntityGroup.SpawnTables.Level_Truck_block25,
			EntityGroup.SpawnTables.Level_Truck_block26,
			EntityGroup.SpawnTables.Level_Truck_block27,
			EntityGroup.SpawnTables.Level_Truck_block28,
			EntityGroup.SpawnTables.Level_Truck_block29,
			EntityGroup.SpawnTables.Level_blockside1,
			EntityGroup.SpawnTables.Level_blockside2,
			EntityGroup.SpawnTables.Level_blockside3,
			EntityGroup.SpawnTables.Level_blockside4,
			EntityGroup.SpawnTables.Level_blockside5,
		]
		return spawnEnts
	}

	//-------------------------------------------------------
	function GetEntityGroup()
	{
		return EntityGroup
	}

	//-------------------------------------------------------
	// Table of entities that make up this group
	//-------------------------------------------------------
	EntityGroup =
	{
		SpawnTables =
		{
			Level_Truck = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					disableselfshadowing = "0"
					disableshadows = "1"
					disablevertexlighting = "0"
					disableX360 = "0"
					fademaxdist = "2100"
					fademindist = "2000"
					fadescale = "1"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_vehicles/army_truck.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					disableshadows = true
					origin = Vector( 0, 0, 0 )
					targetname = "Level_Truck"
				}
			}
			Level_blockside1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					model = "models/props_street/police_barricade.mdl"
					solid = "6"
					rendermode = "1"
					renderamt = "0"
					origin = Vector( 30, -15, 39 )
					angles = Vector( 93, 270, 0 )
					targetName = "Level_blockbottom"
					parentname = "Level_Truck"
				}
			}
			Level_blockside2 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					model = "models/props_street/police_barricade.mdl"
					solid = "6"
					rendermode = "1"
					renderamt = "0"
					origin = Vector( -30, -15, 39 )
					angles = Vector( 93, 270, 0 )
					targetName = "Level_blockbottom"
					parentname = "Level_Truck"
				}
			}
			Level_blockside3 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					model = "models/props_street/police_barricade.mdl"
					solid = "6"
					rendermode = "1"
					renderamt = "0"
					origin = Vector( 8, 93, 52 )
					angles = Vector( 100, 77, 0 )
					targetName = "Level_blockbottom"
					parentname = "Level_Truck"
				}
			}
			Level_blockside4 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					model = "models/props_street/police_barricade.mdl"
					solid = "6"
					rendermode = "1"
					renderamt = "0"
					origin = Vector( -8, 93, 52 )
					angles = Vector( 100, 103, 0 )
					targetName = "Level_blockbottom"
					parentname = "Level_Truck"
				}
			}
			Level_blockside5 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					model = "models/props_street/police_barricade.mdl"
					solid = "6"
					rendermode = "1"
					renderamt = "0"
					origin = Vector( 0, 94, 52 )
					angles = Vector( 100, 90, 0 )
					targetName = "Level_blockbottom"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block0 =
			{//짐칸발판
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -35, -135, 53 )
					boxmins = Vector( -35, -135, 53 )
					maxs = Vector( 35, -130, 53.5 )
					boxmaxs = Vector( 35, -130, 53.5 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block1 =
			{//운전석발판
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -56, 66, 25 )
					boxmins = Vector( -56, 66, 25 )
					maxs = Vector( 56, 166, 27 )
					boxmaxs = Vector( 56, 166, 27 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block2 =
			{//연료통
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -54.5, 35, 25 )
					boxmins = Vector( -54.5, 35, 25 )
					maxs = Vector( 54.5, 85, 47 )
					boxmaxs = Vector( 54.5, 85, 47 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block3 =
			{//짐칸
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -54.5, -128, 61.5 )
					boxmins = Vector( -54.5, -128, 61.5 )
					maxs = Vector( 54.5, 70, 63 )
					boxmaxs = Vector( 54.5, 70, 63 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block4 =
			{//짐칸옆난간1
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -55, -128, 61.5 )
					boxmins = Vector( -55, -128, 61.5 )
					maxs = Vector( -51, 70, 98 )
					boxmaxs = Vector( -51, 70, 98 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block5 =
			{//짐칸옆난간2
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( 51, -128, 61.5 )
					boxmins = Vector( 51, -128, 61.5 )
					maxs = Vector( 55, 70, 98 )
					boxmaxs = Vector( 55, 70, 98 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block6 =
			{//짐칸앞
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -52, 69, 61.5 )
					boxmins = Vector( -52, 69, 61.5 )
					maxs = Vector( 52, 75, 82 )
					boxmaxs = Vector( 52, 75, 82 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block7 =
			{//운전석
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -40, 77, 25 )
					boxmins = Vector( -40, 77, 25 )
					maxs = Vector( 40, 100, 124 )
					boxmaxs = Vector( 40, 100, 124 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block8 =
			{//운전석
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -40, 100, 25 )
					boxmins = Vector( -40, 100, 25 )
					maxs = Vector( 40, 133, 121 )
					boxmaxs = Vector( 40, 133, 121 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block9 =
			{//엔진
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -38, 120, 25 )
					boxmins = Vector( -38, 120, 25 )
					maxs = Vector( 38, 160, 88 )
					boxmaxs = Vector( 38, 160, 88 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block10 =
			{//엔진
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -37, 160, 25 )
					boxmins = Vector( -37, 160, 25 )
					maxs = Vector( 37, 180, 87 )
					boxmaxs = Vector( 37, 180, 87 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block11 =
			{//엔진
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -36, 180, 25 )
					boxmins = Vector( -36, 180, 25 )
					maxs = Vector( 36, 203, 85 )
					boxmaxs = Vector( 36, 203, 85 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block12 =
			{//앞바퀴
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -56, 152, 61.5 )
					boxmins = Vector( -56, 152, 61.5 )
					maxs = Vector( 56, 199, 66 )
					boxmaxs = Vector( 56, 199, 66 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block13 =
			{//앞바퀴 경사면
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 140, 56 )
					angles = Vector( 0, 0, 50 )
					mins = Vector( -56, -12, -3 )
					boxmins = Vector( -56, -12, -3 )
					maxs = Vector( 56, 12, 0 )
					boxmaxs = Vector( 56, 12, 0 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block14 =
			{//앞바퀴
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -55, 142, 10 )
					boxmins = Vector( -55, 142, 10 )
					maxs = Vector( -42, 195, 40 )
					boxmaxs = Vector( -42, 195, 40 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block15 =
			{//앞바퀴
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -55, 152, 0 )
					boxmins = Vector( -55, 152, 0 )
					maxs = Vector( -42, 185, 50 )
					boxmaxs = Vector( -42, 185, 50 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block16 =
			{//뒷바퀴앞
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, -167, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -55, 142, 10 )
					boxmins = Vector( -55, 142, 10 )
					maxs = Vector( -42, 195, 40 )
					boxmaxs = Vector( -42, 195, 40 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block17 =
			{//뒷바퀴앞
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, -167, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -55, 152, 0 )
					boxmins = Vector( -55, 152, 0 )
					maxs = Vector( -42, 185, 50 )
					boxmaxs = Vector( -42, 185, 50 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block18 =
			{//뒷바퀴뒤
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, -229, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -55, 142, 10 )
					boxmins = Vector( -55, 142, 10 )
					maxs = Vector( -42, 195, 40 )
					boxmaxs = Vector( -42, 195, 40 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block19 =
			{//뒷바퀴뒤
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, -229, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -55, 152, 0 )
					boxmins = Vector( -55, 152, 0 )
					maxs = Vector( -42, 185, 50 )
					boxmaxs = Vector( -42, 185, 50 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block20 =
			{//앞바퀴
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( 42, 142, 10 )
					boxmins = Vector( 42, 142, 10 )
					maxs = Vector( 55, 195, 40 )
					boxmaxs = Vector( 55, 195, 40 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block21 =
			{//앞바퀴
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( 42, 152, 0 )
					boxmins = Vector( 42, 152, 0 )
					maxs = Vector( 55, 185, 50 )
					boxmaxs = Vector( 55, 185, 50 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block22 =
			{//뒷바퀴앞
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, -167, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( 42, 142, 10 )
					boxmins = Vector( 42, 142, 10 )
					maxs = Vector( 55, 195, 40 )
					boxmaxs = Vector( 55, 195, 40 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block23 =
			{//뒷바퀴앞
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, -167, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( 42, 152, 0 )
					boxmins = Vector( 42, 152, 0 )
					maxs = Vector( 55, 185, 50 )
					boxmaxs = Vector( 55, 185, 50 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block24 =
			{//뒷바퀴뒤
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, -229, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( 42, 142, 10 )
					boxmins = Vector( 42, 142, 10 )
					maxs = Vector( 55, 195, 40 )
					boxmaxs = Vector( 55, 195, 40 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block25 =
			{//뒷바퀴뒤
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, -229, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( 42, 152, 0 )
					boxmins = Vector( 42, 152, 0 )
					maxs = Vector( 55, 185, 50 )
					boxmaxs = Vector( 55, 185, 50 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block26 =
			{//차밑창
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -36, -122, 29 )
					boxmins = Vector( -36, -122, 29 )
					maxs = Vector( 36, 122, 32 )
					boxmaxs = Vector( 36, 122, 32 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block27 =
			{//차앞
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 213, 40 )
					angles = Vector( 0, 0, 90 )
					mins = Vector( -38.5, -6, 0 )
					boxmins = Vector( -38.5, -6, 0 )
					maxs = Vector( 38.5, 6, 4 )
					boxmaxs = Vector( 38.5, 6, 4 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block28 =
			{//차앞
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 50, 210, 40 )
					angles = Vector( 0, -13, 90 )
					mins = Vector( -10, -6, 0 )
					boxmins = Vector( -10, -6, 0 )
					maxs = Vector( 10, 6, 4 )
					boxmaxs = Vector( 10, 6, 4 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
			Level_Truck_block29 =
			{//차앞
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( -50, 210, 40 )
					angles = Vector( 0, 13, 90 )
					mins = Vector( -10, -6, 0 )
					boxmins = Vector( -10, -6, 0 )
					maxs = Vector( 10, 6, 4 )
					boxmaxs = Vector( 10, 6, 4 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Truck_block"
					parentname = "Level_Truck"
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Train

RegisterEntityGroup( "LvObj", LvObj )