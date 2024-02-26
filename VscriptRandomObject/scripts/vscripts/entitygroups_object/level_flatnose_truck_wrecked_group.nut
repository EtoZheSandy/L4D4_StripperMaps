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
		//	EntityGroup.SpawnTables.Level_Truck_mask01,
			EntityGroup.SpawnTables.Level_Truck_mask02,
			EntityGroup.SpawnTables.Level_Truck_mask03,
			EntityGroup.SpawnTables.Level_Truck_mask04,
			EntityGroup.SpawnTables.Level_Truck_mask05,
			EntityGroup.SpawnTables.Level_Truck_mask06,
			EntityGroup.SpawnTables.Level_Truck_mask07,
			EntityGroup.SpawnTables.Level_Truck_mask08,
			EntityGroup.SpawnTables.Level_Truck_mask09,
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
			Level_Truck_mask01 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 2, 338, -5 )
					disableshadows = "1"
					model = "models/props/de_nuke/crate_small.mdl"
					rendermode = "1"
					renderamt = "0"
					solid = "6"
					origin = Vector( 77, -34, -72 )
					targetname = "Level_Truck_mask"
				}
			}
			Level_Truck_mask02 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 2, 338, -5 )
					disableshadows = "1"
					model = "models/props/de_nuke/crate_small.mdl"
					rendermode = "1"
					renderamt = "0"
					solid = "6"
					origin = Vector( 78, -30, -25 )
					targetname = "Level_Truck_mask"
				}
			}
			Level_Truck_mask03 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 2, 338, -5 )
					disableshadows = "1"
					model = "models/props/de_nuke/crate_small.mdl"
					rendermode = "1"
					renderamt = "0"
					solid = "6"
					origin = Vector( 63, -59, -72 )
					targetname = "Level_Truck_mask"
				}
			}
			Level_Truck_mask04 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 2, 338, -5 )
					disableshadows = "1"
					model = "models/props/de_nuke/crate_small.mdl"
					rendermode = "1"
					renderamt = "0"
					solid = "6"
					origin = Vector( 66, -59, -22 )
					targetname = "Level_Truck_mask"
				}
			}
			Level_Truck_mask05 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 2, 338, -5 )
					disableshadows = "1"
					model = "models/props/de_nuke/crate_small.mdl"
					rendermode = "1"
					renderamt = "0"
					solid = "6"
					origin = Vector( 92, -52, -72 )
					targetname = "Level_Truck_mask"
				}
			}
			Level_Truck_mask06 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 2, 338, -5 )
					disableshadows = "1"
					model = "models/props/de_nuke/crate_small.mdl"
					rendermode = "1"
					renderamt = "0"
					solid = "6"
					origin = Vector( 89, -38, -25 )
					targetname = "Level_Truck_mask"
				}
			}
			Level_Truck_mask07 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 2, 338, -5 )
					disableshadows = "1"
					model = "models/props/de_nuke/crate_small.mdl"
					rendermode = "1"
					renderamt = "0"
					solid = "6"
					origin = Vector( 84, -65, -72 )
					targetname = "Level_Truck_mask"
				}
			}
			Level_Truck_mask08 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 2, 252, -1 )
					disableshadows = "1"
					model = "models/props_fortifications/concrete_block001_128_reference.mdl"
					rendermode = "1"
					renderamt = "0"
					solid = "6"
					origin = Vector( -20, -22, -77 )
					targetname = "Level_Truck_mask"
				}
			}
			Level_Truck_mask09 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 2, 255, -1 )
					
					disableshadows = "1"
					model = "models/props_fortifications/concrete_block001_128_reference.mdl"
					rendermode = "1"
					renderamt = "0"
					solid = "6"
					origin = Vector( -88, -10, -75 )
					targetname = "Level_Truck_mask"
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Train

RegisterEntityGroup( "LvObj", LvObj )