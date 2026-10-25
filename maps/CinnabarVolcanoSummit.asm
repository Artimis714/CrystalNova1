	object_const_def

CinnabarVolcanoSummit_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

CinnabarVolcanoSummit_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 29, CINNABAR_VOLCANO_3F, 4

	def_coord_events

	def_bg_events

	def_object_events
