	object_const_def
	const MH2_YOUNGSTER
	const MH2_GRANNY

MossIsleHouse2_MapScripts:
	def_scene_scripts

	def_callbacks

MossHouse2Youngster:
	jumptextfaceplayer MossHouse2YoungsterText

MossHouse2Granny:
	jumptextfaceplayer MossHouse2GrannyText

MossHouse2YoungsterText:
	text "I want to travel"
	line "the world someday."

	para "I've never even"
	line "been to CITRINE"
	cont "CITY, even though"
	cont "it's practically"
	cont "next door!"

	para "People say there's"
	line "so much to see"
	cont "out there."

	para "I'd love to visit"
	line "JOHTO, KANTO..."

	para "Maybe even further"
	line "than that!"

	para "I just wish I"
	line "could leave this"
	cont "island for once."
	done

MossHouse2GrannyText:
	text "My grandchild"
	line "wants to see"
	cont "the world."

	para "I can't say I"
	line "blame them."

	para "But I've lived"
	line "on MOSS ISLE my"
	cont "whole life."

	para "The forest has"
	line "always been here."

	para "There's something"
	line "special about"
	cont "living somewhere"
	cont "that doesn't"
	cont "change very much."

	para "I hope they'll"
	line "come to appreciate"
	cont "that someday."
	done

MossIsleHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MOSS_ISLE, 8
	warp_event  3,  7, MOSS_ISLE, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MossHouse2Youngster, -1
	object_event  5, 4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MossHouse2Granny, -1
