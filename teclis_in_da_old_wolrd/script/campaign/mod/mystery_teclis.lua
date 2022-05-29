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
			cm:grant_unit_to_character(cm:char_lookup_str(order_of_loremasters_faction_leader_cqi), "wh2_main_hef_inf_swordmasters_of_hoeth_0")
            cm:grant_unit_to_character(cm:char_lookup_str(order_of_loremasters_faction_leader_cqi), "wh2_main_hef_inf_swordmasters_of_hoeth_0")
			cm:grant_unit_to_character(cm:char_lookup_str(order_of_loremasters_faction_leader_cqi), "wh2_dlc15_hef_mon_arcane_phoenix_0")
            
            -- Transfer region to Teclis faction
            cm:transfer_region_to_faction("wh_main_western_border_princes_zvorak", "wh2_main_hef_order_of_loremasters");
            
            
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
            -- wh2_main_hef_order_of_loremasters
             cm:create_force_with_general(
					"wh2_main_hef_order_of_loremasters", --Create Teclis home region sodier
					"wh2_main_hef_inf_lothern_sea_guard_0,wh2_main_hef_inf_lothern_sea_guard_0, wh2_main_hef_inf_swordmasters_of_hoeth_0, wh2_main_hef_inf_swordmasters_of_hoeth_0",
					"wh_main_western_border_princes_zvorak",
					150,
					300,
					"general",
					"wh2_main_hef_prince",
					"names_name_999982295",
					"",
					"Teclis Follower",
					"",
					false,
				)
            
             cm:create_force_with_general(
					"wh2_main_hef_chrace",
					"wh2_main_hef_inf_lothern_sea_guard_0,wh2_main_hef_inf_lothern_sea_guard_0, wh2_main_hef_inf_white_lions_of_chrace_0, wh2_main_hef_inf_white_lions_of_chrace_0, wh2_main_hef_mon_phoenix_frostheart",
					"wh_main_western_border_princes_zvorak",
					550,
					300,
					"general",
					"wh2_main_hef_prince_alastar",
					"names_name_999982296",
					"",
					"names_name_1225535785",
					"",
					false,
					function(cqi)
						cm:apply_effect_bundle_to_characters_force("wh2_main_sr_fervour", cqi, 25, true)
					end
				)
            
        end
    end
end

