//-------------------------------------------------------
// Autogenerated from 'subways.vmf'
//-------------------------------------------------------
LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.light1,
			EntityGroup.SpawnTables.light2,
			EntityGroup.SpawnTables.light3,
			EntityGroup.SpawnTables.light4,
			EntityGroup.SpawnTables.light21,
			EntityGroup.SpawnTables.light22,
			EntityGroup.SpawnTables.light23,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.light1,
			EntityGroup.SpawnTables.light2,
			EntityGroup.SpawnTables.light3,
			EntityGroup.SpawnTables.light4,
			EntityGroup.SpawnTables.light21,
			EntityGroup.SpawnTables.light22,
			EntityGroup.SpawnTables.light23,
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
			light1 =
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "0"
					_constant_attn = "0"
					distance = "128"
					_exponent = "1"
					_fifty_percent_distance = "0"
					_inner_cone = "30"
					_light = "248 21 5 60"
					_lightHDR = "-1 -1 -1 1"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					angles = Vector( -31.5083, 330.457, -1.56204 )
					pitch = "-31.5083"
					spawnflags = "0"
					brightness = "2"
					spotlight_radius = 8
					origin = Vector( -242, 43, 60.581 )
					targetName = "Level_SuvwayOpen_light1"
				}
			}
			light2 =
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "0"
					_constant_attn = "0"
					distance = "128"
					_exponent = "1"
					_fifty_percent_distance = "0"
					_inner_cone = "30"
					_light = "248 21 5 60"
					_lightHDR = "-1 -1 -1 1"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					angles = Vector( -45, 25.21, 6.84491 )
					pitch = "-45"
					spawnflags = "0"
					brightness = "2"
					spotlight_radius = 8
					origin = Vector( 242, 43, 60.236 )
					targetName = "Level_SuvwayOpen_light2"
				}
			}
			light3 =
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "0"
					_constant_attn = "0"
					distance = "128"
					_exponent = "1"
					_fifty_percent_distance = "0"
					_inner_cone = "30"
					_light = "248 21 5 60"
					_lightHDR = "-1 -1 -1 1"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					angles = Vector( -45, 219, 0 )
					pitch = "-45"
					spawnflags = "0"
					brightness = "2"
					spotlight_radius = 8
					origin = Vector( -242, -43, 60.236 )
					targetName = "Level_SuvwayOpen_light3"
				}
			}
			light4 =
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "0"
					_constant_attn = "0"
					distance = "128"
					_exponent = "1"
					_fifty_percent_distance = "0"
					_inner_cone = "30"
					_light = "248 21 5 60"
					_lightHDR = "-1 -1 -1 1"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					angles = Vector( -31.5083, 330.457, -1.56204 )
					pitch = "-31.5083"
					spawnflags = "0"
					brightness = "2"
					spotlight_radius = 8
					origin = Vector( 242, -43, 60.581 )
					targetName = "Level_SuvwayOpen_light4"
				}
			}
			light21 =
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "0"
					_constant_attn = "2000"
					distance = "512"
					_exponent = "1"
					_fifty_percent_distance = "0"
					_inner_cone = "70"
					_cone = "70"
					_light = "176 219 207 200"
					_lightHDR = "-1 -1 -1 1"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					angles = Vector( -90, 0, 0 )
					pitch = "-90"
					spawnflags = "0"
					brightness = "3"
					spotlight_radius = 8
					origin = Vector( -160, 0, 145 )
					targetName = "Level_SuvwayOpen_light21"
				}
			}
			light22 =
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "0"
					_constant_attn = "2000"
					distance = "512"
					_exponent = "1"
					_fifty_percent_distance = "0"
					_inner_cone = "70"
					_cone = "70"
					_light = "176 219 207 200"
					_lightHDR = "-1 -1 -1 1"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					angles = Vector( -90, 0, 0 )
					pitch = "-90"
					spawnflags = "0"
					brightness = "3"
					spotlight_radius = 8
					origin = Vector( 0, 0, 145 )
					targetName = "Level_SuvwayOpen_light22"
				}
			}
			light23 =
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "0"
					_constant_attn = "2000"
					distance = "512"
					_exponent = "1"
					_fifty_percent_distance = "0"
					_inner_cone = "70"
					_cone = "70"
					_light = "176 219 207 200"
					_lightHDR = "-1 -1 -1 1"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					angles = Vector( -90, 0, 0 )
					pitch = "-90"
					spawnflags = "0"
					brightness = "3"
					spotlight_radius = 8
					origin = Vector( 160, 0, 145 )
					targetName = "Level_SuvwayOpen_light23"
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Subways

RegisterEntityGroup( "LvObj", LvObj )