LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_Floodlight_lamp1,
			EntityGroup.SpawnTables.Level_Floodlight_light_dynamic1,
			EntityGroup.SpawnTables.Level_Floodlight_light1,
			EntityGroup.SpawnTables.Level_Floodlight_light2,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_Floodlight_lamp1,
			EntityGroup.SpawnTables.Level_Floodlight_light_dynamic1,
			EntityGroup.SpawnTables.Level_Floodlight_light1,
			EntityGroup.SpawnTables.Level_Floodlight_light2,
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
			Level_Floodlight_lamp1 = 
			{
				prop_data = "Metal.LargeHealth"
				SpawnInfo =
				{
					id = "6"
					classname = "prop_physics"
					angles = Vector( 0, 180, 0 )
					body = "0"
					CanObstructNav = "1"
					damagetoenablemotion = "0"
					Damagetype = "0"
					disablereceiveshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "2048"
					fademindist = "1536"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					inertiaScale = "1.0"
					massScale = "0"
					minhealthdmg = "0"
					model = "models/props_equipment/light_floodlight.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "1"
					spawnflags = "256"
					targetname = "workspots"
					connections =
					{
						OnHealthChanged =
						{
							cmd1 = "Level_Floodlight_light_dynamic1TurnOff0-1"
							cmd2 = "workspotsbeam02Kill0-1"
							cmd3 = "workspotsSkin00-1"
						}
					}
					origin = Vector ( 0, 0, 0 )
				}
			}
			
			Level_Floodlight_light1 = 
			{
				SpawnInfo =
				{
					classname = "beam_spotlight"
					angles = Vector( 10, -160, 100 )
					disablereceiveshadows = "0"
					fademindist = "-1"
					fadescale = "1"
					HDRColorScale = ".2"
					maxspeed = "100"
					parentname = "workspots"
					renderamt = "150"
					rendercolor = "242 235 206"
					renderfx = "0"
					rendermode = "0"
					spawnflags = "3"
					spotlightlength = "64"
					spotlightwidth = "24"
					targetname = "workspotsbeam02"
					origin = Vector( 0, 13, 80.5 )
				}
			}

			Level_Floodlight_light2 = 
			{
				SpawnInfo =
				{
					classname = "beam_spotlight"
					angles = Vector ( 10, 160, 100 )
					disablereceiveshadows = "0"
					fademindist = "-1"
					fadescale = "1"
					HDRColorScale = ".2"
					maxspeed = "100"
					parentname = "workspots"
					renderamt = "150"
					rendercolor = "242 235 206"
					renderfx = "0"
					rendermode = "0"
					spawnflags = "3"
					spotlightlength = "64"
					spotlightwidth = "24"
					targetname = "workspotsbeam02"
					origin = Vector( 0, -13, 80.5 )
				}
			}

			
			Level_Floodlight_light_dynamic1 = 
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "1"
					_constant_attn = "1000"
					_distance = "0"
					_fifty_percent_distance = "0"
					_inner_cone = "30"
					_light = "225 217 170 300"
					_lightHDR = "-1 -1 -1 1"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					_zero_percent_distance = "0"
					spotlight_radius = "400"
					distance = "200"
					brightness = 2
					angles = Vector( 0, 0, 0 )
					pitch = "-19.5924"
					style = "12"
					targetname = "Level_Floodlight_light_dynamic1"
					parentname = "workspots"
					origin = Vector( -20, 0, 85 )
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