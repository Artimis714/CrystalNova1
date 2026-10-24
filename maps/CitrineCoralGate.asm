	object_const_def

CitrineCoralGate_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

CitrineCoralGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, CORAL_SEA, 1
	warp_event  0,  5, CORAL_SEA, 2
	warp_event  9,  4, CITRINE_CITY, 2
	warp_event  9,  5, CITRINE_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
