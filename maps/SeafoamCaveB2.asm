SeafoamCaveB2_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

SeafoamCaveB2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 17, SEAFOAM_CAVE_B1, 1
	warp_event 35, 21, SEAFOAM_CAVE_B1, 2
	warp_event 24,  3, SEAFOAM_CAVE_B1, 3
	warp_event 31,  4, SEAFOAM_CAVE_B1, 4
	warp_event 20, 12, SEAFOAM_CAVE_B1, 5
	warp_event 18, 12, SEAFOAM_CAVE_B1, 6
	warp_event 16,  6, SEAFOAM_CAVE_B1, 7
	warp_event 13, 12, SEAFOAM_CAVE_B1, 8
	warp_event 24,  6, SEAFOAM_CAVE_B1, 9
	warp_event 10,  4, SEAFOAM_CAVE_B1, 10
	warp_event 18, 25, SEAFOAM_CAVE_B3, 1
	warp_event 19, 25, SEAFOAM_CAVE_B3, 2
	warp_event 27, 11, SEAFOAM_CAVE_B3, 3

	def_coord_events

	def_bg_events

	def_object_events
