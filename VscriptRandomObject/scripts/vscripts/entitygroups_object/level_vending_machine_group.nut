//-------------------------------------------------------
// Autogenerated from 'table.vmf'
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
			EntityGroup.SpawnTables.vendingMachine,

		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.vendingMachine,
			EntityGroup.SpawnTables.block0,
			EntityGroup.SpawnTables.block1,
			EntityGroup.SpawnTables.block2,
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
			
			block0 =
			{//몸통
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "Level_vendingMachine"
					mins = Vector( -23.85, -17.9, 0 )
					boxmins = Vector( -23.85, -17.9, 0 )
					maxs = Vector( 23.85, 17.9, 83.7 )
					boxmaxs = Vector( 23.85, 17.9, 83.7 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( 0, 0, 0 )
				}
			}
			block1 =
			{//곡면
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "Level_vendingMachine"
					mins = Vector( -6, 0, 0 )
					boxmins = Vector( -6, 0, 0 )
					maxs = Vector( 6, 17, 83.7 )
					boxmaxs = Vector( 6, 17, 83.7 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( -6, -20.75, 0 )
				}
			}
			block2 =
			{//곡면
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "Level_vendingMachine"
					mins = Vector( -12, 0, 0 )
					boxmins = Vector( -12, 0, 0 )
					maxs = Vector( 12, 17, 83.7 )
					boxmaxs = Vector( 12, 17, 83.7 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( -6, -19.5, 0 )
				}
			}
			vendingMachine = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_vendingMachine"
					disableshadows = "1"
					angles = Vector( 0, 0, 0 )
					body = "0"
					disablereceiveshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					LagCompensate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props/cs_office/vending_machine.mdl"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					solid = "6"
					spawnflags = "0"
					skin = ::modelskin
					origin = Vector( 0, 0, 0 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Table

RegisterEntityGroup( "LvObj", LvObj )