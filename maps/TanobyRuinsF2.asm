	object_const_def

TanobyRuinsF2_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

TanobyRuinsF2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  8, TANOBY_RUINS_1F, 2
	warp_event  4,  0, TANOBY_RUINS_ITEM_ROOM, 1

	def_coord_events

	def_bg_events

	def_object_events
