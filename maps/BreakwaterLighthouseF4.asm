	object_const_def

BreakwaterLighthouseF4_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

BreakwaterLighthouseF4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  3, BREAKWATER_LIGHTHOUSEF3, 4
	warp_event  3,  5, BREAKWATER_LIGHTHOUSEF3, 5
	warp_event 11,  9, BREAKWATER_LIGHTHOUSEF3, 6
	warp_event 13, 17, BREAKWATER_LIGHTHOUSE_OBV, 1

	def_coord_events

	def_bg_events

	def_object_events
