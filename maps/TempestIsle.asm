	object_const_def

TempestIsle_MapScripts:
	def_scene_scripts

	def_callbacks

TempestIsle_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 42, 37, TEMPEST_ISLE_CAVE1, 2
	warp_event 40, 27, TEMPEST_ISLE_CAVE1, 3
	warp_event 30, 31, TEMPEST_ISLE_CAVE2, 1
	warp_event 38, 11, TEMPEST_ISLE_CAVE2, 2
	warp_event 26, 21, TEMPEST_ISLE_CAVE3, 1
	warp_event 16, 23, TEMPEST_ISLE_CAVE3, 2
	warp_event  8,  5, TEMPEST_ISLE_CAVE3, 3
	warp_event 44, 15, TEMPEST_ISLE_CAVE4, 1
	warp_event 36, 17, TEMPEST_ISLE_CAVE4, 2

	def_coord_events

	def_bg_events

	def_object_events