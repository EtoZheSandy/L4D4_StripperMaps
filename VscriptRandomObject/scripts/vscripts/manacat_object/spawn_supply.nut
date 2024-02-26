::spawn_supply <- function(modelName, vecV, angV){
	if(::mp_gamemode == "versus")return;
	local property = modelName.find("_");
	if(property != null){
		property = modelName.slice(property+1).tostring();
		modelName = modelName.slice(0, modelName.len()-property.len()-1).tostring();
	}
	IncludeScript(::entitygroups_obj+"sup/"+modelName, g_MapScript);
	local EntityGroup = g_MapScript.GetEntityGroup( "Obj" );
	local ent = g_MapScript.SpawnSingleAt( EntityGroup, vecV, QAngle(angV.x,angV.y,angV.z) );

	if(modelName == "parachute"){
		local weaponList = [];
		local itemList = ["adre"];
		switch(property){
			case "t1" :
				weaponList = ["mp5", "scout"];
				break;
			case "t2" :
				weaponList = ["m16", "scar", "ms", "m60"];
				break;
			default :
				weaponList = ["m16", "scar", "ms", "mp5", "scout", "m60"];
				break;
		}

		local weapon = weaponList.remove(RandomInt(0,weaponList.len()-1));
		IncludeScript(::entitygroups_obj+"sup/"+modelName+"_"+weapon, g_MapScript);
		EntityGroup = g_MapScript.GetEntityGroup( "Obj" );
		g_MapScript.SpawnSingleAt( EntityGroup, vecV, QAngle(angV.x,angV.y,angV.z) );
		
		if(RandomInt(1,2) == 1){
			local items = itemList.remove(RandomInt(0,itemList.len()-1));
			IncludeScript(::entitygroups_obj+"sup/"+modelName+"_"+items, g_MapScript);
			EntityGroup = g_MapScript.GetEntityGroup( "Obj" );
			g_MapScript.SpawnSingleAt( EntityGroup, vecV, QAngle(angV.x,angV.y,angV.z) );
		}
	}else if(modelName == "locker" || modelName == "icechest" || modelName == "guncabinet"){
		local opener = Entities.FindByClassnameNearest("prop_door_rotating", vecV, 335);
		if(opener != null){
			if(modelName == "locker" || modelName == "icechest"){
				opener.ValidateScriptScope();
				local scrScope = opener.GetScriptScope();
				local itemList = [];
				scrScope["boxOpen"] <- function (){
					switch(modelName){
						case "locker" :
							itemList = ["molo", "molo2", "pipe", "pill", "pill2", "pill3", "pill4"];
							break;
						case "icechest" :
							itemList = ["pill", "adre"];
							break;
					}
					for(local i = 0; i < 2; i++){
						if(RandomInt(1,2)==1)continue;
						local items = itemList.remove(RandomInt(0,itemList.len()-1));
						IncludeScript(::entitygroups_obj+"sup/"+modelName+"_"+items, g_MapScript);
						EntityGroup = g_MapScript.GetEntityGroup( "Obj" );
						g_MapScript.SpawnSingleAt( EntityGroup, vecV, QAngle(angV.x,angV.y,angV.z) );
					}
					printl("열림"+opener.GetName()+"  "+((vecV-opener.GetOrigin()).Length()));
				}
				opener.ConnectOutput("OnOpen","boxOpen");
			}else if(modelName == "guncabinet"){
				local itemList = ["pistol_1", "pistol_2", "pistolM", /*"m16", "ak47",*/ "ak47_1", "mini14"];
				switch(property){
					case "m16" :
						itemList = ["pistol_1", "pistol_2", "m16_1", "m16_2", "m16_3", "m16_4", "laser"];
						break;
				}
				local selectList = [];
				for(local i = 0; i < 5; i++){
				//	if(RandomInt(1,2)==1)continue;
					local items = itemList.remove(RandomInt(0,itemList.len()-1));
					IncludeScript(::entitygroups_obj+"sup/"+modelName+"_"+items, g_MapScript);
					EntityGroup = g_MapScript.GetEntityGroup( "Obj" );
					g_MapScript.SpawnSingleAt( EntityGroup, vecV, QAngle(angV.x,angV.y,angV.z) );
					selectList.append(items);
				}
				opener.ValidateScriptScope();
				local scrScope = opener.GetScriptScope();
				scrScope["boxOpen"] <- function (){
					IncludeScript(::entitygroups_obj+"sup/"+modelName+"_block", g_MapScript);
					EntityGroup = g_MapScript.GetEntityGroup( "Obj" );
					g_MapScript.SpawnSingleAt( EntityGroup, vecV, QAngle(angV.x,angV.y,angV.z) );
					local dummy = null;
					while (dummy = Entities.FindByClassname(dummy, "prop_dynamic")){
						if(dummy.IsValid() && NetProps.GetPropInt( dummy, "m_spawnflags" ) == 266 && (dummy.GetOrigin() - vecV).Length() < 65){
							local ptype = "";
							switch(dummy.GetModelName()){
								case "models/w_models/weapons/w_pistol_B.mdl":
									ptype = "weapon_pistol"; break;
								case "models/w_models/weapons/w_desert_eagle.mdl":
									ptype = "weapon_pistol_magnum"; break;
								case "models/w_models/weapons/w_rifle_m16a2.mdl":
									ptype = "weapon_rifle"; break;
								case "models/w_models/weapons/w_rifle_ak47.mdl":
									ptype = "weapon_rifle_ak47"; break;
								case "models/w_models/weapons/w_sniper_mini14.mdl":
									ptype = "weapon_hunting_rifle"; break;
								case "models/w_models/weapons/w_laser_sights.mdl":
									ptype = "upgrade_laser_sight"; break;
							}
							local skinV = NetProps.GetPropInt( dummy, "m_nSkin" );
							if(ptype != ""){
								local dmVec = dummy.GetOrigin();
								local dmAng = dummy.GetAngles();	dmAng = Vector(dmAng.x,dmAng.y,dmAng.z);
								local item = SpawnEntityFromTable(ptype,
								{
									targetname = "manacat_item"
									origin = dmVec
									angles = dmAng
									solid = "6"
									spawnflags = "1"
								});
								local ammo = 0;
								switch(ptype){
									case "weapon_smg":case "weapon_smg_silenced":case "weapon_smg_mp5":
										ammo = Convars.GetFloat("ammo_smg_max"); break;
									case "weapon_rifle":case "weapon_rifle_desert":case "weapon_rifle_ak47":
										ammo = Convars.GetFloat("ammo_assaultrifle_max"); break;
									case "weapon_pumpshotgun":case "weapon_shotgun_chrome":
										ammo = Convars.GetFloat("ammo_shotgun_max"); break;
									case "weapon_autoshotgun":case "weapon_shotgun_spas":
										ammo = Convars.GetFloat("ammo_autoshotgun_max"); break;
									case "weapon_hunting_rifle":
										ammo = Convars.GetFloat("ammo_huntingrifle_max"); break;
									case "weapon_sniper_military":case "weapon_sniper_scout":case "weapon_sniper_awp":
										ammo = Convars.GetFloat("ammo_sniperrifle_max"); break;
								}
								NetProps.SetPropIntArray( item, "m_nSkin", skinV, 0 );
								NetProps.SetPropIntArray( item, "m_iExtraPrimaryAmmo", ammo, 0 );
							}
							dummy.Kill();
						}
					}/*
					local len = selectList.len();
					for(local i = 0; i < len; i++){
						IncludeScript(::entitygroups_obj+"sup/"+modelName+"_"+selectList[i], g_MapScript);
						EntityGroup = g_MapScript.GetEntityGroup( "Obj" );
						g_MapScript.SpawnSingleAt( EntityGroup, vecV, QAngle(angV.x,angV.y,angV.z) );
					}*/
					printl("열림"+opener.GetName()+"  "+((vecV-opener.GetOrigin()).Length()));
				}
				opener.ConnectOutput("OnOpen","boxOpen");
			}
		}
	}
}