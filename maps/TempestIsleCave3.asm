	object_const_def

TempestIsleCave3_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

TempestIsleCave3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 41, 41, TEMPEST_ISLE, 5
	warp_event 21, 41, TEMPEST_ISLE, 6
	warp_event  3, 41, TEMPEST_ISLE, 7
	warp_event 32, 27, TEMPEST_ISLE_CAVE1, 5
	warp_event 28, 37, TEMPEST_ISLE_CAVE2, 4
	warp_event 14, 37, TEMPEST_ISLE_CAVE2, 4
	warp_event 10, 31, TEMPEST_ISLE_CAVE2, 4
	warp_event  2, 31, TEMPEST_ISLE_CAVE2, 4
	warp_event 14, 21, TEMPEST_ISLE_CAVE2, 4
	warp_event 26,  5, TEMPEST_ISLE_CAVE2, 4
	warp_event 28,  3, TEMPEST_ISLE_CAVE2, 4
	warp_event 40,  9, TEMPEST_ISLE_CAVE2, 4

	def_coord_events

	def_bg_events

	def_object_events
