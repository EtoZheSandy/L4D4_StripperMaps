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
			EntityGroup.SpawnTables.gun_rifle1
			EntityGroup.SpawnTables.gun_rifle2
			EntityGroup.SpawnTables.gun_rifle3
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
			gun_rifle1 = 
			{
				SpawnInfo =
				{
					targetname = "Level_Rifle"
					classname = "weapon_rifle_ak47_spawn"
					angles = Vector( -90, 0, 0 )
					count = "1"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					weaponskin = "2"
					origin = Vector( 0, 0, 14 )
				}
			}
			gun_rifle2 = 
			{
				SpawnInfo =
				{
					targetname = "Level_Rifle"
					classname = "weapon_rifle_ak47_spawn"
					angles = Vector( -90, 0, 0 )
					count = "1"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					weaponskin = "0"
					origin = Vector( 0, -15, 14 )
				}
			}
			gun_rifle3 = 
			{
				SpawnInfo =
				{
					targetname = "Level_Rifle"
					classname = "weapon_rifle_ak47_spawn"
					angles = Vector( -90, 0, 0 )
					count = "1"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					weaponskin = "1"
					origin = Vector( 0, 7.25, 14 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Gunc

RegisterEntityGroup( "Obj", Obj )