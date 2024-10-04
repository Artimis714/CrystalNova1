; AutomaticWeatherEffects indexes
	const_def 1
	const AUTOMATIC_SUN
	const AUTOMATIC_RAIN
	const AUTOMATIC_SANDSTORM
	const AUTOMATIC_HAIL
	const AUTOMATIC_SMOG

MornAutomaticWeatherMaps:
MACRO morn_auto_weather_map
	map_id \1 ; map
	db \2 ; AUTOMATIC_* weather index

ENDM
	morn_auto_weather_map TIN_TOWER_ROOF, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_43, AUTOMATIC_RAIN
	morn_auto_weather_map LAKE_OF_RAGE, AUTOMATIC_RAIN
	morn_auto_weather_map ROUTE_45, AUTOMATIC_SANDSTORM
	morn_auto_weather_map ROUTE_46, AUTOMATIC_SANDSTORM
	morn_auto_weather_map ROUTE_29, AUTOMATIC_SUN
	morn_auto_weather_map CHERRYGROVE_CITY, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_30, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_31, AUTOMATIC_SUN
	morn_auto_weather_map ICE_PATH_1F, AUTOMATIC_HAIL
	morn_auto_weather_map ICE_PATH_B1F, AUTOMATIC_HAIL
	morn_auto_weather_map ICE_PATH_B2F_MAHOGANY_SIDE, AUTOMATIC_HAIL
	morn_auto_weather_map ICE_PATH_B2F_BLACKTHORN_SIDE, AUTOMATIC_HAIL
	morn_auto_weather_map ICE_PATH_B3F, AUTOMATIC_HAIL
	morn_auto_weather_map WHIRL_ISLAND_NW, AUTOMATIC_HAIL
	morn_auto_weather_map BURNED_TOWER_1F, AUTOMATIC_SMOG
	morn_auto_weather_map BURNED_TOWER_B1F, AUTOMATIC_SMOG
	morn_auto_weather_map TEAM_ROCKET_BASE_B1F, AUTOMATIC_SMOG
	morn_auto_weather_map TEAM_ROCKET_BASE_B2F, AUTOMATIC_SMOG
	morn_auto_weather_map TEAM_ROCKET_BASE_B3F, AUTOMATIC_SMOG
	morn_auto_weather_map GOLDENROD_UNDERGROUND, AUTOMATIC_SMOG
	morn_auto_weather_map GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, AUTOMATIC_SMOG
	morn_auto_weather_map GOLDENROD_UNDERGROUND_WAREHOUSE, AUTOMATIC_SMOG
	morn_auto_weather_map SLOWPOKE_WELL_B1F, AUTOMATIC_RAIN
	morn_auto_weather_map SLOWPOKE_WELL_B2F, AUTOMATIC_RAIN
	morn_auto_weather_map RUINS_OF_ALPH_OUTSIDE, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_32, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_35, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_36, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_37, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_33, AUTOMATIC_RAIN
	morn_auto_weather_map ROUTE_34, AUTOMATIC_RAIN
	morn_auto_weather_map AZALEA_TOWN, AUTOMATIC_RAIN
	morn_auto_weather_map LANCES_ROOM, AUTOMATIC_SANDSTORM
	morn_auto_weather_map KARENS_ROOM, AUTOMATIC_SMOG
	morn_auto_weather_map KOGAS_ROOM, AUTOMATIC_SMOG
	morn_auto_weather_map FUCHSIA_GYM, AUTOMATIC_SMOG
	morn_auto_weather_map ECRUTEAK_GYM, AUTOMATIC_SMOG
	morn_auto_weather_map PEWTER_GYM, AUTOMATIC_SANDSTORM
	morn_auto_weather_map OLIVINE_GYM, AUTOMATIC_SANDSTORM
	morn_auto_weather_map BLACKTHORN_GYM_1F, AUTOMATIC_SANDSTORM
	morn_auto_weather_map BLACKTHORN_GYM_2F, AUTOMATIC_SANDSTORM
	morn_auto_weather_map SEAFOAM_GYM, AUTOMATIC_SUN
	morn_auto_weather_map CERULEAN_GYM, AUTOMATIC_RAIN
	morn_auto_weather_map VERMILION_GYM, AUTOMATIC_RAIN
	morn_auto_weather_map MAHOGANY_GYM, AUTOMATIC_HAIL
	morn_auto_weather_map ROUTE_40, AUTOMATIC_HAIL
	morn_auto_weather_map ROUTE_41, AUTOMATIC_HAIL
	morn_auto_weather_map ROUTE_38, AUTOMATIC_RAIN
	morn_auto_weather_map ROUTE_39, AUTOMATIC_RAIN
	morn_auto_weather_map GOLDENROD_ARCHIVES, AUTOMATIC_SMOG
	morn_auto_weather_map SOUL_HOUSE, AUTOMATIC_SMOG
	morn_auto_weather_map VICTORY_ROAD, AUTOMATIC_SANDSTORM
	morn_auto_weather_map SILVER_CAVE_ROOM_1, AUTOMATIC_SMOG
	morn_auto_weather_map ROUTE_4, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_9, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_10_NORTH, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_24, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_25, AUTOMATIC_SUN
	morn_auto_weather_map ROUTE_5, AUTOMATIC_SMOG
	morn_auto_weather_map ROUTE_6, AUTOMATIC_SMOG
	morn_auto_weather_map ROUTE_7, AUTOMATIC_SMOG
	morn_auto_weather_map ROUTE_8, AUTOMATIC_SMOG
	db 0 ; end

DayAutomaticWeatherMaps:
MACRO day_auto_weather_map
	map_id \1 ; map
	db \2 ; AUTOMATIC_* weather index

ENDM
	day_auto_weather_map TIN_TOWER_ROOF, AUTOMATIC_SUN
	day_auto_weather_map ROUTE_43, AUTOMATIC_SUN
	day_auto_weather_map LAKE_OF_RAGE, AUTOMATIC_SUN
	day_auto_weather_map ROUTE_45, AUTOMATIC_SANDSTORM
	day_auto_weather_map ROUTE_46, AUTOMATIC_SANDSTORM
	day_auto_weather_map ICE_PATH_1F, AUTOMATIC_HAIL
	day_auto_weather_map ICE_PATH_B1F, AUTOMATIC_HAIL
	day_auto_weather_map ICE_PATH_B2F_MAHOGANY_SIDE, AUTOMATIC_HAIL
	day_auto_weather_map ICE_PATH_B2F_BLACKTHORN_SIDE, AUTOMATIC_HAIL
	day_auto_weather_map ICE_PATH_B3F, AUTOMATIC_HAIL
	day_auto_weather_map WHIRL_ISLAND_SW, AUTOMATIC_SUN
	day_auto_weather_map BURNED_TOWER_1F, AUTOMATIC_SMOG
	day_auto_weather_map BURNED_TOWER_B1F, AUTOMATIC_SMOG
	day_auto_weather_map TEAM_ROCKET_BASE_B1F, AUTOMATIC_SMOG
	day_auto_weather_map TEAM_ROCKET_BASE_B2F, AUTOMATIC_SMOG
	day_auto_weather_map TEAM_ROCKET_BASE_B3F, AUTOMATIC_SMOG
	day_auto_weather_map GOLDENROD_UNDERGROUND, AUTOMATIC_SMOG
	day_auto_weather_map GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, AUTOMATIC_SMOG
	day_auto_weather_map GOLDENROD_UNDERGROUND_WAREHOUSE, AUTOMATIC_SMOG
	day_auto_weather_map RUINS_OF_ALPH_OUTSIDE, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_32, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_32, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_35, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_36, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_37, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_33, AUTOMATIC_SUN
	day_auto_weather_map ROUTE_34, AUTOMATIC_SUN
	day_auto_weather_map AZALEA_TOWN, AUTOMATIC_SUN
	day_auto_weather_map LANCES_ROOM, AUTOMATIC_SANDSTORM
	day_auto_weather_map KARENS_ROOM, AUTOMATIC_SMOG
	day_auto_weather_map KOGAS_ROOM, AUTOMATIC_SMOG
	day_auto_weather_map FUCHSIA_GYM, AUTOMATIC_SMOG
	day_auto_weather_map ECRUTEAK_GYM, AUTOMATIC_SMOG
	day_auto_weather_map PEWTER_GYM, AUTOMATIC_SANDSTORM
	day_auto_weather_map OLIVINE_GYM, AUTOMATIC_SANDSTORM
	day_auto_weather_map BLACKTHORN_GYM_1F, AUTOMATIC_SANDSTORM
	day_auto_weather_map BLACKTHORN_GYM_2F, AUTOMATIC_SANDSTORM
	day_auto_weather_map SEAFOAM_GYM, AUTOMATIC_SUN
	day_auto_weather_map CERULEAN_GYM, AUTOMATIC_RAIN
	day_auto_weather_map VERMILION_GYM, AUTOMATIC_RAIN
	day_auto_weather_map MAHOGANY_GYM, AUTOMATIC_HAIL
	day_auto_weather_map ROUTE_40, AUTOMATIC_SUN
	day_auto_weather_map ROUTE_41, AUTOMATIC_SUN
	day_auto_weather_map ROUTE_44, AUTOMATIC_SANDSTORM
	day_auto_weather_map ROUTE_42, AUTOMATIC_RAIN
	day_auto_weather_map GOLDENROD_ARCHIVES, AUTOMATIC_SMOG
	day_auto_weather_map SOUL_HOUSE, AUTOMATIC_SMOG
	day_auto_weather_map TOHJO_FALLS, AUTOMATIC_HAIL
	day_auto_weather_map DIGLETTS_CAVE, AUTOMATIC_SANDSTORM
	day_auto_weather_map SILVER_CAVE_ROOM_2, AUTOMATIC_HAIL
	day_auto_weather_map ROUTE_4, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_9, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_10_NORTH, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_24, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_25, AUTOMATIC_RAIN
	day_auto_weather_map ROUTE_5, AUTOMATIC_SUN
	day_auto_weather_map ROUTE_6, AUTOMATIC_SUN
	day_auto_weather_map ROUTE_7, AUTOMATIC_SUN
	day_auto_weather_map ROUTE_8, AUTOMATIC_SUN
	db 0 ; end

NiteAutomaticWeatherMaps:
MACRO nite_auto_weather_map
	map_id \1 ; map
	db \2 ; AUTOMATIC_* weather index

ENDM
	nite_auto_weather_map ROUTE_43, AUTOMATIC_RAIN
	nite_auto_weather_map LAKE_OF_RAGE, AUTOMATIC_RAIN
	nite_auto_weather_map ROUTE_45, AUTOMATIC_SANDSTORM
	nite_auto_weather_map ROUTE_46, AUTOMATIC_SANDSTORM
	nite_auto_weather_map ROUTE_29, AUTOMATIC_RAIN
	nite_auto_weather_map CHERRYGROVE_CITY, AUTOMATIC_RAIN
	nite_auto_weather_map ROUTE_30, AUTOMATIC_RAIN
	nite_auto_weather_map ROUTE_31, AUTOMATIC_RAIN
	nite_auto_weather_map ICE_PATH_1F, AUTOMATIC_HAIL
	nite_auto_weather_map ICE_PATH_B1F, AUTOMATIC_HAIL
	nite_auto_weather_map ICE_PATH_B2F_MAHOGANY_SIDE, AUTOMATIC_HAIL
	nite_auto_weather_map ICE_PATH_B2F_BLACKTHORN_SIDE, AUTOMATIC_HAIL
	nite_auto_weather_map ICE_PATH_B3F, AUTOMATIC_HAIL
	nite_auto_weather_map WHIRL_ISLAND_SE, AUTOMATIC_RAIN
	nite_auto_weather_map BURNED_TOWER_1F, AUTOMATIC_SMOG
	nite_auto_weather_map BURNED_TOWER_B1F, AUTOMATIC_SMOG
	nite_auto_weather_map TEAM_ROCKET_BASE_B1F, AUTOMATIC_SMOG
	nite_auto_weather_map TEAM_ROCKET_BASE_B2F, AUTOMATIC_SMOG
	nite_auto_weather_map TEAM_ROCKET_BASE_B3F, AUTOMATIC_SMOG
	nite_auto_weather_map GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, AUTOMATIC_SMOG
	nite_auto_weather_map GOLDENROD_UNDERGROUND_WAREHOUSE, AUTOMATIC_SMOG
	nite_auto_weather_map UNION_CAVE_B2F, AUTOMATIC_HAIL
	nite_auto_weather_map ROUTE_33, AUTOMATIC_RAIN
	nite_auto_weather_map LANCES_ROOM, AUTOMATIC_SANDSTORM
	nite_auto_weather_map KARENS_ROOM, AUTOMATIC_SMOG
	nite_auto_weather_map KOGAS_ROOM, AUTOMATIC_SMOG
	nite_auto_weather_map FUCHSIA_GYM, AUTOMATIC_SMOG
	nite_auto_weather_map ECRUTEAK_GYM, AUTOMATIC_SMOG
	nite_auto_weather_map PEWTER_GYM, AUTOMATIC_SANDSTORM
	nite_auto_weather_map OLIVINE_GYM, AUTOMATIC_SANDSTORM
	nite_auto_weather_map BLACKTHORN_GYM_1F, AUTOMATIC_SANDSTORM
	nite_auto_weather_map BLACKTHORN_GYM_2F, AUTOMATIC_SANDSTORM
	nite_auto_weather_map SEAFOAM_GYM, AUTOMATIC_SUN
	nite_auto_weather_map CERULEAN_GYM, AUTOMATIC_RAIN
	nite_auto_weather_map VERMILION_GYM, AUTOMATIC_RAIN
	nite_auto_weather_map MAHOGANY_GYM, AUTOMATIC_HAIL
	nite_auto_weather_map ROUTE_40, AUTOMATIC_RAIN
	nite_auto_weather_map ROUTE_41, AUTOMATIC_RAIN
	nite_auto_weather_map ROUTE_44, AUTOMATIC_HAIL
	nite_auto_weather_map GOLDENROD_ARCHIVES, AUTOMATIC_SMOG
	nite_auto_weather_map SOUL_HOUSE, AUTOMATIC_SMOG
	nite_auto_weather_map ROCK_TUNNEL_1F, AUTOMATIC_SANDSTORM
	nite_auto_weather_map ROCK_TUNNEL_B1F, AUTOMATIC_SANDSTORM
	nite_auto_weather_map VICTORY_ROAD, AUTOMATIC_HAIL
	nite_auto_weather_map MOUNT_MORTAR_1F_OUTSIDE, AUTOMATIC_SANDSTORM
	nite_auto_weather_map MOUNT_MORTAR_1F_INSIDE, AUTOMATIC_SANDSTORM
	nite_auto_weather_map MOUNT_MORTAR_2F_INSIDE, AUTOMATIC_SANDSTORM
	nite_auto_weather_map MOUNT_MORTAR_B1F, AUTOMATIC_SANDSTORM
	nite_auto_weather_map SILVER_CAVE_ROOM_3, AUTOMATIC_SANDSTORM
	nite_auto_weather_map ROUTE_19, AUTOMATIC_HAIL
	nite_auto_weather_map ROUTE_20, AUTOMATIC_HAIL
	nite_auto_weather_map ROUTE_21, AUTOMATIC_HAIL
	db 0 ; end

AutomaticWeatherEffects:
; entries correspond to AUTOMATIC_* constants
MACRO auto_weather_effect
	db \1 ; battle weather
	dw \2 ; animation
	dw \3 ; text
ENDM
	auto_weather_effect WEATHER_SUN, SUNNY_DAY, SunGotBrightText
	auto_weather_effect WEATHER_RAIN, RAIN_DANCE, DownpourText
	auto_weather_effect WEATHER_SANDSTORM, ANIM_IN_SANDSTORM, SandstormBrewedText
	auto_weather_effect WEATHER_HAIL, ANIM_IN_HAIL, ItStartedToHailText
	auto_weather_effect WEATHER_SMOG, ANIM_IN_SMOG, ItStartedToSmogText