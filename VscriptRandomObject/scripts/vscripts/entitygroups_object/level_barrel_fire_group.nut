LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_BarrelFire_barrel1,
			EntityGroup.SpawnTables.Level_BarrelFire_fire1,
			EntityGroup.SpawnTables.Level_BarrelFire_fire_particle1,
			EntityGroup.SpawnTables.Level_BarrelFire_fire_particle2,
			EntityGroup.SpawnTables.Level_BarrelFire_fire_particle3,
			EntityGroup.SpawnTables.Level_BarrelFire_light1,
			EntityGroup.SpawnTables.Level_BarrelFire_light_dynamic1,
			EntityGroup.SpawnTables.Level_BarrelFire_env_sprite,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_BarrelFire_barrel1,
			EntityGroup.SpawnTables.Level_BarrelFire_fire1,
			EntityGroup.SpawnTables.Level_BarrelFire_fire_particle1,
			EntityGroup.SpawnTables.Level_BarrelFire_fire_particle2,
			EntityGroup.SpawnTables.Level_BarrelFire_fire_particle3,
			EntityGroup.SpawnTables.Level_BarrelFire_light1,
			EntityGroup.SpawnTables.Level_BarrelFire_light_dynamic1,
			EntityGroup.SpawnTables.Level_BarrelFire_env_sprite,
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
			Level_BarrelFire_barrel1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					disableselfshadowing = "0"
					fademaxdist = "3250"
					fademindist = "3050"
					fadescale = "1"
					model = "models/props_junk/barrel_fire.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					targetname = "Level_BarrelFire_barrel1"
					origin = Vector( 0, 0, 0 )
					editor =
					{
						color = "115 164 0"
						visgroupshown = "1"
						visgroupautoshown = "1"
					}
				}
			}

			Level_BarrelFire_fire1 = 
			{
				SpawnInfo =
				{
					classname = "env_fire"
					damagescale = "60.0"
					fireattack = "5"
					firesize = "35"
					firetype = "0"
					health = "30"
					ignitionpoint = "32"
					spawnflags = "31"
					StartDisabled = "0"
					fademaxdist = "3250"
					fademindist = "3050"
					origin = Vector( 0, 0, 35 )
					LightColor = "115 164 0"
					LightRadiusScale = "3000.0"
					LightBrightness = "255"
					targetname = "Level_BarrelFire_fire1"
					editor =
					{
						color = "0 180 0"
						visgroupshown = "1"
						visgroupautoshown = "1"
					}
				}
			}

			Level_BarrelFire_fire_particle1 = 
			{
				SpawnInfo =
				{
					classname = "info_particle_system"
					angles = Vector( 0, 0, 0 )
					cpoint1_parent = "0"
					cpoint2_parent = "0"
					cpoint3_parent = "0"
					cpoint4_parent = "0"
					cpoint5_parent = "0"
					cpoint6_parent = "0"
					cpoint7_parent = "0"
					effect_name = "fire_barrel_big_embers"
					start_active = "1"
					fademaxdist = "3250"
					fademindist = "3050"
					targetname = "Level_BarrelFire_fire_particle1"
					origin = Vector( 0, 0, 25 )
					editor =
					{
						color = "115 164 0"
						visgroupshown = "1"	
						visgroupautoshown = "1"
					}
				}
			}

			Level_BarrelFire_fire_particle2 = 
			{
				SpawnInfo =
				{
					classname = "info_particle_system"
					angles = Vector( 0, 0, 0 )
					cpoint1_parent = "0"
					cpoint2_parent = "0"
					cpoint3_parent = "0"
					cpoint4_parent = "0"
					cpoint5_parent = "0"
					cpoint6_parent = "0"
					cpoint7_parent = "0"
					effect_name = "fire_barrel_big_glow"
					start_active = "1"
					fademaxdist = "3250"
					fademindist = "3050"
					targetname = "Level_BarrelFire_fire_particle2"
					origin = Vector( 0, 0, 25 )
					editor =
					{
						color = "115 164 0"
						visgroupshown = "1"	
						visgroupautoshown = "1"
					}
				}
			}

			Level_BarrelFire_fire_particle3 = 
			{
				SpawnInfo =
				{
					classname = "info_particle_system"
					angles = Vector( 0, 0, 0 )
					cpoint1_parent = "0"
					cpoint2_parent = "0"
					cpoint3_parent = "0"
					cpoint4_parent = "0"
					cpoint5_parent = "0"
					cpoint6_parent = "0"
					cpoint7_parent = "0"
					effect_name = "fire_barrel_big_smoke"
					start_active = "1"
					fademaxdist = "3250"
					fademindist = "3050"
					targetname = "Level_BarrelFire_fire_particle3"
					origin = Vector( 0, 0, 25 )
					editor =
					{
						color = "115 164 0"
						visgroupshown = "1"	
						visgroupautoshown = "1"
					}
				}
			}

			Level_BarrelFire_light1 = 
			{
				SpawnInfo =
				{
					classname = "light"
					_castentityshadow = "1"
					_constant_attn = "0"
					_distance = "0"
					_light = "238 124 64 100"
					_lightHDR = "-1 -1 -1 1"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					_zero_percent_distance = "0"
					spawnflags = "0"
					style = "0"
					targetname = "Level_BarrelFire_light1"
					origin = Vector( 18.29, -8.52002, 15.528 )
					editor =
					{
						color = "115 164 0"
						visgroupshown = "1"	
						visgroupautoshown = "1"
						logicalpos = "[0 0]"
					}
				}
			}

			Level_BarrelFire_light_dynamic1 = 
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "1"
					_constant_attn = "1000"
					_distance = "0"
					_fifty_percent_distance = "0"
					_inner_cone = "1"
					_light = "235 50 0 100"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					_zero_percent_distance = "0"
					spotlight_radius = 400
					distance = 400
					brightness = 1
					angles = Vector( 0, 0, 0 )
					pitch = "0"
					style = "6"
					targetname = "Level_BarrelFire_light_dynamic1"
					origin = Vector( 0, 0, 60 )
					editor =
					{
						color = "115 164 0"
						visgroupshown = "1"	
						visgroupautoshown = "1"
						logicalpos = "[0 2500]"
					}
				}
			}

			Level_BarrelFire_env_sprite = 
			{
				SpawnInfo =
				{
					classname = "env_sprite"
					_castentityshadow = "0"
					fademindist = "-1"
					fadescale = "1"
					framerate = "10.0"
					GlowProxySize = "10"
					_lightscaleHDR = ".5"
					maxdxlevel = "0"
					mindxlevel = "0"
					model = "sprites/glow01.vmt"
					renderamt = "100"
					rendercolor = "207 136 92"
					renderfx = "0"
					rendermode = "9"
					scale = "2"
					spawnflags = "0"
					targetname = "Level_BarrelFire_env_sprite1"
					origin = Vector( 26.72, -9.51001, -0.472 )
					editor =
					{
						color = "115 164 0"
						visgroupshown = "1"	
						visgroupautoshown = "1"
						logicalpos = "[0 11000]"
					}
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )