Obj <-
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
			EntityGroup.SpawnTables.manacat_item
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
			manacat_item =
			{
				SpawnInfo =
				{
					classname = "weapon_smg_mp5_spawn"
					origin = Vector( 8, -2, 41 )
					angles = Vector( 45, 75, 0 )
					count = "1"
					skin = "0"
					weaponskin = "0"
					targetname = "manacat_item"
					solid = "6"
					spawnflags = "2"
					disableshadows = "1"
					spawn_without_director = "1"
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "Obj", Obj )