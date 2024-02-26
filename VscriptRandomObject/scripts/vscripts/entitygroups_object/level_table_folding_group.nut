LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_Object,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_Object,
			EntityGroup.SpawnTables.Level_Object_block0,
			EntityGroup.SpawnTables.Level_Object_block1,
			EntityGroup.SpawnTables.Level_Object_block2,
			EntityGroup.SpawnTables.Level_Object_block3,
			EntityGroup.SpawnTables.Level_Object_block4,
			EntityGroup.SpawnTables.Level_Object_block5,
			EntityGroup.SpawnTables.Level_Object_block6,
			EntityGroup.SpawnTables.Level_Object_block7,
			EntityGroup.SpawnTables.Level_Object_block8,
			EntityGroup.SpawnTables.Level_Object_block9,
			EntityGroup.SpawnTables.Level_Object_block10,
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
			Level_Object = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					disableselfshadowing = "0"
					disablevertexlighting = "0"
					disableX360 = "0"
					fademaxdist = "2100"
					fademindist = "2000"
					fadescale = "1"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_interiors/table_folding.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					disableshadows = true
					origin = Vector( 0, 0, 0 )
					targetname = "Level_Object"
				}
			}
			Level_Object_block0 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					mins = Vector( -18, -43, 29 )
					boxmins = Vector( -18, -43, 29 )
					maxs = Vector( 18, 43, 29.6 )
					boxmaxs = Vector( 18, 43, 29.6 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
			Level_Object_block1 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 14.5, 34, 0 )
					mins = Vector( -0.5, -0.5, 0 )
					boxmins = Vector( -0.5, -0.5, 0 )
					maxs = Vector( 0.5, 0.5, 9.3 )
					boxmaxs = Vector( 0.5, 0.5, 9.3 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
			Level_Object_block2 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( -14.5, 34, 0 )
					mins = Vector( -0.5, -0.5, 0 )
					boxmins = Vector( -0.5, -0.5, 0 )
					maxs = Vector( 0.5, 0.5, 9.3 )
					boxmaxs = Vector( 0.5, 0.5, 9.3 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
			Level_Object_block3 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 14.5, -34, 0 )
					mins = Vector( -0.5, -0.5, 0 )
					boxmins = Vector( -0.5, -0.5, 0 )
					maxs = Vector( 0.5, 0.5, 9.3 )
					boxmaxs = Vector( 0.5, 0.5, 9.3 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
			Level_Object_block4 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( -14.5, -34, 0 )
					mins = Vector( -0.5, -0.5, 0 )
					boxmins = Vector( -0.5, -0.5, 0 )
					maxs = Vector( 0.5, 0.5, 9.3 )
					boxmaxs = Vector( 0.5, 0.5, 9.3 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
			Level_Object_block5 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 34, 0 )
					mins = Vector( -14.5, -0.5, 8.3 )
					boxmins = Vector( -14.5, -0.5, 8.3 )
					maxs = Vector( 14.5, 0.5, 9.3 )
					boxmaxs = Vector( 14.5, 0.5, 9.3 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
			Level_Object_block6 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, -34, 0 )
					mins = Vector( -14.5, -0.5, 8.3 )
					boxmins = Vector( -14.5, -0.5, 8.3 )
					maxs = Vector( 14.5, 0.5, 9.3 )
					boxmaxs = Vector( 14.5, 0.5, 9.3 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
			Level_Object_block7 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 7.3, -34, 0 )
					mins = Vector( -0.5, -0.5, 9.3 )
					boxmins = Vector( -0.5, -0.5, 9.3 )
					maxs = Vector( 0.5, 0.5, 29 )
					boxmaxs = Vector( 0.5, 0.5, 29 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
			Level_Object_block8 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( -7.3, -34, 0 )
					mins = Vector( -0.5, -0.5, 9.3 )
					boxmins = Vector( -0.5, -0.5, 9.3 )
					maxs = Vector( 0.5, 0.5, 29 )
					boxmaxs = Vector( 0.5, 0.5, 29 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
			Level_Object_block9 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 7.3, 34, 0 )
					mins = Vector( -0.5, -0.5, 9.3 )
					boxmins = Vector( -0.5, -0.5, 9.3 )
					maxs = Vector( 0.5, 0.5, 29 )
					boxmaxs = Vector( 0.5, 0.5, 29 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
			Level_Object_block10 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( -7.3, 34, 0 )
					mins = Vector( -0.5, -0.5, 9.3 )
					boxmins = Vector( -0.5, -0.5, 9.3 )
					maxs = Vector( 0.5, 0.5, 29 )
					boxmaxs = Vector( 0.5, 0.5, 29 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_Object_block"
					parentname = "Level_Object"
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Object

RegisterEntityGroup( "LvObj", LvObj )