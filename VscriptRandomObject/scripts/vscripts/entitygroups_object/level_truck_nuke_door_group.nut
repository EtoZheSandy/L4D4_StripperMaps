LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.door1,

		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.info_targetV,
			EntityGroup.SpawnTables.door1,
			EntityGroup.SpawnTables.door2,
			EntityGroup.SpawnTables.block,
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
			block =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "Level_truck_nuke_door1"
					mins = Vector( -54, -2.1, 0 )
					boxmins = Vector( -54, -2.1, 0 )
					maxs = Vector( 54, 2.1, 113 )
					boxmaxs = Vector( 54, 2.1, 113 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( 0, 145, 38.5 )
					angles = Vector( 0, 0, 0 )
				}
			}
			info_targetV = 
			{
				SpawnInfo =
				{
					classname = "info_target"
					targetname = "Level_truck_nuke_door_infoV"
					origin = Vector( 0, 145, 50 )
				}
			}
			door1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic_override"
					targetname = "Level_truck_nuke_door1"
					lightingorigin = "Level_truck_nuke_door_infoV"
					disableshadows = "1"
					angles = Vector( 0, 270.5, 0 )
					model = "models/props_interiors/door_sliding_breakable01.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					solid = "6"
					origin = Vector( 15, 145, 38.5 )
				}
			}
			door2 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic_override"
					targetname = "Level_truck_nuke_door2"
					lightingorigin = "Level_truck_nuke_door_infoV"
					disableshadows = "1"
					angles = Vector( 0, 269.5, 0 )
					model = "models/props_interiors/door_sliding_breakable01.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					solid = "6"
					origin = Vector( -15, 145, 38.5 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Table

RegisterEntityGroup( "LvObj", LvObj )