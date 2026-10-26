	object_const_def

TempestIsleCave2_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

TempestIsleCave2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 47, TEMPEST_ISLE, 3
	warp_event 25,  5, TEMPEST_ISLE, 4
	warp_event 12, 37, TEMPEST_ISLE_CAVE1, 4
	warp_event 14, 12, TEMPEST_ISLE_CAVE3, 5
	warp_event 26,  3, TEMPEST_ISLE_CAVE4, 8

	def_coord_events

	def_bg_events

	def_object_events
