LvObj <-
{
	//맵별로 문 열리는 방향이 달라서 opendir 차이로 A-B가 나뉨
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
			EntityGroup.SpawnTables.fridge_item,
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
			fridge_item = 
			{
				SpawnInfo =
				{
					classname = "weapon_adrenaline_spawn"
					angles = Vector( 0, 180, 0 )
					disableshadows = "1"
					parentname = "fridge"
					solid = "6"
					spawnflags = "16"
					targetname = "fridge_item"
					weaponskin = "-1"
					origin = Vector( 0, 0, 34 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Fridge

RegisterEntityGroup( "LvObj", LvObj )
