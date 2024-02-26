LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_Crate,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			//EntityGroup.SpawnTables.Level_Crate,
			EntityGroup.SpawnTables.Level_Crate_block,
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
			Level_Crate = 
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
					model = "models/props/de_nuke/crate_small.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					disableshadows = true
					origin = Vector( 0, 0, 0 )
					targetname = "Level_Crate"
				}
			}
			stair1 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_stair"
					mins = Vector( -32.5, -32.5, 0 )
					boxmins = Vector( -32.5, -32.5, 0 )
					maxs = Vector( 32.5, 32.5, 1 )
					boxmaxs = Vector( 32.5, 32.5, 1 )
					initialstate = "1"
					BlockType = "3"
					origin = Vector( 0, 0, 10 )
				}
			}
			stair2 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_stair"
					mins = Vector( -32.4, -32.4, 0 )
					boxmins = Vector( -32.4, -32.4, 0 )
					maxs = Vector( 32.4, 32.4, 1 )
					boxmaxs = Vector( 32.4, 32.4, 1 )
					initialstate = "1"
					BlockType = "3"
					origin = Vector( 0, 0, 27 )
				}
			}
			stair3 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_stair"
					mins = Vector( -32.3, -32.3, 0 )
					boxmins = Vector( -32.3, -32.3, 0 )
					maxs = Vector( 32.3, 32.3, 1 )
					boxmaxs = Vector( 32.3, 32.3, 1 )
					initialstate = "1"
					BlockType = "3"
					origin = Vector( 0, 0, 41 )
				}
			}
			stair4 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_stair"
					mins = Vector( -32.2, -32.2, 0 )
					boxmins = Vector( -32.2, -32.2, 0 )
					maxs = Vector( 32.2, 32.2, 1 )
					boxmaxs = Vector( 32.2, 32.2, 1 )
					initialstate = "1"
					BlockType = "3"
					origin = Vector( 0, 0, 58 )
				}
			}
			Level_Crate_block =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -32, -32, 0 )
					boxmins = Vector( -32, -32, 0 )
					maxs = Vector( 32, 32, 64 )
					boxmaxs = Vector( 32, 32, 64 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Train

RegisterEntityGroup( "LvObj", LvObj )