	object_const_def

TempestIsleCave4_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

TempestIsleCave4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27, 27, TEMPEST_ISLE, 8
	warp_event  3, 27, TEMPEST_ISLE, 9
	warp_event 26, 15, TEMPEST_ISLE_CAVE2, 4
	warp_event 26,  9, TEMPEST_ISLE_CAVE2, 4
	warp_event 26,  3, TEMPEST_ISLE_CAVE2, 4
	warp_event  6,  9, TEMPEST_ISLE_CAVE2, 4
	warp_event  2, 21, TEMPEST_ISLE_CAVE2, 4
	warp_event  3, 19, TEMPEST_ISLE_CAVE2, 5

	def_coord_events

	def_bg_events

	def_object_events
