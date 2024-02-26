LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_Flare,
			EntityGroup.SpawnTables.Level_Flare_smoke,
			EntityGroup.SpawnTables.Level_Flare_glow,
			EntityGroup.SpawnTables.Level_Flare_light,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_Flare,
			EntityGroup.SpawnTables.Level_Flare_smoke,
			EntityGroup.SpawnTables.Level_Flare_glow,
			EntityGroup.SpawnTables.Level_Flare_light,
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
			Level_Flare = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					disableselfshadowing = "0"
					fademaxdist = "3250"
					fademindist = "3050"
					fadescale = "1"
					model = "models/props_lighting/light_flares.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					targetname = "Level_BarrelFire_barrel1"
					origin = Vector( 0, 0, 0 )
				}
			}

			Level_Flare_smoke = 
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
					effect_name = "flare_burning"
					start_active = "1"
					fademaxdist = "3250"
					fademindist = "3050"
					targetname = "Level_Flare_smoke"
					origin = Vector( 0.5, 1, 1)
				}
			}

			Level_Flare_glow = 
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
					effect_name = "weapon_pipebomb_fuse"
					start_active = "1"
					fademaxdist = "3250"
					fademindist = "3050"
					targetname = "Level_Flare_glow"
					origin = Vector( 0.5, 1, 0 )
				}
			}

			Level_Flare_light = 
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "1"
					_constant_attn = "1000"
					_distance = "0"
					_fifty_percent_distance = "0"
					_inner_cone = "1"
					_light = "235 15 15 100"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					_zero_percent_distance = "0"
					spotlight_radius = 50
					distance = 192
					brightness = 1
					angles = Vector( 0, 0, 0 )
					pitch = "0"
					style = "6"
					targetname = "Level_BarrelFire_light"
					origin = Vector( 0, 0, 20 )
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