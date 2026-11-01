	object_const_def
	const MOSSPOKECENTER_NURSE

MossPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

MossPokeCenterNurseScript:
	jumpstd PokecenterNurseScript

MossPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3, 7, MOSS_ISLE, 2
	warp_event 4, 7, MOSS_ISLE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MossPokeCenterNurseScript, -1