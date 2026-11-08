	object_const_def
	const MOSSPOKECENTER_NURSE
	const MOSSPOKECENTER_FISHER
	const MOSSPOKECENTER_GRANNY

MossPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

MossPokeCenterNurseScript:
	jumpstd PokecenterNurseScript

MossPokecenterFisher:
	jumptextfaceplayer MossPokecenterFisherText

MossPokecenterGranny:
	jumptextfaceplayer MossPokecenterGrannyText

MossPokecenterFisherText:
	text "I heard a strange"
	line "rumor from someone"
	cont "in CITRINE."
	
	para "They say AGATHA,"
	line "one of the former"
	cont "ELITE FOUR, lives"
	cont "somewhere in the"
	cont "forest here!"

	para "Can you imagine?"
	line "I'd never have"
	cont "guessed someone"
	cont "like that would"
	cont "settle on a quiet"
	cont "island like this."
	done

MossPokecenterGrannyText:
	text "People do love"
	line "to gossip about"
	cont "this island."

	para "I've heard that"
	line "AGATHA rumor too."

	para "I've lived here"
	line "most of my life,"
	cont "and I can tell"
	cont "you this much..."

	para "The forest has"
	line "always had its"
	cont "share of secrets."
	done

MossPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 3, 7, MOSS_ISLE, 2
	warp_event 4, 7, MOSS_ISLE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MossPokeCenterNurseScript, -1
	object_event  8,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MossPokecenterFisher, -1
	object_event  7,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MossPokecenterGranny, -1
