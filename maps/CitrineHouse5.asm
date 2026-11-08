	object_const_def
	const CH5_BEAUTY
	const CH5_ODDISH

CitrineHouse5_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineHouse5Beauty:
	jumptextfaceplayer CitrineHouse5BeautyText

CitrineHouse5Oddish:
	opentext
	writetext CitrineHouse5OddishText
	cry ODDISH
	setval ODDISH
	special ShowPokedexEntry
	waitbutton
	closetext
	end

CitrineHouse5BeautyText:
	text "I absolutely adore"
	line "the flower shop"
	cont "here in town!"

	para "The florist has"
	line "been collecting"
	cont "GOLD LEAVES and"
	cont "SILVER LEAVES"
	cont "for some special"
	cont "arrangement."

	para "Apparently they're"
	line "quite difficult"
	cont "to find!"

	para "I wonder what"
	line "kind of flowers"
	cont "could possibly"
	cont "need something"
	cont "so precious?"
	done

CitrineHouse5OddishText:
	text "ODDISH is happily"
	line "playing with the"
	cont "houseplants!"
	done

CitrineHouse5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CITRINE_CITY, 12
	warp_event  3,  7, CITRINE_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineHouse5Beauty, -1
	object_event  6, 5, SPRITE_ODDISH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CitrineHouse5Oddish, -1
