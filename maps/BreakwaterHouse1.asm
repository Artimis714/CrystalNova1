	object_const_def

BreakwaterHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

BreakwaterHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BREAKWATER_ISLE, 4
	warp_event  3,  7, BREAKWATER_ISLE, 4

	def_coord_events

	def_bg_events

	def_object_events
