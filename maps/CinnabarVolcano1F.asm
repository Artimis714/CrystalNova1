	object_const_def
	const VOLCANO1_ROCK1

CinnabarVolcano1F_MapScripts:
	def_scene_scripts

	def_callbacks

VolcanoHiddenRock:
	jumpstd SmashRockScript

CinnabarVolcano1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, CINNABAR_ISLAND, 2
	warp_event 21,  9, CINNABAR_VOLCANO_2F, 1
	warp_event 17, 33, CINNABAR_VOLCANO_2F, 2
	warp_event 29, 21, CINNABAR_VOLCANO_2F, 3
	warp_event  3,  3, MANSION_RUINS_1, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoHiddenRock, EVENT_CLEAR_VOLCANO_SMASH
