	object_const_def
	const BREAKWATERMART_CLERK

BreakwaterMart_MapScripts:
	def_scene_scripts

	def_callbacks

BreakwaterMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_AZALEA
	closetext
	end

BreakwaterMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BREAKWATER_ISLE, 3
	warp_event  3,  7, BREAKWATER_ISLE, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BreakwaterMartClerkScript, -1
