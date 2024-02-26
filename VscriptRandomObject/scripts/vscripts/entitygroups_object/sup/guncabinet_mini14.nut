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
			EntityGroup.SpawnTables.item_dummy
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
			item_dummy = 
			{
				SpawnInfo =
				{
					model = "models/w_models/weapons/w_sniper_mini14.mdl"
					origin = Vector( 0, -11.5, 13 )
					angles = Vector( -90, 0, 0 )
					skin = "1"
					targetname = "manacat_item_dummy"
					classname = "prop_dynamic_override"
					disableshadows = "1"
					solid = "5"
					spawnflags = "266"
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "Obj", Obj )