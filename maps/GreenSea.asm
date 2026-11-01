	object_const_def

GreenSea_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

GreenSea_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 14, CITRINE_GREEN_GATE, 3
	warp_event  6, 15, CITRINE_GREEN_GATE, 4
	warp_event 47,  5, MOSS_GREEN_GATE, 3

	def_coord_events

	def_bg_events

	def_object_events
