	object_const_def

BreakwaterLighthouseF2_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

BreakwaterLighthouseF2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 11, BREAKWATER_LIGHTHOUSEF1, 3
	warp_event  5,  5, BREAKWATER_LIGHTHOUSEF1, 4
	warp_event 11,  9, BREAKWATER_LIGHTHOUSEF1, 5
	warp_event  3, 13, BREAKWATER_LIGHTHOUSEF3, 1
	warp_event  7,  3, BREAKWATER_LIGHTHOUSEF3, 2
	warp_event  9, 11, BREAKWATER_LIGHTHOUSEF3, 3

	def_coord_events

	def_bg_events

	def_object_events
