	object_const_def
	const MH1_BAILEY
	const MH1_MURKROW

MossIsleHouse1_MapScripts:
	def_scene_scripts

	def_callbacks

MossHouse1Bailey:
	faceplayer
	opentext
	writetext MossHouse1BaileyText
	waitbutton
	closetext
	end

MossHouse1Murkrow:
	opentext
	writetext MossHouse1MurkrowText
	cry MURKROW
	setval MURKROW
	special ShowPokedexEntry
	waitbutton
	closetext
	end

MossHouse1BaileyText:
	text "Oh, hello!"

	para "You're from JOHTO,"
	line "aren't you?"

	para "Do you know"
	line "OLIVINE CITY?"

	para "My sister went"
	line "there to continue"
	cont "our mother's"
	cont "research."

	para "Mum went missing"
	line "a long time ago."

	para "My sister hopes"
	line "that continuing"
	cont "her work in JOHTO"
	cont "might uncover"
	cont "something."

	para "I've decided I"
	line "should go and"
	cont "see her."

	para "I've already paid"
	line "for a ticket to"
	cont "VERMILION CITY."

	para "From there, I'll"
	line "catch the ferry"
	cont "to OLIVINE."

	para "I just hope my"
	line "sister has some"
	cont "answers for me."
	done

MossHouse1MurkrowText:
	text "MURKROW is"
	line "watching you"
	cont "curiously."
	done

MossIsleHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MOSS_ISLE, 8
	warp_event  3,  7, MOSS_ISLE, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MossHouse1Bailey, -1
	object_event  6, 5, SPRITE_MURKROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MossHouse1Murkrow, -1
