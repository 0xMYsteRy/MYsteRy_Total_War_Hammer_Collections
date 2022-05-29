-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
--                                                                                                  
--	M Y S T E R Y    S E C O N D   W A R   O F   T H E   B E A R D   O V E R H A U L   S C R I P T
--
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
function mystery_teclis()
    if cm:model():campaign_name("main_warhammer") then
        if cm:is_new_game() then
            
            -- Move Teclis to the zvorak (Western Border Princes)
            cm:teleport_to("faction:wh2_main_hef_order_of_loremasters,forename:2147359256", 550, 295, true);
            
            -- Grant Teclis extra units
            local order_of_loremasters_faction_obj = cm:get_faction("wh2_main_hef_order_of_loremasters");
			local order_of_loremasters_faction_leader_cqi = order_of_loremasters_faction_obj:faction_leader():command_queue_index();
            
            -- Add 2 Swordmasters & 1 Arcane-phoenix
			cm:grant_unit_to_character(cm:char_lookup_str(order_of_loremasters_faction_leader_cqi), "wh2_main_hef_inf_swordmasters_of_hoeth_0")
            cm:grant_unit_to_character(cm:char_lookup_str(order_of_loremasters_faction_leader_cqi), "wh2_main_hef_inf_swordmasters_of_hoeth_0")
			cm:grant_unit_to_character(cm:char_lookup_str(order_of_loremasters_faction_leader_cqi), "wh2_dlc15_hef_mon_arcane_phoenix_0")
            
            -- Transfer region to Teclis faction
            cm:transfer_region_to_faction("wh_main_western_border_princes_zvorak", "wh2_main_hef_order_of_loremasters");
            
            -- Transfer region to Chrace faction
            cm:transfer_region_to_faction("wh_main_the_vaults_zarakzil", "wh2_main_hef_chrace");
             
            -- Upgrade Oldworld Teclis settlement to level 3
            local teclis_zvorak_region = cm:model():world():region_manager():region_by_key("wh_main_western_border_princes_zvorak")
			cm:instantly_set_settlement_primary_slot_level(teclis_zvorak_region:settlement(), 3)
            
            -- Upgrade Oldworld Chrace settlement to level 3
            local chrace_zvorak_region = cm:model():world():region_manager():region_by_key("wh_main_the_vaults_zarakzil")
			cm:instantly_set_settlement_primary_slot_level(chrace_zvorak_region:settlement(), 3)
            
            -- @param faction key
            --          faction key from "faction" table
            -- @param unit list
            --          unit list from "main_units" table
            -- @param region key
            --          region where the force is created, "from the campaign_map_regions table"
            -- @param coordinate x
            --          x
            -- @param coordinate y
            --          y
            -- @param character type
            --          "agents table", character key type
            -- @param character subket type
            --          "agent_subtypes" table
            -- @param forename
            --          "id" field of the "names" table.
            -- @param clanname
            --          Can be used to grant title
            -- @param surname
            --          Surname id
            -- @param othername
            --          Othername id
            -- @param make faction leader
            --          false to not set as faction leader
            
            -- Check HE id name table with number 137 only, others number won't work. (x, y) = (560, 300), no space between force creation
            -- Create Teclis home region sodier
            cm:create_force_with_general(
					"wh2_main_hef_order_of_loremasters", 
					"wh2_main_hef_inf_lothern_sea_guard_0,wh2_main_hef_inf_swordmasters_of_hoeth_0,wh2_main_hef_inf_lothern_sea_guard_0,wh2_main_hef_inf_swordmasters_of_hoeth_0",
					"wh_main_western_border_princes_zvorak",
					242,
					70,
					"general",
					"wh2_main_hef_prince",
					"names_name_1197705717",
					"",
					"",
					"",
					false,
                    function(cqi)
						cm:apply_effect_bundle_to_characters_force("wh2_main_sr_fervour", cqi, 25, true)
					end
				);
            
            cm:create_force_with_general(
					"wh2_main_hef_chrace",
					"wh2_main_hef_inf_white_lions_of_chrace_0,wh2_main_hef_art_eagle_claw_bolt_thrower,wh2_main_hef_inf_spearmen_0,wh2_main_hef_inf_lothern_sea_guard_0, wh2_main_hef_mon_phoenix_frostheart,wh2_dlc10_hef_inf_shadow_walkers_0,wh2_main_hef_inf_gate_guard,wh2_main_hef_cav_dragon_princes",
					"wh_main_the_vaults_zarakzil",
					510,
					265,
					"general",
					"wh2_main_hef_prince_alastar",
					"names_name_1226152662",
					"",
					"",
					"",
					false,
					function(cqi)
						cm:apply_effect_bundle_to_characters_force("wh2_main_sr_fervour", cqi, 25, true)
					end
				);
             
            
        end
    end
end

