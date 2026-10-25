	object_const_def

CinnabarVolcano1F_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

CinnabarVolcano1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, CINNABAR_ISLAND, 2
	warp_event 21,  9, CINNABAR_VOLCANO_2F, 1
	warp_event 17, 33, CINNABAR_VOLCANO_2F, 2
	warp_event 29, 21, CINNABAR_VOLCANO_2F, 3

	def_coord_events

	def_bg_events

	def_object_events
