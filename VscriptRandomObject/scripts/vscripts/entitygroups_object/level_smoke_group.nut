LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_Smoke_particle1,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_Smoke_particle1,
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
			Level_Smoke_particle1 = 
			{
				SpawnInfo =
				{
					classname = "info_particle_system"
					angles = Vector( 0, 180, 0 )
					cpoint1_parent = "0"
					cpoint2_parent = "0"
					cpoint3_parent = "0"
					cpoint4_parent = "0"
					cpoint5_parent = "0"
					cpoint6_parent = "0"
					cpoint7_parent = "0"
					effect_name = "smoke_window"
					start_active = "1"
					fademaxdist = "3250"
					fademindist = "3050"
					targetname = "Level_Smoke_particle1"
					origin = Vector( 0, 0, 0 )
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )