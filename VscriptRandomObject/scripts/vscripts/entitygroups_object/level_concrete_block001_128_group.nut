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
					model = "models/props_fortifications/concrete_block001_128_reference.mdl"
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
					mins = Vector( -20, -64, 0 )
					boxmins = Vector( -20, -64, 0 )
					maxs = Vector( 20, 64, 40 )
					boxmaxs = Vector( 20, 64, 40 )
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
					origin = Vector( 0, 0, 0 )
					mins = Vector( -4, 5, 0 )
					boxmins = Vector( -4, 5, 0 )
					maxs = Vector( 4, 55, 44 )
					boxmaxs = Vector( 4, 55, 44 )
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
					origin = Vector( 0, 0, 0 )
					mins = Vector( -4, -55, 0 )
					boxmins = Vector( -4, -55, 0 )
					maxs = Vector( 4, -5, 44 )
					boxmaxs = Vector( 4, -5, 44 )
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