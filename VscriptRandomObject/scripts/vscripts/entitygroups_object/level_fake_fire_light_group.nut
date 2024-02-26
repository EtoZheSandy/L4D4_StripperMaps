LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_FakeFire_light_dynamic1,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_FakeFire_light_dynamic1,
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
			Level_FakeFire_light_dynamic1 = 
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "1"
					_constant_attn = "1000"
					_distance = "0"
					_fifty_percent_distance = "0"
					_inner_cone = "1"
					_light = "235 50 0 50"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					_zero_percent_distance = "0"
					spotlight_radius = 0
					distance = 250
					brightness = 1
					angles = Vector( 0, 0, 0 )
					pitch = "0"
					style = "6"
					targetname = "Level_FakeFire_light_dynamic1"
					origin = Vector( 0, 0, 50 )
					editor =
					{
						color = "115 164 0"
						visgroupshown = "1"	
						visgroupautoshown = "1"
						logicalpos = "[0 2500]"
					}
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )