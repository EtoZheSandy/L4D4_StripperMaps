Obj <-
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
			EntityGroup.SpawnTables.Level_item1
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
			Level_item1 = 
			{
				SpawnInfo =
				{
					classname = "weapon_pain_pills_spawn"
					targetname = "Level_Item"
					angles = Vector( 80, 330, 65 )
					count = "1"
					spawnflags = "2"
					disableshadows = "1"
					origin = Vector( -7, 21, 15 )
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "Obj", Obj )