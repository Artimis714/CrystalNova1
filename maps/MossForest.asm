	object_const_def

MossForest_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

MossForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 33, ROUTE_19_FUCHSIA_GATE, 1
	warp_event  5, 19, AGATHA_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
