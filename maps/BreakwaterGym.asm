	object_const_def

BreakwaterGym_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

BreakwaterGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 15, BREAKWATER_ISLE, 7
	warp_event  7, 15, BREAKWATER_ISLE, 7

	def_coord_events

	def_bg_events

	def_object_events
