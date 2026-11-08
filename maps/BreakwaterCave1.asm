	object_const_def

BreakwaterCave1_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

BreakwaterCave1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 25, SOUTHERN_SEA, 1
	warp_event  3, 25, BREAKWATER_ISLE, 1

	def_coord_events

	def_bg_events

	def_object_events
