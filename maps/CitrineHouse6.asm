	object_const_def
	const CH6_SCIENTIST
	const CH6_GRANNY

CitrineHouse6_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineHouse6Scientist:
	jumptextfaceplayer CitrineHouse6ScientistText

CitrineHouse6Granny:
	jumptextfaceplayer CitrineHouse6GrannyText

CitrineHouse6ScientistText:
	text "I work as a"
	line "GENETICIST at the"
	cont "research facility"
	cont "here in CITRINE."

	para "Most people don't"
	line "even know what"
	cont "goes on inside."

	para "The old FOSSIL"
	line "RESURRECTION LAB"
	cont "was quite famous"
	cont "in its day."

	para "But things have"
	line "changed since then."

	para "These days, the"
	line "work we do is..."
	cont "rather different."

	para "I'm afraid that's"
	line "all I'm allowed"
	cont "to say."
	done

CitrineHouse6GrannyText:
	text "Three years ago,"
	line "I lost a dear"
	cont "friend in the"
	cont "CINNABAR eruption."

	para "We'd known each"
	line "other for most"
	cont "of our lives."

	para "My friend had"
	line "always wanted to"
	cont "visit the SEVII."

	para "I still remember"
	line "thinking how lucky"
	cont "I was to be away"
	cont "from the island"
	cont "when it happened."

	para "I sometimes wonder"
	line "why I was spared"
	cont "when so many"
	cont "others weren't."
	done

CitrineHouse6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CITRINE_CITY, 13
	warp_event  3,  7, CITRINE_CITY, 13

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CitrineHouse6Scientist, -1
	object_event  5, 4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineHouse6Granny, -1
