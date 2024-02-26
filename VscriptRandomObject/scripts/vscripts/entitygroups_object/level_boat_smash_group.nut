LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_Boat,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_Boat,
			EntityGroup.SpawnTables.Level_Boat_block,
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
			Level_Boat = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
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
					model = "models/props_vehicles/boat_smash.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					spawnflags = "264"
					disableshadows = true
					origin = Vector( 0, 0, -100 ) //탱크 드리블이 가능해서 +100 해주므로 -100으로 상쇄
					targetname = "Level_Boat"
					damagefilter = "filter_anti_survivor"
					physdamagescale = "0.1"
					inertiaScale = "1.0"
					connections =
					{
						OnBreak =
						{
							cmd1 = "Level_Boat_blockUnblockNav0-1"
						}
					}
				}
			}
			Level_Boat_block =
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					extent = Vector(100, 200, 20)
					solid = "2"
					targetname = "Level_Boat_block"
					//parentname = "Level_Boat"
					origin = Vector(0, 0, -121)
					angles = Vector(0, 0, 0)
					affectsFlow = "1"
					teamToBlock = "-1"
					StartDisabled = "1"
					//RecheckBreakables = "1"
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
							cmd1 = "Level_Boat_blockBlockNav0-1"
							cmd3 = "Level_worldOutKill0-1"
						}
					}
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Train

RegisterEntityGroup( "LvObj", LvObj )