	object_const_def

ViridianCityGate_MapScripts:
	def_scene_scripts

	def_callbacks


ViridianCityGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  4, ROUTE_2, 6
	warp_event  9,  5, ROUTE_2, 7
	warp_event  0,  4, VIRIDIAN_FOREST, 1
	warp_event  0,  5, VIRIDIAN_FOREST, 2

	def_coord_events

	def_bg_events

	def_object_events
