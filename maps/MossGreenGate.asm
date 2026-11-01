	object_const_def

MossGreenGate_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

MossGreenGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, MOSS_ISLE, 4
	warp_event  5,  0, MOSS_ISLE, 5
	warp_event  4,  7, GREEN_SEA, 3
	warp_event  5,  7, GREEN_SEA, 3

	def_coord_events

	def_bg_events

	def_object_events
