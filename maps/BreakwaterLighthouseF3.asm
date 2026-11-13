	object_const_def

BreakwaterLighthouseF3_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

BreakwaterLighthouseF3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 13, BREAKWATER_LIGHTHOUSEF2, 4
	warp_event  7,  3, BREAKWATER_LIGHTHOUSEF2, 5
	warp_event  9, 11, BREAKWATER_LIGHTHOUSEF2, 6
	warp_event 13,  3, BREAKWATER_LIGHTHOUSEF4, 1
	warp_event  3,  5, BREAKWATER_LIGHTHOUSEF4, 2
	warp_event 11,  9, BREAKWATER_LIGHTHOUSEF4, 3

	def_coord_events

	def_bg_events

	def_object_events
