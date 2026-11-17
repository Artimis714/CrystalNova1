	object_const_def


SeafoamGym_MapScripts:
	def_scene_scripts
	scene_script SeafoamGymNoopScene ; unusable

	def_callbacks

SeafoamGymNoopScene:
	end



SeafoamGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, ROUTE_20, 1
	warp_event  5,  3, SEAFOAM_CAVE_B1, 11

	def_coord_events

	def_bg_events

	def_object_events