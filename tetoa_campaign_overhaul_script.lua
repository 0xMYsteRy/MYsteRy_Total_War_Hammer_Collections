
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--
--	T E T O A   C A M P A I G N   O V E R H A U L   S C R I P T
--
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------


------------------------------------------------------------------------------------
-- Disable event messages and shroud for testing
------------------------------------------------------------------------------------
	--cm:disable_event_feed_events(true,"wh_event_category_conquest","","");
	--cm:disable_event_feed_events(true,"wh_event_category_diplomacy","","");
	--cm:disable_event_feed_events(true,"wh_event_category_faction","","");
	--cm:disable_event_feed_events(true,"wh_event_category_provinces","","");
	--cm:disable_event_feed_events(true,"wh_event_category_agent","","");
	--cm:disable_event_feed_events(true,"wh_event_category_military","","");
	--cm:disable_event_feed_events(true,"wh_event_category_traits_ancillaries","","");
	--cm:disable_event_feed_events(true,"wh_event_category_world","","");
	--cm:disable_event_feed_events(true,"wh_event_category_character","","");

	cm:show_shroud(true); --change later

------------------------------------------------------------------------------------
-- High Elves (Ulthuan, Bretonnia, Mousillon, TEB, Marienburg, Colonies in Araby Islands)
------------------------------------------------------------------------------------


	-- delete Bretonnian agents
	cm:kill_character("faction:wh_main_brt_bordeleaux,forename:2147345355", false, true);	--Tristran
	cm:kill_character("faction:wh_main_brt_bretonnia,forename:2147352443", false, true); 	--Florence
	cm:kill_character("faction:wh_main_brt_carcassonne,forename:2147352458", false, true); 	--Marie

	-- delete WEF agents
	cm:kill_character("faction:wh_dlc05_wef_argwylon,forename:2147359161", false, true); 	--Catra
	cm:kill_character("faction:wh_dlc05_wef_wood_elves,forename:2147359044", false, true);	--Dodan

	-- Move Loremasters to Tilea
	cm:kill_character("faction:wh2_main_hef_order_of_loremasters,forename:1044995477", false, true); 	--Venola
	cm:kill_character("faction:wh_main_teb_tilea,forename:Leonardo", true, true);
	cm:teleport_to("faction:wh2_main_hef_order_of_loremasters,forename:2147359256", 473, 256, true); 	--Teclis
	cm:transfer_region_to_faction("wh_main_tilea_luccini", "wh2_main_hef_order_of_loremasters");		--Miragliano and Luccini
	cm:transfer_region_to_faction("wh_main_tilea_miragliano", "wh2_main_hef_order_of_loremasters");
	cm:set_region_abandoned("wh2_main_volcanic_islands_the_star_tower");
	cm:instantly_upgrade_building("wh_main_tilea_miragliano:0", "wh2_main_special_settlement_miragliano_hef_2");
	cm:instantly_upgrade_building("wh_main_tilea_miragliano:1", "wh2_main_hef_port_1");
	cm:instantly_upgrade_building("wh_main_tilea_luccini:0", "wh2_main_hef_settlement_minor_1_coast");
	cm:instantly_upgrade_building("wh_main_tilea_luccini:1", "wh2_main_hef_port_1");
	cm:instantly_dismantle_building("wh_main_tilea_miragliano:2");

--delete Swordmasters of Hoeth
cm:remove_unit_from_character("faction:wh2_main_hef_order_of_loremasters,forename:2147359256", "wh2_main_hef_inf_swordmasters_of_hoeth_0"); --Teclis

	--- Bretonnia to High Elves
	cm:instantly_upgrade_building("wh_main_bastonne_et_montfort_castle_bastonne:0", "wh2_main_hef_settlement_major_2");
	cm:instantly_dismantle_building("wh_main_bastonne_et_montfort_castle_bastonne:1");
	cm:instantly_upgrade_building("wh_main_bastonne_et_montfort_montfort:0", "wh2_main_hef_settlement_minor_1");
	cm:instantly_upgrade_building("wh_main_bastonne_et_montfort_montfort:1", "wh2_main_hef_resource_iron_1");
	cm:instantly_upgrade_building("wh_main_bordeleaux_et_aquitaine_aquitaine:0", "wh2_main_hef_settlement_minor_1");
	cm:instantly_upgrade_building("wh_main_bordeleaux_et_aquitaine_aquitaine:1", "wh2_main_hef_farm_1");
	cm:instantly_upgrade_building("wh_main_bordeleaux_et_aquitaine_bordeleaux:0", "wh2_main_hef_settlement_major_2_coast");
	cm:instantly_dismantle_building("wh_main_bordeleaux_et_aquitaine_bordeleaux:1");
	cm:instantly_dismantle_building("wh_main_bordeleaux_et_aquitaine_bordeleaux:2");
	cm:instantly_upgrade_building("wh_main_carcassone_et_brionne_brionne:0", "wh2_main_hef_settlement_minor_2_coast");
	cm:instantly_upgrade_building("wh_main_carcassone_et_brionne_brionne:1", "wh2_main_hef_port_1");
	cm:instantly_upgrade_building("wh_main_carcassone_et_brionne_brionne:2", "wh2_main_hef_farm_1");
	cm:instantly_upgrade_building("wh_main_carcassone_et_brionne_castle_carcassonne:0", "wh2_main_hef_settlement_major_2");
	cm:instantly_dismantle_building("wh_main_carcassone_et_brionne_castle_carcassonne:1");
	cm:instantly_upgrade_building("wh_main_couronne_et_languille_couronne:0", "wh2_main_special_settlement_couronne_hef_2");
	cm:instantly_dismantle_building("wh_main_couronne_et_languille_couronne:1");
	cm:instantly_upgrade_building("wh_main_couronne_et_languille_languille:0", "wh2_main_hef_settlement_minor_2_coast");
	cm:instantly_upgrade_building("wh_main_couronne_et_languille_languille:1", "wh2_main_hef_port_1");
	cm:instantly_upgrade_building("wh_main_couronne_et_languille_languille:2", "wh2_main_hef_farm_1");
	cm:instantly_upgrade_building("wh_main_parravon_et_quenelles_parravon:0", "wh2_main_hef_settlement_major_2");
	cm:instantly_dismantle_building("wh_main_parravon_et_quenelles_parravon:1");
	cm:instantly_upgrade_building("wh_main_parravon_et_quenelles_quenelles:0", "wh2_main_hef_settlement_minor_1");
	cm:instantly_upgrade_building("wh_main_parravon_et_quenelles_quenelles:1", "wh2_main_hef_resource_pasture_1");
	cm:instantly_upgrade_building("wh_main_lyonesse_lyonesse:0", "wh2_main_hef_settlement_major_1_coast");
	cm:instantly_upgrade_building("wh_main_lyonesse_lyonesse:1", "wh2_main_hef_port_1");
	cm:instantly_upgrade_building("wh_main_forest_of_arden_castle_artois:0", "wh2_main_hef_settlement_major_1");


	--delete Mousillon and move to Lyonesse
	cm:kill_character("faction:wh_main_vmp_mousillon,forename:2147359236", true, true); 		--Red Duke
	cm:transfer_region_to_faction("wh_main_lyonesse_mousillon", "wh_main_brt_lyonesse");		--Mousillon
	cm:instantly_upgrade_building("wh_main_lyonesse_mousillon:0", "wh2_main_hef_settlement_minor_2_coast");
	cm:instantly_upgrade_building("wh_main_lyonesse_mousillon:1", "wh2_main_hef_port_1");
	cm:instantly_dismantle_building("wh_main_lyonesse_mousillon:2");
	cm:instantly_dismantle_building("wh_main_lyonesse_mousillon:3");

	--Split Artois and give part to Empire Secessionists(Bretonni)
-- deactivated at the moment, seems not work!
	--cm:transfer_region_to_faction("wh_main_forest_of_arden_gisoreux", "wh_main_emp_empire_separatists");		--Gisoreaux
	--cm:instantly_upgrade_building("wh_main_forest_of_arden_gisoreux:0", "wh_main_nor_settlement_minor_1");
cm:instantly_upgrade_building("wh_main_forest_of_arden_gisoreux:0", "wh2_main_hef_settlement_minor_1");

	--- occupy Islands of Araby
	cm:kill_character("faction:wh2_main_brt_knights_of_origo,forename:2147360539", true, true); --Sir John Tyreweld
	cm:kill_character("faction:wh2_main_brt_knights_of_the_flame,forename:2147352607", true, true); --Mogen of the Flame
	cm:transfer_region_to_faction("wh2_main_coast_of_araby_fyrus", "wh2_main_hef_order_of_loremasters"); --Fyrus
	cm:instantly_upgrade_building("wh2_main_coast_of_araby_fyrus:0", "wh2_main_hef_settlement_minor_1");
	cm:instantly_upgrade_building("wh2_main_coast_of_araby_fyrus:1", "wh2_main_hef_farm_1");
	cm:instantly_upgrade_building("wh2_main_land_of_assassins_sorcerers_islands:0", "wh2_main_hef_settlement_minor_1_coast"); 	--Sorcerers Islands
	cm:instantly_upgrade_building("wh2_main_land_of_assassins_sorcerers_islands:1", "wh2_main_hef_port_1");
	cm:set_region_abandoned("wh2_main_land_of_assassins_lashiek");
	cm:set_region_abandoned("wh2_main_land_of_assassins_palace_of_the_wizard_caliph");

	--- Marienburg to High Elves
	cm:instantly_upgrade_building("wh_main_the_wasteland_marienburg:0", "wh2_main_hef_settlement_major_2_coast");
	cm:instantly_upgrade_building("wh_main_the_wasteland_marienburg:1", "wh_main_special_marienburg_port_2");
	cm:instantly_upgrade_building("wh_main_the_wasteland_marienburg:2", "wh2_main_hef_resource_dyes_1");
	cm:instantly_dismantle_building("wh_main_the_wasteland_marienburg:3");
	cm:instantly_upgrade_building("wh_main_the_wasteland_gorssel:0", "wh2_main_hef_settlement_minor_2");
	cm:instantly_upgrade_building("wh_main_the_wasteland_gorssel:1", "wh2_main_hef_resource_salt_1");
	cm:instantly_dismantle_building("wh_main_the_wasteland_gorssel:2");

	--- Athel Loren to High Elves and Forest Spirits
	cm:teleport_to("faction:wh_dlc05_wef_wood_elves,forename:2147352809", 483, 372, true); 	-- change Durthu and Orion
	cm:teleport_to("faction:wh_dlc05_wef_argwylon,forename:2147352813", 475, 329, true);
	cm:transfer_region_to_faction("wh_main_yn_edri_eternos_the_oak_of_ages", "wh_dlc05_wef_argwylon");		--Oak of Ages to Durthu
	cm:transfer_region_to_faction("wh_main_athel_loren_waterfall_palace", "wh_dlc05_wef_wood_elves");		--Waterfall Palace to WoodElves
	cm:transfer_region_to_faction("wh_main_athel_loren_yn_edryl_korian", "wh_dlc05_wef_argwylon");			--Kings Glade to Durthu
	cm:instantly_upgrade_building("wh_main_athel_loren_waterfall_palace:0", "wh2_main_hef_settlement_major_1");	--Waterfall palace to High Elves
	cm:instantly_dismantle_building("wh_main_athel_loren_waterfall_palace:1");

	--- Estalia to High Elves
	cm:instantly_upgrade_building("wh_main_estalia_bilbali:0", "wh2_main_hef_settlement_minor_2_coast"); 	--Bilbali
	cm:instantly_upgrade_building("wh_main_estalia_bilbali:1", "wh2_main_hef_port_1");
	cm:instantly_upgrade_building("wh_main_estalia_bilbali:2", "wh2_main_hef_resource_wine_1");
	cm:instantly_upgrade_building("wh_main_estalia_magritta:0", "wh2_main_hef_settlement_major_2_coast"); 	--Magritta
	cm:instantly_upgrade_building("wh_main_estalia_magritta:1", "wh2_main_hef_port_1");
	cm:instantly_dismantle_building("wh_main_estalia_magritta:2");
	cm:instantly_upgrade_building("wh_main_estalia_tobaro:0", "wh2_main_hef_settlement_minor_1_coast"); 	--Tobaro
	cm:instantly_upgrade_building("wh_main_estalia_tobaro:1", "wh2_main_hef_port_1");

	--- Border Princes to High Elves
	cm:instantly_upgrade_building("wh_main_eastern_border_princes_akendorf:0", "wh2_main_hef_settlement_major_2"); 		--Akendorf
	cm:instantly_upgrade_building("wh_main_eastern_border_princes_akendorf:1", "wh2_main_hef_barracks_1");
	cm:instantly_upgrade_building("wh_main_eastern_border_princes_akendorf:2", "wh2_main_hef_stables_1");
	cm:instantly_upgrade_building("wh_main_eastern_border_princes_matorca:0", "wh2_main_hef_settlement_minor_2_coast"); 	--Matorca
	cm:instantly_upgrade_building("wh_main_eastern_border_princes_matorca:1", "wh2_main_hef_port_1");
	cm:instantly_upgrade_building("wh_main_eastern_border_princes_matorca:2", "wh2_main_hef_farm_1");
	cm:instantly_upgrade_building("wh_main_western_border_princes_myrmidens:0", "wh2_main_hef_settlement_major_2_coast"); 	--Myrmidens
	cm:instantly_upgrade_building("wh_main_western_border_princes_myrmidens:1", "wh2_main_hef_port_1");
	cm:instantly_upgrade_building("wh_main_western_border_princes_myrmidens:2", "wh2_main_hef_barracks_1");
	cm:instantly_dismantle_building("wh_main_western_border_princes_myrmidens:3");
	cm:instantly_upgrade_building("wh_main_western_border_princes_zvorak:0", "wh2_main_hef_settlement_minor_1"); 		--Zvorak
	cm:instantly_upgrade_building("wh_main_western_border_princes_zvorak:1", "wh2_main_hef_resource_marble_1");

	-- internal Diplomacy for High Elves
	cm:force_make_peace("wh2_main_hef_eataine", "wh2_main_hef_yvresse");
	cm:force_make_peace("wh2_main_hef_eataine", "wh2_main_hef_cothique");
	cm:force_make_peace("wh_main_brt_carcassonne", "wh2_main_hef_yvresse");
	cm:force_make_peace("wh_main_brt_lyonesse", "wh2_main_hef_cothique");
	cm:force_make_peace("wh_dlc05_wef_wood_elves", "wh_main_brt_parravon");
	cm:force_make_peace("wh_main_brt_bretonnia", "wh_main_emp_marienburg");
	cm:force_make_peace("wh_main_brt_bordeleaux", "wh_main_brt_bastonne");
	cm:force_make_vassal("wh2_main_hef_eataine", "wh_main_teb_estalia");
	cm:force_make_vassal("wh2_main_hef_order_of_loremasters", "wh_main_teb_border_princes");
	cm:force_make_vassal("wh2_main_hef_cothique", "wh_main_brt_lyonesse");
	cm:force_make_vassal("wh2_main_hef_yvresse", "wh_main_vmp_mousillon");

	--deleteBretonnianunits
	cm:remove_unit_from_character("faction:wh_main_brt_artois,forename:2147345899", "wh_main_brt_inf_men_at_arms");			--Artois
	cm:remove_unit_from_character("faction:wh_main_brt_artois,forename:2147345899", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_artois,forename:2147345899", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_artois,forename:2147345899", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_artois,forename:2147345899", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_bastonne,forename:2147345384", "wh_main_brt_inf_men_at_arms");		--Bastonne
	cm:remove_unit_from_character("faction:wh_main_brt_bastonne,forename:2147345384", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_bastonne,forename:2147345384", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_bastonne,forename:2147345384", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_bastonne,forename:2147345384", "wh_main_brt_art_field_trebuchet");
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_dlc07_brt_peasant_mob_0");		--Bordeleaux
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_dlc07_brt_peasant_mob_0");
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_main_brt_cav_knights_of_the_realm");
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_dlc07_brt_inf_spearmen_at_arms_1");
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_dlc07_brt_inf_spearmen_at_arms_1");
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_main_brt_cav_knights_of_the_realm");
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_main_brt_cav_knights_of_the_realm");
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_dlc07_brt_inf_spearmen_at_arms_1"); 	--Bretonnia
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_dlc07_brt_inf_spearmen_at_arms_1");
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_dlc07_brt_inf_spearmen_at_arms_1");
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_main_brt_cav_pegasus_knights");
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_main_brt_cav_knights_of_the_realm");
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_main_brt_art_field_trebuchet");
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_dlc07_brt_peasant_mob_0"); 		--Carcassonne
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_dlc07_brt_peasant_mob_0");
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_dlc07_brt_peasant_mob_0");
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_dlc07_brt_inf_spearmen_at_arms_1");
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_dlc07_brt_inf_spearmen_at_arms_1");
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_dlc07_brt_inf_men_at_arms_1");
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_dlc07_brt_inf_men_at_arms_1");
	cm:remove_unit_from_character("faction:wh_main_brt_lyonesse,forename:2147345890", "wh_main_brt_inf_men_at_arms"); 		--Lyonesse
	cm:remove_unit_from_character("faction:wh_main_brt_lyonesse,forename:2147345890", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_lyonesse,forename:2147345890", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_lyonesse,forename:2147345890", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_lyonesse,forename:2147345890", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_parravon,forename:2147345878", "wh_main_brt_inf_men_at_arms"); 		--Parravon
	cm:remove_unit_from_character("faction:wh_main_brt_parravon,forename:2147345878", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_parravon,forename:2147345878", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_parravon,forename:2147345878", "wh_main_brt_inf_men_at_arms");
	cm:remove_unit_from_character("faction:wh_main_brt_parravon,forename:2147345878", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_parravon,forename:2147345878", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_brt_parravon,forename:2147345878", "wh_main_brt_inf_peasant_bowmen");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_cav_black_knights_0"); 		--Mousillon
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_cav_black_knights_0");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_cav_black_knights_0");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_inf_zombie");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_inf_zombie");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_inf_zombie");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_inf_skeleton_warriors_1");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_inf_skeleton_warriors_1");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_inf_skeleton_warriors_1");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_inf_grave_guard_0");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_inf_grave_guard_0");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_inf_zombie");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_mon_varghulf");
	cm:remove_unit_from_character("faction:wh_main_vmp_mousillon,forename:2147359236", "wh_main_vmp_inf_skeleton_warriors_1");
	cm:remove_unit_from_character("faction:wh_main_emp_marienburg,forename:2147344088", "wh_main_emp_inf_swordsmen"); 		--Marienburg
	cm:remove_unit_from_character("faction:wh_main_emp_marienburg,forename:2147344088", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_marienburg,forename:2147344088", "wh_main_emp_art_mortar");
	cm:remove_unit_from_character("faction:wh_main_emp_marienburg,forename:2147344088", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_marienburg,forename:2147344088", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_marienburg,forename:2147344088", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_marienburg,forename:2147344088", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_teb_border_princes,forename:2147344026", "wh_main_emp_inf_swordsmen"); 		--Border Princes
	cm:remove_unit_from_character("faction:wh_main_teb_border_princes,forename:2147344026", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_teb_border_princes,forename:2147344026", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_teb_border_princes,forename:2147344026", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_teb_border_princes,forename:2147344026", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_teb_border_princes,forename:2147344026", "wh_main_emp_cav_pistoliers_1");
	cm:remove_unit_from_character("faction:wh_main_teb_border_princes,forename:2147344026", "wh_main_emp_inf_spearmen_1");
	cm:remove_unit_from_character("faction:wh_main_teb_border_princes,forename:2147344026", "wh_main_emp_inf_spearmen_1");
	cm:remove_unit_from_character("faction:wh_main_teb_estalia,forename:2147344013", "wh_main_emp_inf_spearmen_1"); 		--Estalia
	cm:remove_unit_from_character("faction:wh_main_teb_estalia,forename:2147344013", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_teb_estalia,forename:2147344013", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_teb_estalia,forename:2147344013", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_teb_estalia,forename:2147344013", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_teb_estalia,forename:2147344013", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_teb_estalia,forename:2147344013", "wh_main_emp_cav_pistoliers_1");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wydrioth,forename:2147352850", "wh_dlc05_wef_inf_eternal_guard_0"); 	--Wydrioth
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wydrioth,forename:2147352850", "wh_dlc05_wef_inf_eternal_guard_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wydrioth,forename:2147352850", "wh_dlc05_wef_inf_wardancers_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wydrioth,forename:2147352850", "wh_dlc05_wef_inf_waywatchers_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wydrioth,forename:2147352850", "wh_dlc05_wef_inf_waywatchers_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wydrioth,forename:2147352850", "wh_dlc05_wef_inf_eternal_guard_1");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wydrioth,forename:2147352850", "wh_dlc05_wef_inf_glade_guard_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wydrioth,forename:2147352850", "wh_dlc05_wef_inf_deepwood_scouts_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wood_elves,forename:2147352809", "wh_dlc05_wef_inf_waywatchers_0"); 	--WoodElves
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wood_elves,forename:2147352809", "wh_dlc05_wef_cav_hawk_riders_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wood_elves,forename:2147352809", "wh_dlc05_wef_inf_eternal_guard_1");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_torgovann,forename:2147352870", "wh_dlc05_wef_inf_eternal_guard_0");	--Torgovann
	cm:remove_unit_from_character("faction:wh_dlc05_wef_torgovann,forename:2147352870", "wh_dlc05_wef_inf_eternal_guard_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_torgovann,forename:2147352870", "wh_dlc05_wef_inf_wardancers_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_torgovann,forename:2147352870", "wh_dlc05_wef_inf_waywatchers_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_torgovann,forename:2147352870", "wh_dlc05_wef_inf_waywatchers_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_torgovann,forename:2147352870", "wh_dlc05_wef_inf_glade_guard_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_torgovann,forename:2147352870", "wh_dlc05_wef_inf_eternal_guard_1");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_torgovann,forename:2147352870", "wh_dlc05_wef_inf_deepwood_scouts_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_argwylon,forename:2147352813", "wh_dlc05_wef_inf_waywatchers_0"); 		--Argwylon

	--add new units to playable characters
	cm:grant_unit_to_character("faction:wh_dlc05_wef_argwylon,forename:2147352813", "wh_dlc05_wef_mon_treekin_0"); 		--Argwylon
	cm:grant_unit_to_character("faction:wh_dlc05_wef_argwylon,forename:2147352813", "wh_dlc05_wef_mon_treekin_0");
	cm:grant_unit_to_character("faction:wh_dlc05_wef_argwylon,forename:2147352813", "wh_dlc05_wef_mon_treekin_0");

	--delete additional starting units from playable characters
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_main_brt_art_field_trebuchet"); 			--Bretonnia
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_main_brt_cav_knights_of_the_realm");
	cm:remove_unit_from_character("faction:wh_main_brt_bretonnia,forename:2147343915", "wh_main_brt_cav_pegasus_knights");
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_dlc07_brt_cav_grail_guardians_0"); 		--Carcassonne
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_dlc07_brt_inf_battle_pilgrims_0");
	cm:remove_unit_from_character("faction:wh_main_brt_carcassonne,forename:2147358931", "wh_dlc07_brt_art_blessed_field_trebuchet_0");
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_dlc07_brt_inf_foot_squires_0");			--Bordeleaux
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_main_brt_cav_knights_of_the_realm");
	cm:remove_unit_from_character("faction:wh_main_brt_bordeleaux,forename:2147345888", "wh_dlc07_brt_cav_knights_errant_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wood_elves,forename:2147352809", "wh_dlc05_wef_inf_eternal_guard_0"); 		--WoodElves
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wood_elves,forename:2147352809", "wh_dlc05_wef_inf_deepwood_scouts_0");
	cm:remove_unit_from_character("faction:wh_dlc05_wef_wood_elves,forename:2147352809", "wh_dlc05_wef_cav_wild_riders_0");


------------------------------------------------------------------------------------
-- Dark Elves (Naggarond, Ulthuan?)
------------------------------------------------------------------------------------

	-- nothing

------------------------------------------------------------------------------------
-- Norscii (Empire, Norsca, part of Slyvania)
------------------------------------------------------------------------------------
	
	--VC Seperatists to Human Tribe and Schwartzhafen to Greenskins
	cm:kill_character("faction:wh_main_vmp_rival_sylvanian_vamps,forename:2147357322", true, true); 			--Zelig
	cm:kill_character("faction:wh_main_vmp_rival_sylvanian_vamps,forename:2147345217", true, true); 			--Dieter
	cm:transfer_region_to_faction("wh_main_western_sylvania_castle_templehof", "wh_main_vmp_schwartzhafen");
	cm:transfer_region_to_faction("wh_main_western_sylvania_fort_oberstyre", "wh_main_vmp_schwartzhafen");
	cm:instantly_upgrade_building("wh_main_western_sylvania_castle_templehof:0", "wh_main_nor_settlement_major_2"); 	--Templehof
	cm:instantly_upgrade_building("wh_main_western_sylvania_castle_templehof:1", "wh_main_nor_stables_1");
	cm:instantly_upgrade_building("wh_main_western_sylvania_fort_oberstyre:0", "wh_main_nor_settlement_minor_1");		--Fort Oberstyre
	cm:instantly_upgrade_building("wh_main_western_sylvania_fort_oberstyre:1", "wh_main_nor_smith_1");
	cm:kill_character("faction:wh_main_vmp_schwartzhafen,forename:2147345198", false, true); 				--Emmanuelle
	cm:kill_character("faction:wh_main_vmp_schwartzhafen,forename:2147352389", false, true); 				--Melissa
	cm:teleport_to("faction:wh_main_vmp_schwartzhafen,forename:2147345130", 650, 444, true); 				-- Vlad
	cm:teleport_to("faction:wh_main_vmp_schwartzhafen,forename:2147345124", 650, 444, true); 				-- Isabella

	--Delete Empire units
	cm:remove_unit_from_character("faction:wh_main_emp_averland,forename:2147343941", "wh_main_emp_inf_spearmen_0");		--Marius
	cm:remove_unit_from_character("faction:wh_main_emp_averland,forename:2147343941", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_averland,forename:2147343941", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_averland,forename:2147343941", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_averland,forename:2147343941", "wh_main_emp_cav_pistoliers_1");
	cm:remove_unit_from_character("faction:wh_main_emp_averland,forename:2147343941", "wh_main_emp_art_mortar");
	cm:remove_unit_from_character("faction:wh_main_emp_empire", "wh_main_emp_inf_spearmen_0");					--Empire
	cm:remove_unit_from_character("faction:wh_main_emp_empire", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_empire", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_spearmen_0");		--Helmut
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_empire_separatists,forename:2147344121", "wh_main_emp_inf_spearmen_0");	--Hans
	cm:remove_unit_from_character("faction:wh_main_emp_empire_separatists,forename:2147344121", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_empire_separatists,forename:2147344121", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_empire_separatists,forename:2147344121", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_empire_separatists,forename:2147344121", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_hochland,forename:2147344017", "wh_main_emp_inf_spearmen_0");		--Aldebrand
	cm:remove_unit_from_character("faction:wh_main_emp_hochland,forename:2147344017", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_hochland,forename:2147344017", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_hochland,forename:2147344017", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_hochland,forename:2147344017", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_hochland,forename:2147344017", "wh_main_emp_art_mortar");
	cm:remove_unit_from_character("faction:wh_main_emp_middenland,forename:2147343937", "wh_main_emp_inf_spearmen_0");		--Boris
	cm:remove_unit_from_character("faction:wh_main_emp_middenland,forename:2147343937", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_middenland,forename:2147343937", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_middenland,forename:2147343937", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_middenland,forename:2147343937", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_middenland,forename:2147343937", "wh_main_emp_cav_pistoliers_1");
	cm:remove_unit_from_character("faction:wh_main_emp_nordland,forename:2147344022", "wh_main_emp_inf_spearmen_0");		--Theoderic
	cm:remove_unit_from_character("faction:wh_main_emp_nordland,forename:2147344022", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_nordland,forename:2147344022", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_nordland,forename:2147344022", "wh_main_emp_inf_halberdiers");
	cm:remove_unit_from_character("faction:wh_main_emp_nordland,forename:2147344022", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_nordland,forename:2147344022", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_ostermark,forename:2147344036", "wh_main_emp_inf_spearmen_0");		--Wolfram
	cm:remove_unit_from_character("faction:wh_main_emp_ostermark,forename:2147344036", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_ostermark,forename:2147344036", "wh_main_emp_inf_spearmen_1");
	cm:remove_unit_from_character("faction:wh_main_emp_ostermark,forename:2147344036", "wh_main_emp_inf_spearmen_1");
	cm:remove_unit_from_character("faction:wh_main_emp_ostermark,forename:2147344036", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_ostermark,forename:2147344036", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_ostermark,forename:2147344036", "wh_main_emp_art_mortar");
	cm:remove_unit_from_character("faction:wh_main_emp_ostland,forename:2147344026", "wh_main_emp_inf_swordsmen");			--Valmir
	cm:remove_unit_from_character("faction:wh_main_emp_ostland,forename:2147344026", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_ostland,forename:2147344026", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_ostland,forename:2147344026", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_ostland,forename:2147344026", "wh_main_emp_cav_pistoliers_1");
	cm:remove_unit_from_character("faction:wh_main_emp_ostland,forename:2147344026", "wh_main_emp_cav_pistoliers_1");
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_swordsmen");		--Helmut
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_spearmen_1");
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_talabecland,forename:2147344050", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_wissenland,forename:2147344005", "wh_main_emp_inf_spearmen_0");		--Eben
	cm:remove_unit_from_character("faction:wh_main_emp_wissenland,forename:2147344005", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_wissenland,forename:2147344005", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_emp_wissenland,forename:2147344005", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_emp_wissenland,forename:2147344005", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_wissenland,forename:2147344005", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_emp_wissenland,forename:2147344005", "wh_main_emp_art_mortar");

	--Delete Kislev units
	cm:remove_unit_from_character("faction:wh_main_ksl_kislev,forename:2147356081", "wh_main_emp_inf_spearmen_0");			--Dmitry
	cm:remove_unit_from_character("faction:wh_main_ksl_kislev,forename:2147356081", "wh_main_emp_inf_spearmen_0");
	cm:remove_unit_from_character("faction:wh_main_ksl_kislev,forename:2147356081", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_ksl_kislev,forename:2147356081", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_ksl_kislev,forename:2147356081", "wh_main_emp_inf_swordsmen");
	cm:remove_unit_from_character("faction:wh_main_ksl_kislev,forename:2147356081", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_ksl_kislev,forename:2147356081", "wh_main_emp_inf_crossbowmen");
	cm:remove_unit_from_character("faction:wh_main_ksl_kislev,forename:2147356081", "wh_main_emp_cav_pistoliers_1");

	--Delete Schwartzhafens units
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345130", "wh_main_vmp_mon_vargheists");			--Vlad
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345130", "wh_main_vmp_mon_vargheists");
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345130", "wh_main_vmp_mon_fell_bats");
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345130", "wh_main_vmp_mon_fell_bats");
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345130", "wh_main_vmp_mon_fell_bats");
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345130", "wh_main_vmp_mon_fell_bats");

	-- delete Stirland and divide it
	cm:kill_character("faction:wh_main_emp_stirland,forename:2147344039", true, true); 			--Alberich of Stirland
	cm:transfer_region_to_faction("wh_main_stirland_wurtbad", "wh_main_emp_talabecland");
	cm:transfer_region_to_faction("wh_main_stirland_the_moot", "wh_main_emp_averland");

	--Empire buildings to Norsca buildings
	cm:instantly_upgrade_building("wh_main_southern_oblast_kislev:0", "wh2_main_special_settlement_kislev_hef_2"); 	--Kislev
	cm:instantly_dismantle_building("wh_main_southern_oblast_kislev:1");
	cm:instantly_dismantle_building("wh_main_southern_oblast_kislev:2");
	cm:instantly_upgrade_building("wh_main_eastern_oblast_praag:0", "wh_main_nor_settlement_major_1"); 		--Praag
	cm:instantly_dismantle_building("wh_main_eastern_oblast_praag:1");
	cm:instantly_upgrade_building("wh_main_hochland_hergig:0", "wh_main_nor_settlement_major_1"); 			--Hergig
	cm:instantly_dismantle_building("wh_main_hochland_hergig:1");
	cm:instantly_upgrade_building("wh_main_middenland_middenheim:0", "wh_main_nor_settlement_major_1"); 		--Middenheim
	cm:instantly_dismantle_building("wh_main_middenland_middenheim:1");
	cm:instantly_upgrade_building("wh_main_nordland_salzenmund:0", "wh_main_nor_settlement_major_1"); 		--Salzenmund
	cm:instantly_dismantle_building("wh_main_nordland_salzenmund:1");
	cm:instantly_upgrade_building("wh_main_northern_oblast_fort_ostrosk:0", "wh_main_nor_settlement_major_1"); 	--Fort Ostrosk
	cm:instantly_dismantle_building("wh_main_northern_oblast_fort_ostrosk:1");
	cm:instantly_upgrade_building("wh_main_ostermark_bechafen:0", "wh_main_nor_settlement_major_1"); 		--Bachafen
	cm:instantly_dismantle_building("wh_main_ostermark_bechafen:1");
	cm:instantly_upgrade_building("wh_main_ostland_wolfenburg:0", "wh_main_nor_settlement_major_1"); 		--Wolfenburg
	cm:instantly_dismantle_building("wh_main_ostland_wolfenburg:1");
	cm:instantly_upgrade_building("wh_main_wissenland_nuln:0", "wh_main_nor_settlement_major_1"); 			--Nuln
	cm:instantly_dismantle_building("wh_main_wissenland_nuln:1");
	cm:instantly_upgrade_building("wh_main_troll_country_erengrad:0", "wh_main_nor_settlement_major_1_coast"); 	--Erengrad
	cm:instantly_upgrade_building("wh_main_troll_country_erengrad:1", "wh_main_special_erengrad_port_1");
	cm:instantly_upgrade_building("wh_main_averland_averheim:0", "wh_main_nor_settlement_major_2"); 		--Averheim
	cm:instantly_dismantle_building("wh_main_averland_averheim:1");
	cm:instantly_upgrade_building("wh_main_stirland_wurtbad:0", "wh_main_nor_settlement_major_2"); 			--Wurtbad
	cm:instantly_dismantle_building("wh_main_stirland_wurtbad:1");
	cm:instantly_dismantle_building("wh_main_stirland_wurtbad:2");
	cm:instantly_upgrade_building("wh_main_talabecland_talabheim:0", "wh_main_nor_settlement_major_2"); 		--Talabheim
	cm:instantly_dismantle_building("wh_main_talabecland_talabheim:1");
	cm:instantly_dismantle_building("wh_main_talabecland_talabheim:2");
	cm:instantly_upgrade_building("wh_main_reikland_altdorf:0", "wh2_main_special_settlement_altdorf_hef_2"); 	--Altdorf
	cm:instantly_upgrade_building("wh_main_reikland_altdorf:1", "wh_main_nor_port");
	cm:instantly_dismantle_building("wh_main_reikland_altdorf:2");
	cm:instantly_upgrade_building("wh_main_eastern_oblast_volksgrad:0", "wh_main_nor_settlement_minor_1"); 		--Volksgrad
	cm:instantly_dismantle_building("wh_main_eastern_oblast_volksgrad:1");
	cm:instantly_upgrade_building("wh_main_hochland_brass_keep:0", "wh_main_nor_settlement_minor_1"); 		--Brass Keep
	cm:instantly_dismantle_building("wh_main_hochland_brass_keep:1");
	cm:instantly_upgrade_building("wh_main_middenland_carroburg:0", "wh_main_nor_settlement_minor_1"); 		--Carroburg
	cm:instantly_dismantle_building("wh_main_middenland_carroburg:1");
	cm:instantly_upgrade_building("wh_main_middenland_weismund:0", "wh_main_nor_settlement_minor_1"); 		--Weismund
	cm:instantly_dismantle_building("wh_main_middenland_weismund:1");
	cm:instantly_upgrade_building("wh_main_northern_oblast_fort_straghov:0", "wh_main_nor_settlement_minor_1"); 	--Fort Straghov
	cm:instantly_dismantle_building("wh_main_northern_oblast_fort_straghov:1");
	cm:instantly_upgrade_building("wh_main_ostermark_essen:0", "wh_main_nor_settlement_minor_1"); 			--Essen
	cm:instantly_dismantle_building("wh_main_ostermark_essen:1");
	cm:instantly_upgrade_building("wh_main_ostland_castle_von_rauken:0", "wh_main_nor_settlement_minor_1"); 	--Castle von Rauken
	cm:instantly_dismantle_building("wh_main_ostland_castle_von_rauken:1");
	cm:instantly_upgrade_building("wh_main_reikland_eilhart:0", "wh_main_nor_settlement_minor_1"); 			--Eilhart
	cm:instantly_dismantle_building("wh_main_reikland_eilhart:1");
	cm:instantly_upgrade_building("wh_main_reikland_grunburg:0", "wh_main_nor_settlement_minor_1"); 		--Grunburg
	cm:instantly_dismantle_building("wh_main_reikland_grunburg:1");
	cm:instantly_upgrade_building("wh_main_reikland_helmgart:0", "wh_main_nor_settlement_minor_1"); 		--Helmgart
	cm:instantly_dismantle_building("wh_main_reikland_helmgart:1");
	cm:instantly_upgrade_building("wh_main_southern_oblast_fort_jakova:0", "wh_main_nor_settlement_minor_1"); 	--Fort Jakova
	cm:instantly_dismantle_building("wh_main_southern_oblast_fort_jakova:1");
	cm:instantly_upgrade_building("wh_main_southern_oblast_zavastra:0", "wh_main_nor_settlement_minor_1"); 		--Oblast Zavastra
	cm:instantly_dismantle_building("wh_main_southern_oblast_zavastra:1");
	cm:instantly_upgrade_building("wh_main_stirland_the_moot:0", "wh_main_nor_settlement_minor_1"); 		--The Moot
	cm:instantly_dismantle_building("wh_main_stirland_the_moot:1");
	cm:instantly_upgrade_building("wh_main_talabecland_kemperbad:0", "wh_main_nor_settlement_minor_1"); 		--Kemperbad
	cm:instantly_dismantle_building("wh_main_talabecland_kemperbad:1");
	cm:instantly_upgrade_building("wh_main_troll_country_zoishenk:0", "wh_main_nor_settlement_minor_1"); 		--Zoishenk
	cm:instantly_dismantle_building("wh_main_troll_country_zoishenk:1");
	cm:instantly_upgrade_building("wh_main_wissenland_pfeildorf:0", "wh_main_nor_settlement_minor_1"); 		--Pfeildorf
	cm:instantly_dismantle_building("wh_main_wissenland_pfeildorf:1");
	cm:instantly_upgrade_building("wh_main_nordland_dietershafen:0", "wh_main_nor_settlement_minor_1_coast"); 	--Dietershafen
	cm:instantly_upgrade_building("wh_main_nordland_dietershafen:1", "wh_main_nor_port"); 
	cm:instantly_upgrade_building("wh_main_ostland_norden:0", "wh_main_nor_settlement_minor_1_coast"); 		--Norden
	cm:instantly_upgrade_building("wh_main_ostland_norden:1", "wh_main_nor_port"); 
	cm:instantly_upgrade_building("wh_main_wissenland_wissenburg:0", "wh_main_nor_settlement_minor_2"); 		--Wissenburg
	cm:instantly_dismantle_building("wh_main_wissenland_wissenburg:1");

	--delete additional starting units from playable characters
	cm:remove_unit_from_character("faction:wh_main_emp_empire,forename:2147343849", "wh_main_emp_inf_halberdiers");			--Karl
	cm:remove_unit_from_character("faction:wh_main_emp_empire,forename:2147343849", "wh_main_emp_inf_handgunners");
	cm:remove_unit_from_character("faction:wh_main_emp_empire,forename:2147343849", "wh_main_emp_cav_reiksguard");
	cm:remove_unit_from_character("faction:wh_main_emp_empire,forename:2147343922", "wh_main_emp_inf_greatswords");			--Balthasar
	cm:remove_unit_from_character("faction:wh_main_emp_empire,forename:2147343922", "wh_main_emp_cav_outriders_0");
	cm:remove_unit_from_character("faction:wh_main_emp_empire,forename:2147343922", "wh_main_emp_art_mortar");
	cm:remove_unit_from_character("faction:wh_main_emp_empire,forename:2147358013", "wh_dlc04_emp_inf_tattersouls_0");		--Volkmar
	cm:remove_unit_from_character("faction:wh_main_emp_empire,forename:2147358013", "wh_dlc04_emp_inf_flagellants_0");	
	cm:remove_unit_from_character("faction:wh_main_emp_empire,forename:2147358013", "wh_dlc04_emp_cav_knights_blazing_sun_0");
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345130", "wh_dlc02_vmp_cav_blood_knights_0");	--Vlad
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345130", "wh_main_vmp_mon_fell_bats");
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345130", "wh_main_vmp_mon_vargheists");
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345124", "wh_main_vmp_inf_crypt_ghouls");		--Isabella
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345124", "wh_main_vmp_inf_crypt_ghouls");
	cm:remove_unit_from_character("faction:wh_main_vmp_schwartzhafen,forename:2147345124", "wh_main_vmp_cav_black_knights_0");

------------------------------------------------------------------------------------
-- Nehekhara and Southlands (Nehekhara and replacements)
------------------------------------------------------------------------------------

	--no Silver Host
	cm:kill_character("faction:wh2_main_vmp_the_silver_host,forename:2147360561", true, true); 		--Ewald
	cm:set_region_abandoned("wh2_main_devils_backbone_lahmia"); 						--Lahmia
	cm:set_region_abandoned("wh2_main_devils_backbone_mahrak"); 						--Mahrak
	cm:set_region_abandoned("wh2_main_crater_of_the_walking_dead_rasetra"); 				--Rasetra

	-- Strygos Empire and Necrarch Brotherhood overhaul
cm:kill_character("faction:wh2_main_vmp_necrarch_brotherhood,forename:2147359170", true, true);		--kill Wsoran with all units (Necrarch brotherhood)
cm:kill_character("faction:wh2_main_vmp_strygos_empire,forename:2147359177", true, true);		--kill Ushoran with all units (Strygos Empire)

	cm:instantly_upgrade_building("wh2_main_land_of_the_dead_pyramid_of_nagash:0", "wh_main_nor_settlement_minor_2"); 		--Pyramid of Nagash
	cm:instantly_dismantle_building("wh2_main_land_of_the_dead_pyramid_of_nagash:1");
	cm:instantly_upgrade_building("wh2_main_great_desert_of_araby_black_tower_of_arkhan:0", "wh_main_nor_settlement_major_2"); 	--Black Tower of Arkhan
	cm:instantly_dismantle_building("wh2_main_great_desert_of_araby_black_tower_of_arkhan:1");
	cm:instantly_upgrade_building("wh2_main_shifting_sands_bhagar:0", "wh_main_nor_settlement_minor_2"); 				--Bhagar
	cm:instantly_dismantle_building("wh2_main_shifting_sands_bhagar:1");
	cm:instantly_upgrade_building("wh2_main_shifting_sands_ka-sabar:0", "wh_main_nor_settlement_major_2"); 				--Ka-Sabar
	cm:instantly_dismantle_building("wh2_main_shifting_sands_ka-sabar:1");
	cm:instantly_upgrade_building("wh2_main_land_of_the_dead_khemri:0", "wh2_main_special_settlement_khemri_norsca_1"); 		--Khemri
	cm:instantly_dismantle_building("wh2_main_land_of_the_dead_khemri:1");
	cm:instantly_dismantle_building("wh2_main_land_of_the_dead_khemri:2");
	cm:instantly_upgrade_building("wh2_main_great_desert_of_araby_pools_of_despair:0", "wh_main_nor_settlement_minor_2"); 		--Pools of Despair
	cm:instantly_dismantle_building("wh2_main_great_desert_of_araby_pools_of_despair:1");
	cm:instantly_upgrade_building("wh2_main_ash_river_quatar:0", "wh_main_nor_settlement_minor_1"); 				--Quatar
	cm:instantly_dismantle_building("wh2_main_ash_river_quatar:1");	
	cm:instantly_upgrade_building("wh2_main_ash_river_springs_of_eternal_life:0", "wh_main_nor_settlement_minor_1"); 		--Spring of Eternal Life
	cm:instantly_dismantle_building("wh2_main_ash_river_springs_of_eternal_life:1");	
	cm:instantly_upgrade_building("wh2_main_land_of_the_dead_zandri:0", "wh_main_nor_settlement_minor_1_coast"); 			--Zandri
	cm:instantly_upgrade_building("wh2_main_land_of_the_dead_zandri:1", "wh_main_nor_port");


------------------------------------------------------------------------------------
-- Araby?
------------------------------------------------------------------------------------
		
	-- see under High Elves

	--Thegans Crusaders to Greenskins
	cm:remove_unit_from_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_brt_inf_men_at_arms");	-- Baron Thegan
	cm:remove_unit_from_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_brt_inf_men_at_arms");	
	cm:remove_unit_from_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_brt_inf_men_at_arms");	
	cm:remove_unit_from_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_brt_inf_men_at_arms");	
	cm:remove_unit_from_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_brt_inf_men_at_arms");	
	cm:remove_unit_from_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_brt_inf_peasant_bowmen");	
	cm:remove_unit_from_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_brt_inf_peasant_bowmen");	
	cm:remove_unit_from_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_brt_art_field_trebuchet");	
	cm:grant_unit_to_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_grn_inf_savage_orcs");
	cm:grant_unit_to_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_grn_inf_savage_orcs");
	cm:grant_unit_to_character("faction:wh2_main_brt_thegans_crusaders,forename:2147360515", "wh_main_grn_inf_savage_orc_arrer_boyz");
	cm:instantly_upgrade_building("wh2_main_coast_of_araby_al_haikk:0", "wh_main_grn_settlement_major_2_coast"); 			--Al Haikk
	cm:instantly_upgrade_building("wh2_main_coast_of_araby_al_haikk:1", "wh_main_grn_port_1");
	cm:instantly_dismantle_building("wh2_main_coast_of_araby_al_haikk:2");	
	cm:instantly_upgrade_building("wh2_main_coast_of_araby_copher:0", "wh_main_grn_settlement_minor_1_coast"); 			--Copher
	cm:instantly_upgrade_building("wh2_main_coast_of_araby_copher:1", "wh_main_grn_port_1");	
	cm:instantly_upgrade_building("wh2_main_atalan_mountains_martek:0", "wh_main_grn_settlement_minor_1"); 				--Martek
	cm:instantly_upgrade_building("wh2_main_atalan_mountains_martek:1", "wh_main_grn_resource_iron_military");	


------------------------------------------------------------------------------------
-- Dwarfs (Worlds Edge mountains, gaining parts of Sylvania and greenskin territories)
------------------------------------------------------------------------------------

--delete Thunderers
cm:remove_unit_from_character("faction:wh_main_dwf_barak_varr,forename:2147345851", "wh_main_dwf_inf_thunderers_0");			--Barakk Varr
cm:remove_unit_from_character("faction:wh_main_dwf_barak_varr,forename:2147345851", "wh_main_dwf_inf_thunderers_0");
cm:remove_unit_from_character("faction:wh_main_dwf_karak_azul,forename:2147345846", "wh_main_dwf_inf_thunderers_0");			--Karak Azul
cm:remove_unit_from_character("faction:wh_main_dwf_karak_hirn,forename:2147344377", "wh_main_dwf_inf_thunderers_0"); --Karak Hirn
cm:remove_unit_from_character("faction:wh_main_dwf_karak_kadrin,forename:2147344228", "wh_main_dwf_inf_thunderers_0");			--Karak Kadrin
cm:remove_unit_from_character("faction:wh_main_dwf_karak_ziflin,forename:2147345819", "wh_main_dwf_inf_thunderers_0"); --Karak Ziflin
cm:remove_unit_from_character("faction:wh_main_dwf_kraka_drak,forename:2147345825", "wh_main_dwf_inf_thunderers_0");			--Kraka Drak
cm:remove_unit_from_character("faction:wh_main_dwf_kraka_drak,forename:2147345825", "wh_main_dwf_inf_thunderers_0");
cm:remove_unit_from_character("faction:wh_main_dwf_zhufbar,forename:2147345808", "wh_main_dwf_inf_thunderers_0");			--Zhufbar
cm:remove_unit_from_character("faction:wh2_main_dwf_greybeards_prospectors,forename:2147354176", "wh_main_dwf_inf_thunderers_0"); --Greybeard Prospectors
cm:remove_unit_from_character("faction:wh2_main_dwf_karak_zorn,forename:2147354196", "wh_main_dwf_inf_thunderers_0"); --Karak Zorn

--delete cannon
cm:remove_unit_from_character("faction:wh2_main_dwf_greybeards_prospectors,forename:2147354176", "wh_main_dwf_art_cannon"); --Greybeard Prospectors


	--delete Ghost agents of Belegar
	cm:kill_character("faction:wh_main_dwf_karak_izor,forename:2147358979", false, true); 
	cm:kill_character("faction:wh_main_dwf_karak_izor,forename:2147358988", false, true);
	cm:kill_character("faction:wh_main_dwf_karak_izor,forename:2147358982", false, true);
	cm:kill_character("faction:wh_main_dwf_karak_izor,forename:2147359003", false, true);

	-- Create the Hilldwarfs and gift northern sylvania regions to Greenskins
	cm:instantly_upgrade_building("wh_main_eastern_sylvania_castle_drakenhof:0", "wh2_main_special_settlement_castle_drakenhof_dwf_1"); 	--Castle Drakenhof
	cm:instantly_upgrade_building("wh_main_eastern_sylvania_castle_drakenhof:1", "wh_main_dwf_barracks_1");
	cm:instantly_upgrade_building("wh_main_averland_grenzstadt:0", "wh_main_dwf_settlement_minor_1"); 		--Grenzstadt
	cm:instantly_dismantle_building("wh_main_averland_grenzstadt:1");
cm:transfer_region_to_faction("wh_main_averland_grenzstadt", "wh_main_vmp_vampire_counts");
	cm:instantly_upgrade_building("wh_main_western_sylvania_schwartzhafen:0", "wh_main_dwf_settlement_minor_1");		--Schwartzhafen
	cm:instantly_dismantle_building("wh_main_western_sylvania_schwartzhafen:1");
cm:transfer_region_to_faction("wh_main_western_sylvania_schwartzhafen", "wh_main_vmp_vampire_counts");
	cm:instantly_upgrade_building("wh_main_eastern_sylvania_eschen:0", "wh_main_grn_settlement_minor_1");		--Eschen
	cm:instantly_dismantle_building("wh_main_eastern_sylvania_eschen:1");
cm:transfer_region_to_faction("wh_main_eastern_sylvania_eschen", "wh_main_grn_red_eye");
	cm:instantly_upgrade_building("wh_main_eastern_sylvania_waldenhof:0", "wh_main_grn_settlement_minor_1");		--Waldenhof
	cm:instantly_dismantle_building("wh_main_eastern_sylvania_waldenhof:1");
	cm:instantly_dismantle_building("wh_main_eastern_sylvania_waldenhof:2");
cm:transfer_region_to_faction("wh_main_eastern_sylvania_waldenhof", "wh_main_grn_red_eye");

	
	-- main Greenskin faction to Dwarfs
	cm:instantly_upgrade_building("wh_main_death_pass_karak_drazh:0", "wh_main_special_settlement_black_crag_2_dwf"); 	--Black Crag/Karak Drazh
	cm:instantly_upgrade_building("wh_main_death_pass_karak_drazh:1", "wh_main_dwf_barracks_1");

	-- Karak8P to Dwarfs
	cm:instantly_upgrade_building("wh_main_eastern_badlands_karak_eight_peaks:0", "wh_main_special_settlement_eight_peaks_2_dwf"); 	--Karak8P
	cm:instantly_upgrade_building("wh_main_eastern_badlands_karak_eight_peaks:1", "wh_main_dwf_barracks_1");
	cm:instantly_upgrade_building("wh_main_eastern_badlands_karak_eight_peaks:2", "wh_main_dwf_industry_1");
	cm:instantly_upgrade_building("wh_main_eastern_badlands_karak_eight_peaks:3", "wh_main_dwf_smith_1");

	-- CrookedMoon to Dwarfs
	cm:kill_character("faction:wh_main_grn_crooked_moon,forename:2147344448", false, true); 				--Sly of Crooked Moon
	cm:instantly_upgrade_building("wh_main_southern_grey_mountains_karak_azgaraz:0", "wh_main_dwf_settlement_minor_2"); 	--Karak Azgaraz
	cm:instantly_upgrade_building("wh_main_southern_grey_mountains_karak_azgaraz:1", "wh_main_dwf_barracks_1");

	-- Bloody Spearz to Dwarfs
	cm:kill_character("faction:wh_main_grn_bloody_spearz,forename:2147344849", true, true); 			--Morglum of Bloody Spearz
	cm:kill_character("faction:wh_main_grn_bloody_spearz,forename:2147344985", true, true); 			--Morglor of Bloody Spearz
	cm:transfer_region_to_faction("wh_main_the_silver_road_the_pillars_of_grungni", "wh_main_dwf_dwarfs"); 		--Pillars of Grungni to main Dwarfs
	cm:transfer_region_to_faction("wh_main_the_silver_road_mount_squighorn", "wh_main_dwf_dwarfs"); 		--Mount Squighorn to main Dwarfs
	cm:transfer_region_to_faction("wh_main_death_pass_karag_dron", "wh_main_grn_greenskins"); 			--Karag Dron to main Greenskins
	cm:instantly_upgrade_building("wh_main_the_silver_road_mount_squighorn:0", "wh_main_dwf_settlement_minor_1"); 		--Mount Squighorn
	cm:instantly_upgrade_building("wh_main_the_silver_road_mount_squighorn:1", "wh_main_dwf_barracks_1");
	cm:instantly_upgrade_building("wh_main_the_silver_road_the_pillars_of_grungni:0", "wh_main_dwf_settlement_minor_1");	--Pillars of Grungni
	cm:instantly_upgrade_building("wh_main_the_silver_road_the_pillars_of_grungni:1", "wh_main_dwf_farm_1");
	cm:instantly_upgrade_building("wh_main_rib_peaks_mount_gunbad:0", "wh_main_dwf_settlement_major_2"); 			--Mount Gunbad
	cm:instantly_upgrade_building("wh_main_rib_peaks_mount_gunbad:1", "wh_main_dwf_barracks_1");
	cm:instantly_upgrade_building("wh_main_death_pass_karag_dron:0", "wh_main_dwf_settlement_minor_2"); 			--Karag Dron
	cm:instantly_upgrade_building("wh_main_death_pass_karag_dron:1", "wh_main_dwf_farm_1");
	cm:instantly_upgrade_building("wh_main_rib_peaks_grom_peak:0", "wh_main_dwf_settlement_minor_2"); 			--Grom Peak
	cm:instantly_upgrade_building("wh_main_rib_peaks_grom_peak:1", "wh_main_dwf_barracks_1");
	cm:kill_character("faction:wh_main_grn_bloody_spearz,forename:2147344880", true, true); 			--Gnashrak

	-- internal Diplomacy for Dwarfs
	cm:force_make_peace("wh_main_dwf_dwarfs", "wh_main_grn_bloody_spearz");		--Peace with Bloody Spearz
	cm:force_make_peace("wh_main_dwf_zhufbar", "wh_main_grn_bloody_spearz");
	cm:force_make_peace("wh_main_grn_greenskins", "wh_main_dwf_dwarfs");		--Peace with main Greenskins
	cm:force_make_peace("wh_main_dwf_karak_izor", "wh_main_grn_greenskins");
	cm:force_make_peace("wh_main_dwf_karak_izor", "wh_main_grn_necksnappers");	--Peace with Necksnapperz/Karak8P
	cm:force_make_peace("wh_main_grn_crooked_moon", "wh_main_grn_necksnappers");
	cm:force_make_peace("wh_main_grn_crooked_moon", "wh_main_dwf_karak_norn");	--Peace with Crooked Moon
	cm:force_make_peace("wh_main_dwf_karak_izor", "wh_main_grn_crooked_moon");

	--Delete Greenskin units
	cm:remove_unit_from_character("faction:wh_main_grn_necksnappers,forename:2147344849", "wh_main_grn_inf_goblin_spearmen");			--Necksnapperz
	cm:remove_unit_from_character("faction:wh_main_grn_necksnappers,forename:2147344849", "wh_main_grn_inf_goblin_spearmen");
	cm:remove_unit_from_character("faction:wh_main_grn_necksnappers,forename:2147344849", "wh_main_grn_inf_night_goblins");
	cm:remove_unit_from_character("faction:wh_main_grn_necksnappers,forename:2147344849", "wh_main_grn_inf_night_goblins");
	cm:remove_unit_from_character("faction:wh_main_grn_necksnappers,forename:2147344849", "wh_main_grn_inf_goblin_spearmen");
	cm:remove_unit_from_character("faction:wh_main_grn_necksnappers,forename:2147344849", "wh_main_grn_inf_orc_boyz");
	cm:remove_unit_from_character("faction:wh_main_grn_necksnappers,forename:2147344849", "wh_main_grn_inf_orc_boyz");
	cm:remove_unit_from_character("faction:wh_main_grn_necksnappers,forename:2147344849", "wh_main_grn_cav_orc_boar_boy_big_uns");
	cm:remove_unit_from_character("faction:wh_main_grn_greenskins", "wh_main_grn_inf_orc_boyz");							--Greenskins
	cm:remove_unit_from_character("faction:wh_main_grn_greenskins", "wh_main_grn_inf_goblin_spearmen");
	cm:remove_unit_from_character("faction:wh_main_grn_greenskins", "wh_main_grn_inf_goblin_archers");
	cm:remove_unit_from_character("faction:wh_main_grn_crooked_moon,forename:2147358016", "wh_main_grn_inf_night_goblins");				--Crooked Moon
	cm:remove_unit_from_character("faction:wh_main_grn_crooked_moon,forename:2147358016", "wh_main_grn_inf_goblin_spearmen");
	cm:remove_unit_from_character("faction:wh_main_grn_crooked_moon,forename:2147358016", "wh_main_grn_inf_goblin_archers");
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts", "wh_main_vmp_inf_zombie");				--Vampire Counts
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts", "wh_main_vmp_inf_zombie");
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts", "wh_main_vmp_inf_skeleton_warriors_0");
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts", "wh_main_vmp_inf_skeleton_warriors_0");				

	--delete additional starting units from playable characters
	cm:remove_unit_from_character("faction:wh_main_grn_greenskins,forename:2147343863", "wh_main_grn_inf_black_orcs");			--Grimgor
	cm:remove_unit_from_character("faction:wh_main_grn_greenskins,forename:2147343863", "wh_main_grn_art_doom_diver_catapult");
	cm:remove_unit_from_character("faction:wh_main_grn_greenskins,forename:2147343863", "wh_main_grn_cav_orc_boar_boyz");
	cm:remove_unit_from_character("faction:wh_main_grn_greenskins,forename:2147345906", "wh_main_grn_inf_orc_big_uns");			--Azhag
	cm:remove_unit_from_character("faction:wh_main_grn_greenskins,forename:2147345906", "wh_main_grn_inf_goblin_archers");
	cm:remove_unit_from_character("faction:wh_main_grn_greenskins,forename:2147345906", "wh_main_grn_cav_forest_goblin_spider_riders_0");
	cm:remove_unit_from_character("faction:wh_main_grn_crooked_moon,forename:2147358016", "wh_main_grn_inf_night_goblin_fanatics");		--Skarsnik
	cm:remove_unit_from_character("faction:wh_main_grn_crooked_moon,forename:2147358016", "wh_dlc06_grn_cav_squig_hoppers_0");
	cm:remove_unit_from_character("faction:wh_main_grn_crooked_moon,forename:2147358016", "wh_main_grn_mon_arachnarok_spider_0");
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts,forename:2147343886", "wh_main_vmp_mon_varghulf");			--Mannfred
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts,forename:2147343886", "wh_main_vmp_mon_fell_bats");
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts,forename:2147343886", "wh_main_vmp_inf_crypt_ghouls");
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts,forename:2147345320", "wh_main_vmp_inf_cairn_wraiths");		--Heinrich
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts,forename:2147345320", "wh_main_vmp_cav_hexwraiths");
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts,forename:2147345320", "wh_main_vmp_mon_dire_wolves");
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts,forename:2147358044", "wh_dlc04_vmp_veh_corpse_cart_0");		--Helmann
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts,forename:2147358044", "wh_dlc04_vmp_mon_direpack_0");
	cm:remove_unit_from_character("faction:wh_main_vmp_vampire_counts,forename:2147358044", "wh_main_vmp_inf_grave_guard_0");
	cm:remove_unit_from_character("faction:wh_main_dwf_dwarfs,forename:2147344414", "wh_main_dwf_inf_thunderers_0");		--Ungrims Thunderers
	cm:remove_unit_from_character("faction:wh_main_dwf_dwarfs,forename:2147358917", "wh_main_dwf_veh_gyrocopter_1");		--Grombrindals Gyrocopters
	cm:remove_unit_from_character("faction:wh_main_dwf_dwarfs,forename:2147358917", "wh_main_dwf_inf_miners_1");			--Grombrindals Miners
	cm:remove_unit_from_character("faction:wh_main_dwf_dwarfs,forename:2147358917", "wh_main_dwf_inf_irondrakes_0");		--Grombrindals Irondrakes
	

------------------------------------------------------------------------------------
-- Greenskins
------------------------------------------------------------------------------------
	
	-- nothing

------------------------------------------------------------------------------------
-- Lizardmen and Skaven
------------------------------------------------------------------------------------
	
	--New World Colonies to Lizardmen
	cm:kill_character("faction:wh2_main_emp_new_world_colonies,forename:2147360723", true, true); --Phillipp
	cm:transfer_region_to_faction("wh2_main_northern_jungle_of_pahualaxa_port_reaver", "wh2_main_lzd_hexoatl");			--Port Reaver to Hexoatl
	cm:transfer_region_to_faction("wh2_main_northern_jungle_of_pahualaxa_swamp_town", "wh2_main_lzd_hexoatl");			--Swamp Town to Hexoatl
	cm:instantly_upgrade_building("wh2_main_northern_jungle_of_pahualaxa_port_reaver:0", "wh2_main_lzd_settlement_minor_2_coast"); 	--Port Reaver
	cm:instantly_upgrade_building("wh2_main_northern_jungle_of_pahualaxa_port_reaver:1", "wh2_main_lzd_port_1");
	cm:instantly_upgrade_building("wh2_main_northern_jungle_of_pahualaxa_port_reaver:2", "wh2_main_lzd_farm_1");	
	cm:instantly_upgrade_building("wh2_main_northern_jungle_of_pahualaxa_swamp_town:0", "wh2_main_lzd_settlement_minor_2_coast"); 	--Swamp Town
	cm:instantly_upgrade_building("wh2_main_northern_jungle_of_pahualaxa_swamp_town:1", "wh2_main_lzd_port_1");
	cm:instantly_upgrade_building("wh2_main_northern_jungle_of_pahualaxa_swamp_town:2", "wh2_main_lzd_beasts_1");	

	--Skeggi abandoned
	cm:kill_character("faction:wh2_main_nor_skeggi,forename:1060172250", true, true); 	--Tarr
	cm:kill_character("faction:wh2_main_nor_skeggi,forename:2147360550", true, true); 	--Losteriksson
	cm:set_region_abandoned("wh2_main_isthmus_of_lustria_skeggi"); 				--Skeggi abandoned

	--delete Vampire Coast
	cm:kill_character("faction:wh2_main_vmp_vampire_coast,forename:2147345166", true, true); 				--Pieter
	cm:kill_character("faction:wh2_main_vmp_vampire_coast,forename:2147345230", true, true); 				--Waldakir
	cm:transfer_region_to_faction("wh2_main_vampire_coast_the_blood_swamps", "wh2_main_lzd_xlanhuapec");			--Blood Swamps to Xlanhuapec
	cm:instantly_upgrade_building("wh2_main_vampire_coast_the_blood_swamps:0", "wh2_main_lzd_settlement_minor_1_coast"); 
	cm:instantly_upgrade_building("wh2_main_vampire_coast_the_blood_swamps:1", "wh2_main_lzd_port_1");
	cm:transfer_region_to_faction("wh2_main_vampire_coast_the_awakening", "wh2_main_lzd_tlaxtlan");				--The Awakening to Tlaxtlan
	cm:instantly_upgrade_building("wh2_main_vampire_coast_the_awakening:0", "wh2_main_lzd_settlement_major_2_coast"); 
	cm:instantly_upgrade_building("wh2_main_vampire_coast_the_awakening:1", "wh2_main_lzd_port_1");
	cm:instantly_upgrade_building("wh2_main_vampire_coast_the_awakening:2", "wh2_main_lzd_beasts_1");
	cm:set_region_abandoned("wh2_main_vampire_coast_pox_marsh"); 								--abandon Pox Marsh

	--delete additional starting units from Skaven
	cm:remove_unit_from_character("faction:wh2_main_skv_clan_mors,forename:2147359300", "wh2_main_skv_art_warp_lightning_cannon"); 		--Queek
	cm:remove_unit_from_character("faction:wh2_main_skv_clan_mors,forename:2147359300", "wh2_main_skv_inf_warpfire_thrower");


------------------------------------------------------------------------------------
-- Beastmen and Chaos
------------------------------------------------------------------------------------

	--weaken starting Beastmen armies
	cm:kill_character("faction:wh_dlc03_bst_beastmen,forename:2147357951", true, true); 	--Ghorros
	cm:remove_unit_from_character("faction:wh_dlc03_bst_beastmen,forename:2147352487", "wh_dlc03_bst_inf_ungor_raiders_0");	-- Khazrak
	cm:remove_unit_from_character("faction:wh_dlc03_bst_beastmen,forename:2147352487", "wh_dlc03_bst_inf_ungor_spearmen_0");
	cm:remove_unit_from_character("faction:wh_dlc03_bst_beastmen,forename:2147352487", "wh_dlc03_bst_inf_ungor_spearmen_0");
	cm:remove_unit_from_character("faction:wh_dlc03_bst_redhorn,forename:2147357958", "wh_dlc03_bst_inf_ungor_raiders_0");	-- Ungrol
	cm:remove_unit_from_character("faction:wh_dlc03_bst_redhorn,forename:2147357958", "wh_dlc03_bst_inf_ungor_raiders_0");
	cm:remove_unit_from_character("faction:wh_dlc03_bst_redhorn,forename:2147357958", "wh_dlc03_bst_inf_ungor_raiders_0");
	cm:remove_unit_from_character("faction:wh_dlc03_bst_redhorn,forename:2147357958", "wh_dlc03_bst_inf_ungor_spearmen_0");	

	
------------------------------------------------------------------------------------
-- Other
------------------------------------------------------------------------------------

	--delete additional starting units from Forest Spirits/Durthu
	cm:remove_unit_from_character("faction:wh_dlc05_wef_argwylon,forename:2147352813", "wh_dlc05_wef_cav_wild_riders_0"); 		--Durthu

--change buildings in Athel Loren
cm:instantly_dismantle_building("wh_main_athel_loren_crag_halls:1");
cm:instantly_dismantle_building("wh_main_athel_loren_crag_halls:2");
cm:instantly_dismantle_building("wh_main_athel_loren_crag_halls:3");
cm:instantly_dismantle_building("wh_main_athel_loren_vauls_anvil:1");
cm:instantly_dismantle_building("wh_main_athel_loren_vauls_anvil:2");
cm:instantly_dismantle_building("wh_main_athel_loren_vauls_anvil:3");


--reenable Diplomacy with Empire Secessionist
cm:add_default_diplomacy_record("faction:wh_main_emp_empire", "faction:wh_main_emp_empire_separatists", "peace", true, true, true);

--Norsca can trade
cm:add_default_diplomacy_record("culture:wh_main_chs_chaos", "all", trade_str, true, true, true);

--No peace between Karaz-a-Karak and Eataine
cm:add_default_diplomacy_record("faction:wh2_main_hef_eataine", "faction:wh_main_dwf_dwarfs", "peace", false, false, true);
cm:add_default_diplomacy_record("faction:wh_main_dwf_dwarfs", "faction:wh2_main_hef_eataine", "peace", false, false, true);

--add Effect to Norsii/Empire to provide more untainted corruption
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_emp_averland", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_emp_empire", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_emp_hochland", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_emp_middenland", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_emp_nordland", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_emp_ostermark", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_emp_ostland", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_emp_stirland", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_emp_talabecland", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_emp_wissenland", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_vmp_schwartzhafen", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh2_main_vmp_strygos_empire", 5000);
cm:apply_effect_bundle("wh_main_payload_untainted", "wh2_main_vmp_necrarch_brotherhood", 5000);

--add Effects to balance different factions at campaign start
cm:apply_effect_bundle("wh_main_payload_untainted", "wh_main_teb_estalia", 5);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_teb_estalia", 4);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_dwf_barak_varr", 9);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_dwf_karak_kadrin", 10);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_dwf_karak_norn", 5);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_dwf_kraka_drak", 5);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_dwf_karak_ziflin", 5);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_brt_bretonnia", 2);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_brt_bastonne", 2);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_emp_marienburg", 2);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh2_main_vmp_necrarch_brotherhood", 4);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh2_main_vmp_strygos_empire", 4);
cm:apply_effect_bundle("wh_main_bundle_force_additional_army_upkeep_hard", "wh_dlc03_bst_beastmen", 6);
cm:apply_effect_bundle("wh_main_bundle_force_additional_army_upkeep_hard", "wh2_main_skv_clan_eshin", 50);
cm:apply_effect_bundle("wh_main_bundle_force_additional_army_upkeep_hard", "wh2_main_skv_clan_moulder", 50);
cm:apply_effect_bundle("wh_main_bundle_force_additional_army_upkeep_very_hard", "wh2_main_skv_clan_skyre", 65);
cm:apply_effect_bundle("wh_main_bundle_force_additional_army_upkeep_hard", "wh2_main_skv_clan_septik", 50);
cm:apply_effect_bundle("wh_main_bundle_force_additional_army_upkeep_hard", "wh_main_nor_skaeling", 100);
cm:apply_effect_bundle("wh_main_bundle_force_additional_army_upkeep_hard", "wh_main_nor_varg", 100);
cm:apply_effect_bundle("wh_main_bundle_force_additional_army_upkeep_hard", "wh_main_vmp_schwartzhafen", 35);

------------------------------------------------------------------------------------
-- Global Diplomacy (external between these groups)
------------------------------------------------------------------------------------

	-- HEF and DWF main factions at war with counterpart and enemy leader (in some cases some more)
	cm:force_declare_war("wh2_main_hef_eataine", "wh_main_dwf_dwarfs", false, false);
	cm:force_declare_war("wh2_main_hef_eataine", "wh_main_dwf_karak_izor", false, false);
	cm:force_declare_war("wh2_main_hef_eataine", "wh2_main_dwf_greybeards_prospectors", false, false);
	cm:force_declare_war("wh2_main_hef_eataine", "wh2_main_def_naggarond", false, false);
	cm:force_declare_war("wh2_main_hef_eataine", "wh_main_grn_crooked_moon", false, false);
	cm:force_declare_war("wh2_main_hef_eataine", "wh_main_grn_greenskins", false, false);
	cm:force_declare_war("wh2_main_hef_eataine", "wh_main_vmp_vampire_counts", false, false);
	cm:force_declare_war("wh2_main_hef_order_of_loremasters", "wh_main_dwf_dwarfs", false, false);
	cm:force_declare_war("wh2_main_hef_order_of_loremasters", "wh_main_dwf_karak_izor", false, false);
	cm:force_declare_war("wh2_main_hef_order_of_loremasters", "wh2_main_dwf_greybeards_prospectors", false, false);
	cm:force_declare_war("wh_main_teb_border_princes", "wh_main_dwf_dwarfs", false, false);
	cm:force_declare_war("wh_main_teb_border_princes", "wh_main_dwf_karak_izor", false, false);
	cm:force_declare_war("wh_main_teb_border_princes", "wh2_main_dwf_greybeards_prospectors", false, false);
	cm:force_declare_war("wh_main_brt_bordeleaux", "wh_main_dwf_dwarfs", false, false);
	cm:force_declare_war("wh_main_brt_bordeleaux", "wh_main_grn_crooked_moon", false, false);
	cm:force_declare_war("wh_main_brt_bordeleaux", "wh_main_dwf_karak_norn", false, false);
	cm:force_declare_war("wh_main_brt_bretonnia", "wh_main_dwf_dwarfs", false, false);
	cm:force_declare_war("wh_main_brt_bretonnia", "wh_main_grn_crooked_moon", false, false);
	cm:force_declare_war("wh_main_brt_bretonnia", "wh_main_nor_skaeling", false, false);
	cm:force_declare_war("wh_dlc05_wef_wood_elves", "wh_main_dwf_karak_norn", false, false);
	cm:force_declare_war("wh_dlc05_wef_wood_elves", "wh_main_dwf_dwarfs", false, false);
	cm:force_declare_war("wh_main_grn_greenskins", "wh2_main_hef_order_of_loremasters", false, false);
	cm:force_declare_war("wh_main_vmp_vampire_counts", "wh_main_brt_bordeleaux", false, false);


------------------------------------------------------------------------------------
-- Add an effect for first turns to mobilize and recruit faster
------------------------------------------------------------------------------------
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh2_main_hef_eataine", 5);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh2_main_hef_order_of_loremasters", 5);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_dwf_dwarfs", 5);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_dwf_karak_izor", 5);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_grn_crooked_moon", 5);
cm:apply_effect_bundle("wh_main_payload_event_recruiting_surplus", "wh_main_brt_bordeleaux", 5);




------------------------------------------------------------------------------------
-- Re-enable event messages
------------------------------------------------------------------------------------
	--cm:disable_event_feed_events(false,"wh_event_category_conquest","","");
	--cm:disable_event_feed_events(false,"wh_event_category_diplomacy","","");
	--cm:disable_event_feed_events(false,"wh_event_category_faction","","");
	--cm:disable_event_feed_events(false,"wh_event_category_provinces","","");
	--cm:disable_event_feed_events(false,"wh_event_category_character","","");
	--cm:disable_event_feed_events(false,"wh_event_category_agent","","");
	--cm:disable_event_feed_events(false,"wh_event_category_military","","");
	--cm:disable_event_feed_events(false,"wh_event_category_provinces","","");
	--cm:disable_event_feed_events(false,"wh_event_category_traits_ancillaries","","");
	--cm:disable_event_feed_events(false,"wh_event_category_world","","");