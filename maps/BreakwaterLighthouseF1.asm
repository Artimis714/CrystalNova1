	object_const_def

BreakwaterLighthouseF1_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

BreakwaterLighthouseF1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, BREAKWATER_ISLE, 6
	warp_event  9, 17, BREAKWATER_ISLE, 6
	warp_event 17, 11, BREAKWATER_LIGHTHOUSEF2, 1
	warp_event  5,  5, BREAKWATER_LIGHTHOUSEF2, 2
	warp_event 11,  9, BREAKWATER_LIGHTHOUSEF2, 3
	warp_event  9, 11, BREAKWATER_LIGHTHOUSEB1, 1

	def_coord_events

	def_bg_events

	def_object_events
