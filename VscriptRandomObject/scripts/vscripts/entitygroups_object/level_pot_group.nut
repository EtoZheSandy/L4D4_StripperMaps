LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_pot_main,
			EntityGroup.SpawnTables.Level_pot_plant,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_pot_main,
			EntityGroup.SpawnTables.Level_worldOut,
			EntityGroup.SpawnTables.Level_pot_plant,
			EntityGroup.SpawnTables.Level_pot_plant2,
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
			Level_pot_main = 
			{
				SpawnInfo =
				{
					targetname = "Level_pot_main"
					classname = "prop_physics_override"
					model = "models/props_foliage/mall_pot_large02.mdl"
					solid = "6"
					spawnflags = "32769"
					massscale = "4.5"
					origin = Vector(0, 0, 0)
					angles = Vector(0, 0, 0)
					BreakableType = "2"
					connections =
					{
						OnHitByTank =
						{
							cmd1 = "Level_pot_plantSetParent-1-1"
							cmd2 = "Level_pot_plantWake-1-1"
							cmd3 = "Level_pot_plantRunScriptCodeself.ApplyAbsVelocityImpulse(Vector(0, RandomInt(0,359), 210))0-1"
							cmd4 = "Level_pot_plantRunScriptCodeself.ApplyLocalAngularVelocityImpulse(Vector(RandomInt(0,359),RandomInt(0,359),RandomInt(0,359)))0-1"
						}
					}
				}
			}
			Level_worldOut = 
			{
				SpawnInfo =
				{
					targetname = "Level_worldOut"
					classname = "prop_physics_override"
					model = "models/props_cemetery/grave_05.mdl"
					origin = Vector(0, 0, -50000)
					connections =
					{
						OnOutOfWorld =
						{
							cmd3 = "Level_worldOutKill0-1"
						}
					}
				}
			}
			Level_pot_plant = 
			{
				SpawnInfo =
				{
					targetname = "Level_pot_plant"
					parentname = "Level_pot_main"
					classname = "func_physbox"
					solid = "0"
					spawnflags = "16384"
					model = "models/props_cemetery/grave_05.mdl"
					origin = Vector(0, 0, 5)
					angles = Vector(0, 0, 0)
					effects = "32"
				}
			}
			Level_pot_plant2 = 
			{
				SpawnInfo =
				{
					targetname = "Level_pot_plant2"
					parentname = "Level_pot_plant"
					classname = "prop_dynamic"
					solid = "256"
					model = "models/props_foliage/mall_big_plant01_dirt.mdl"
					origin = Vector(0, 0, 30)
					angles = Vector(0, 0, 0)
				}
			}
			/*Level_pot_plant2 = 
			{
				SpawnInfo =
				{
					targetname = "Level_pot_plant2"
					classname = "prop_physics_override"
					spawnflags = "261"
					solid = "4"
					model = "models/props_foliage/mall_big_plant01_dirt.mdl"
					origin = Vector(0, 0, 30)
					angles = Vector(0, 0, 0)
				}
			}*/
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )