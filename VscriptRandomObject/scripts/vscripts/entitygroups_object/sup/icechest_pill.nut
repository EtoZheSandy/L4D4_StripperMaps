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
					classname = "weapon_pain_pills_spawn"
					origin = Vector( 11, 2, 7 )
					angles = Vector( 90, 330, 90 )
					count = "1"
					skin = "1"
					weaponskin = "1"
					targetname = "manacat_item"
					solid = "6"
					spawnflags = "2"
					disableshadows = "1"
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "Obj", Obj )