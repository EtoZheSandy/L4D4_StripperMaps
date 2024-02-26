LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_navblock0,
			EntityGroup.SpawnTables.Level_navblock1,
			EntityGroup.SpawnTables.Level_worldOut,
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
			Level_navblock0 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					extent = Vector(150, 2, 20)
					solid = "2"
					targetname = "Level_navblock0"
					origin = Vector(0, 70, -10)
					angles = Vector(0, 0, 0)
					affectsFlow = "1"
					teamToBlock = "-1"
					StartDisabled = "1"
				}
			}
			Level_navblock1 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					extent = Vector(150, 2, 20)
					solid = "2"
					targetname = "Level_navblock1"
					origin = Vector(0, -70, -10)
					angles = Vector(0, 0, 0)
					affectsFlow = "1"
					teamToBlock = "-1"
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
							cmd1 = "Level_navblock0BlockNav0-1"
							cmd2 = "Level_navblock1BlockNav0-1"
							cmd3 = "Level_worldOutKill0-1"
						}
					}
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Train

RegisterEntityGroup( "LvObj", LvObj )