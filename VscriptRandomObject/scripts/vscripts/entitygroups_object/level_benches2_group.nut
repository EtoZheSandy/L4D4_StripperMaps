LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.unnamed1,
			EntityGroup.SpawnTables.unnamed2,
			EntityGroup.SpawnTables.unnamed3,
			EntityGroup.SpawnTables.unnamed4,
			EntityGroup.SpawnTables.unnamed5,
			EntityGroup.SpawnTables.block,
			EntityGroup.SpawnTables.Level_worldOut,
			EntityGroup.SpawnTables.Level_worldOut,
			EntityGroup.SpawnTables.stair1,
			EntityGroup.SpawnTables.stair2,
			EntityGroup.SpawnTables.stair3,
			EntityGroup.SpawnTables.stair4,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.unnamed5,
			EntityGroup.SpawnTables.unnamed4,
			EntityGroup.SpawnTables.unnamed3,
			EntityGroup.SpawnTables.unnamed2,
			EntityGroup.SpawnTables.unnamed1,
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.block,
			EntityGroup.SpawnTables.Level_navblock,
			EntityGroup.SpawnTables.Level_worldOut,
			EntityGroup.SpawnTables.stair1,
			EntityGroup.SpawnTables.stair2,
			EntityGroup.SpawnTables.stair3,
			EntityGroup.SpawnTables.stair4,
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
			stair1 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_bench_block"
					mins = Vector( -70, -44, 0 )
					boxmins = Vector( -70, -44, 0 )
					maxs = Vector( 1, 44, 1 )
					boxmaxs = Vector( 1, 44, 1 )
					initialstate = "1"
					BlockType = "3"
					origin = Vector( 29, 0, -6 )
				}
			}
			stair2 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_bench_block"
					mins = Vector( -48, -44, 0 )
					boxmins = Vector( -48, -44, 0 )
					maxs = Vector( 1, 44, 1 )
					boxmaxs = Vector( 1, 44, 1 )
					initialstate = "1"
					BlockType = "3"
					origin = Vector( 27, 0, 11 )
				}
			}
			stair3 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_bench_block"
					mins = Vector( -43, -44, 0 )
					boxmins = Vector( -43, -44, 0 )
					maxs = Vector( 1, 44, 1 )
					boxmaxs = Vector( 1, 44, 1 )
					initialstate = "1"
					BlockType = "3"
					origin = Vector( 24, 0, 28 )
				}
			}
			stair4 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_bench_block"
					mins = Vector( -1, -44, 0 )
					boxmins = Vector( -1, -44, 0 )
					maxs = Vector( 1, 44, 1 )
					boxmaxs = Vector( 1, 44, 1 )
					initialstate = "1"
					BlockType = "3"
					origin = Vector( 22, 0, 45 )
				}
			}
			block = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_bench_block"
					angles = Vector( 0, 0, 0 )
					mins = Vector( -13, -44, 0 )
					boxmins = Vector( -13, -44, 0 )
					maxs = Vector( 13, 44, 300 )
					boxmaxs = Vector( 13, 44, 300 )
					initialstate = "1"
					BlockType = "1"
					origin = Vector( 0, 0, 0 )
				}
			}
			Level_navblock = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					extent = Vector(50, 50, 20)
					solid = "2"
					targetname = "Level_navblock"
					origin = Vector(0, 0, 20)
					angles = Vector(0, 0, 0)
					affectsFlow = "1"
					teamToBlock = "2"
					StartDisabled = "1"
				}
			}
			Level_worldOut =
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, 0 )
					origin = Vector( 0, 0, -50000 )
					model = "models/props_junk/wood_crate001a.mdl"
					targetname = "Level_worldOut"
					connections =
					{
						OnOutOfWorld =
						{
							cmd1 = "Level_navblockBlockNav0-1"
							cmd2 = "Level_worldOutKill0-1"
						}
					}
				}
			}
			unnamed = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_bench"
					disableshadows = true
					angles = Vector( 0, 90, -75 )
					disableselfshadowing = "1"
					disablevertexlighting = "1"
					fademaxdist = "1000"
					fademindist = "922"
					fadescale = "1"
					model = "models/props/cs_militia/wood_bench.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					origin = Vector( 8.97291, 4, 4.59079 )
				}
			}
			unnamed1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_bench"
					disableshadows = true
					angles = Vector( 0, 90, 69.5 )
					disableselfshadowing = "1"
					disablevertexlighting = "1"
					fademaxdist = "1000"
					fademindist = "1310"
					fadescale = "1"
					model = "models/props/cs_militia/wood_bench.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					origin = Vector( -6.76356, 0, 21.2313 )
				}
			}
			unnamed2 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_bench"
					disableshadows = true
					angles = Vector( 0, 90, -15.5 )
					disableselfshadowing = "1"
					disablevertexlighting = "1"
					fademaxdist = "1000"
					fademindist = "900"
					fadescale = "1"
					model = "models/props/cs_militia/wood_bench.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					origin = Vector( -0.090189, 0, 29 )
				}
			}
			unnamed3 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_bench"
					disableshadows = true
					angles = Vector( 74.5, 0, 0 )
					disableselfshadowing = "1"
					disablevertexlighting = "1"
					fademaxdist = "1000"
					fademindist = "1310"
					fadescale = "1"
					model = "models/props/cs_militia/wood_bench.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					origin = Vector( 3.27991, -19.1979, 14 )
				}
			}
			unnamed4 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_bench"
					disableshadows = true
					angles = Vector( -74.5, 180, 0 )
					disableselfshadowing = "1"
					disablevertexlighting = "1"
					fademaxdist = "1000"
					fademindist = "1310"
					fadescale = "1"
					model = "models/props/cs_militia/wood_bench.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					origin = Vector( 3.29235, 24.0741, 14 )
				}
			}
			unnamed5 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_bench"
					disableshadows = true
					angles = Vector( 0, 90, -90.5 )
					disableselfshadowing = "1"
					disablevertexlighting = "1"
					fademaxdist = "1000"
					fademindist = "900"
					fadescale = "1"
					model = "models/props/cs_militia/wood_bench.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					origin = Vector( 7.63048, 4, 35 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Benches

RegisterEntityGroup( "LvObj", LvObj )