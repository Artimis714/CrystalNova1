	object_const_def
	const CH3_CLERK
	const CH3_POKEFAN

CitrineHouse3_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineHouse3Clerk:
	jumptextfaceplayer CitrineHouse3ClerkText

CitrineHouse3Pokefan:
	jumptextfaceplayer CitrineHouse3PokefanText

CitrineHouse3ClerkText:
	text "I work at the"
	line "REGIONAL OFFICE."

	para "You wouldn't"
	line "believe how many"
	cont "forms people have"
	cont "to fill out just"
	cont "to get something"
	cont "approved!"

	para "Sometimes I think"
	line "we spend more time"
	cont "sending documents"
	cont "back and forth"
	cont "than actually"
	cont "getting things"
	cont "done."

	para "Still, it's good"
	line "to see our region"
	cont "running its own"
	cont "affairs."
	done

CitrineHouse3PokefanText:
	text "When we first"
	line "moved here, I"
	cont "thought living in"
	cont "the capital would"
	cont "be exciting."

	para "There are always"
	line "visitors, officials"
	cont "and important"
	cont "people passing"
	cont "through town."

	para "But honestly?"

	para "I'd rather have"
	line "a quiet afternoon"
	cont "with my #MON."

	para "At least they"
	line "don't make me"
	cont "fill out forms!"
	done

CitrineHouse3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CITRINE_CITY, 10
	warp_event  3,  7, CITRINE_CITY, 10

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CitrineHouse3Clerk, -1
	object_event  5, 4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineHouse3Pokefan, -1
