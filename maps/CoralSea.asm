	object_const_def

CoralSea_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

CoralSea_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 38, CORAL_CITRINE_GATE, 1
	warp_event 13, 39, CORAL_CITRINE_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
