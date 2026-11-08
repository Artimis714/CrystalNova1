	object_const_def
	const MOSSISLE_FISHER
	const MOSSISLE_LASS
	const MOSSISLE_SAGE

MossIsle_MapScripts:
	def_scene_scripts

	def_callbacks

MossIsleFisher:
	jumptextfaceplayer MossIsleFisherText

MossIsleLass:
	jumptextfaceplayer MossIsleLassText

MossIsleSage:
	jumptextfaceplayer MossIsleSageText

MossPokeCenterSign:
	jumpstd PokecenterSignScript

MossCaveSign:
	jumptext MossCaveSignText

MossIsleFisherText:
	text "The waters around"
	line "MOSS ISLE are"
	cont "usually pretty"
	cont "quiet."

	para "I prefer fishing"
	line "here to going all"
	cont "the way to CITRINE."

	para "Besides, the"
	line "forest gives us"
	cont "plenty of shade"
	cont "when the sun gets"
	cont "too hot!"
	done

MossIsleLassText:
	text "I love walking"
	line "through the forest."

	para "There's something"
	line "about the trees"
	cont "here that makes"
	cont "everything feel"
	cont "so peaceful."

	para "I wish visitors"
	line "would remember"
	cont "that it's a special"
	cont "place to us."
	done

MossIsleSageText:
	text "This island has"
	line "been our home for"
	cont "generations."

	para "People come and"
	line "go, but the forest"
	cont "remains."

	para "Some things are"
	line "worth protecting,"
	cont "even when nobody"
	cont "else understands"
	cont "their importance."
	done

MossCaveSignText:
	text "MOSS CAVE"
	done

MossIsle_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  5, ROUTE_19_FUCHSIA_GATE, 3
	warp_event  7, 17, MOSS_POKECENTER, 1
	warp_event 24, 15, MOSS_CAVE, 1
	warp_event 14, 23, MOSS_GREEN_GATE, 1
	warp_event 15, 23, MOSS_GREEN_GATE, 2
	warp_event 25, 18, MOSS_WHISPER_GATE, 1
	warp_event 25, 19, MOSS_WHISPER_GATE, 2
	warp_event  9,  7, MOSS_HOUSE_1, 1
	warp_event  5,  5, MOSS_HOUSE_2, 1

	def_coord_events

	def_bg_events
	bg_event  8, 17, BGEVENT_READ, MossPokeCenterSign
	bg_event 22, 16, BGEVENT_READ, MossCaveSign

	def_object_events
	object_event 24, 20, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MossIsleFisher, -1
	object_event  7, 10, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MossIsleLass, -1
	object_event 11, 17, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MossIsleSage, -1
