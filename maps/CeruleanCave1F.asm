CeruleanCave1F_MapScripts:
	def_scene_scripts

	def_callbacks


CeruleanCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29, 25, CERULEAN_CITY, 7
	warp_event 33,  5, CERULEAN_CAVE_2F, 1
	warp_event 25,  7, CERULEAN_CAVE_2F, 2
	warp_event  7,  5, CERULEAN_CAVE_2F, 3
	warp_event  5,  7, CERULEAN_CAVE_2F, 4
	warp_event 21, 15, CERULEAN_CAVE_2F, 5
	warp_event 29, 13, CERULEAN_CAVE_2F, 6

	def_coord_events

	def_bg_events

	def_object_events
