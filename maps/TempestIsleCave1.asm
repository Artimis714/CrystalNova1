	object_const_def

TempestIsleCave1_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

TempestIsleCave1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, THUNDER_SEA, 1
	warp_event  3, 29, TEMPEST_ISLE, 1
	warp_event  7,  9, TEMPEST_ISLE, 2
	warp_event  2, 21, TEMPEST_ISLE_CAVE2, 3
	warp_event 11, 25, TEMPEST_ISLE_CAVE3, 4

	def_coord_events

	def_bg_events

	def_object_events
