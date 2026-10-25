	object_const_def

CinnabarVolcano2F_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

CinnabarVolcano2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 31, 15, CINNABAR_VOLCANO_1F, 2
	warp_event  9, 33, CINNABAR_VOLCANO_1F, 3
	warp_event 31, 31, CINNABAR_VOLCANO_1F, 4
	warp_event 33,  5, CINNABAR_VOLCANO_3F, 1
	warp_event  7,  7, CINNABAR_VOLCANO_3F, 2
	warp_event 21, 31, CINNABAR_VOLCANO_3F, 3
	warp_event 19, 17, CINNABAR_VOLCANO_3F, 5

	def_coord_events

	def_bg_events

	def_object_events
