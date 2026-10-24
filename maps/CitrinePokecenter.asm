	object_const_def
	const CITRINEPOKECENTER_NURSE

CitrinePokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

CitrinePokeCenterNurseScript:
	jumpstd PokecenterNurseScript

CitrinePokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CITRINE_CITY, 1
	warp_event  4,  7, CITRINE_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CitrinePokeCenterNurseScript, -1