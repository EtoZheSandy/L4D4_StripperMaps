LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_junkyard_column,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_junkyard_column,
			EntityGroup.SpawnTables.Level_junkyard_column_block1,
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
			Level_junkyard_column = 
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
					model = "models/lighthouse/props/junkyard_column.mdl"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					disableshadows = true
					origin = Vector( 0, 0, 0 )
					targetName = "Level_junkyard_column"
					lightingorigin = ::info_targetV
				}
			}
			Level_junkyard_column_block1 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -24, -24, -115 )
					boxmins = Vector( -24, -24, -115 )
					maxs = Vector( 24, 24, 115 )
					boxmaxs = Vector( 24, 24, 115 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_junkyard_column_block"
					parentname = "Level_junkyard_column"
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Train

RegisterEntityGroup( "LvObj", LvObj )