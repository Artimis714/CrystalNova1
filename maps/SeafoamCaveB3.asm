SeafoamCaveB3_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

SeafoamCaveB3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 26, SEAFOAM_CAVE_B2, 11
	warp_event 16, 26, SEAFOAM_CAVE_B2, 12
	warp_event 19,  7, SEAFOAM_CAVE_B2, 13

	def_coord_events

	def_bg_events

	def_object_events
