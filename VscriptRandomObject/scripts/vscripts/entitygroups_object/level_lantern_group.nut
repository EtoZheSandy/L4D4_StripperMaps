LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_Lantern_lamp1,
			EntityGroup.SpawnTables.Level_Lantern_light_dynamic1,
			EntityGroup.SpawnTables.Level_Lantern_light_sprite1,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_Lantern_lamp1,
			EntityGroup.SpawnTables.Level_Lantern_light_dynamic1,
			EntityGroup.SpawnTables.Level_Lantern_light_sprite1,
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
			Level_Lantern_lamp1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 180, 0 )
					disableselfshadowing = "0"
					fademaxdist = "3250"
					fademindist = "3050"
					fadescale = "1"
					model = "models/props_unique/spawn_apartment/lantern.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "1"
					solid = "5"
					targetname = "Level_Lantern_lamp1"
					origin = Vector( 0, 0, 0 )
				}
			}

			Level_Lantern_light_dynamic1 = 
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "1"
					_constant_attn = "1000"
					_distance = "0"
					_fifty_percent_distance = "0"
					_inner_cone = "1"
					_light = "255 250 220 20"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					_zero_percent_distance = "0"
					spotlight_radius = 130
					distance = 130
					brightness = 1
					angles = Vector( 0, 0, 0 )
					pitch = "0"
					style = "1"
					targetname = "Level_Lantern_light_dynamic1"
					origin = Vector( 0, 0, 17 )
					editor =
					{
						color = "115 164 0"
						visgroupshown = "1"
						visgroupautoshown = "1"
						logicalpos = "[0 2500]"
					}
				}
			}

			Level_Lantern_light_sprite1 = 
			{
				SpawnInfo =
				{
					classname = "env_sprite"
					disablereceiveshadows = "0"
					fademindist = "-1"
					fadescale = "1"
					framerate = "10.0"
					GlowProxySize = "20"
					HDRColorScale = ".5"
					maxdxlevel = "0"
					mindxlevel = "0"
					model = "sprites/glow.vmt"
					renderamt = "200"
					rendercolor = "155 183 180"
					renderfx = "0"
					rendermode = "9"
					scale = ".5"
					targetname = "Level_Lantern_light_sprite1"
					origin = Vector( 0, 0, 20 )
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )