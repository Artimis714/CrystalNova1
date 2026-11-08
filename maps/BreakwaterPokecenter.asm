	object_const_def
	const BREAKWATERPOKECENTER_NURSE

BreakwaterPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

BreakwaterPokeCenterNurseScript:
	jumpstd PokecenterNurseScript

BreakwaterPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, BREAKWATER_ISLE, 2
	warp_event  4,  7, BREAKWATER_ISLE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BreakwaterPokeCenterNurseScript, -1
