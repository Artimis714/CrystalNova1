	object_const_def

SeafoamCaveB1_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

SeafoamCaveB1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 17, SEAFOAM_CAVE_B2, 1
	warp_event 35, 21, SEAFOAM_CAVE_B2, 2
	warp_event 27,  4, SEAFOAM_CAVE_B2, 3
	warp_event 35,  6, SEAFOAM_CAVE_B2, 4
	warp_event 28,  9, SEAFOAM_CAVE_B2, 5
	warp_event 25, 10, SEAFOAM_CAVE_B2, 6
	warp_event 20, 14, SEAFOAM_CAVE_B2, 7
	warp_event 15, 21, SEAFOAM_CAVE_B2, 8
	warp_event 27, 21, SEAFOAM_CAVE_B2, 9
	warp_event  7,  8, SEAFOAM_CAVE_B2, 10
	warp_event 19, 21, SEAFOAM_GYM, 2

	def_coord_events

	def_bg_events

	def_object_events
