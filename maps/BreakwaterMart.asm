	object_const_def
	const BREAKWATERMART_CLERK
	const BREAKMART_TRAVELLER

BreakwaterMart_MapScripts:
	def_scene_scripts

	def_callbacks

BreakwaterMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_AZALEA
	closetext
	end

BreakMartTraveller:
	jumptextfaceplayer BreakMartTravellerText

BreakMartTravellerText:
	text "Supplies can be"
	line "hard to come by"
	cont "around here."

	para "Most of the goods"
	line "we sell have to"
	cont "be brought in by"
	cont "boat."

	para "Sometimes the"
	line "ships don't arrive"
	cont "for days."

	para "So if you see"
	line "something you"
	cont "need, don't wait"
	cont "too long to buy"
	cont "it!"
	done

BreakwaterMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BREAKWATER_ISLE, 3
	warp_event  3,  7, BREAKWATER_ISLE, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BreakwaterMartClerkScript, -1
	object_event  9,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BreakMartTraveller, -1
