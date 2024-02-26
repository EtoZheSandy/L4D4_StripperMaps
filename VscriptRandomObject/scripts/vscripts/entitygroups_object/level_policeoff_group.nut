LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_PoliceCar_car1,
			EntityGroup.SpawnTables.Level_PoliceCar_glass1,
			EntityGroup.SpawnTables.Level_PoliceCar_lightbar,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_PoliceCar_car1,
			EntityGroup.SpawnTables.Level_PoliceCar_glass1,
			EntityGroup.SpawnTables.Level_PoliceCar_lightbar,
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
			Level_PoliceCar_car1 = 
			{
				SpawnInfo =
				{
					id = "3"
					classname = "prop_physics"
					angles = Vector( 0, 0, 0 )
					body = "0"
					BreakableType = "0"
					CanObstructNav = "1"
					damagetoenablemotion = "0"
					Damagetype= "0"
					disablereceiveshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "2250"
					fademindist = "2000"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					inertiaScale = "1.0"
					massScale = "0"
					minhealthdmg = "0"
					model = "models/props_vehicles/police_car.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "256"
					targetname = "Level_Policecar_on"
					origin = Vector( 0, 0, 0 )
				}
			}
			
			Level_PoliceCar_glass1 = 
			{
				SpawnInfo =
				{
					id = "7"
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					body = "0"
					disablereceiveshadows = "0"
					disableshadows = "1"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "2250"
					fademindist = "2000"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_vehicles/police_car_glass.mdl"
					parentname = "Level_Policecar_on"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					StartDisabled = "0"
					origin = Vector( 0, 0, 0 )
				}
			}
			
			Level_PoliceCar_lightbar = 
			{
				SpawnInfo =
				{
					id = "17"
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					body = "0"
					disablereceiveshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "3700"
					fademindist = "3500"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_vehicles/police_car_lightbar.mdl"
					parentname = "Level_Policecar_on"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "police_lightbar"
					origin = Vector( 0, 0, 0 )
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )