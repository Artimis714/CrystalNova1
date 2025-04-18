	object_const_def
	const ICEPATHB2FMAHOGANYSIDE_BOULDER1
	const ICEPATHB2FMAHOGANYSIDE_BOULDER2
	const ICEPATHB2FMAHOGANYSIDE_BOULDER3
	const ICEPATHB2FMAHOGANYSIDE_BOULDER4
	const ICEPATHB2FMAHOGANYSIDE_POKE_BALL1
	const ICEPATHB2FMAHOGANYSIDE_POKE_BALL2
	const ICEPATHB2FMAHOGANYSIDE_SKIER_HANNI

IcePathB2FMahoganySide_MapScripts:
	def_scene_scripts

	def_callbacks

IcePathB2FMahoganySideBoulder:
	jumptext IcePathB2FMahoganySideBoulderText

IcePathB2FMahoganySideFullHeal:
	itemball FULL_HEAL

IcePathB2FMahoganySideMaxPotion:
	itemball MAX_POTION

IcePathB2FMahoganySideHiddenCarbos:
	hiddenitem CARBOS, EVENT_ICE_PATH_B2F_MAHOGANY_SIDE_HIDDEN_CARBOS

SkierHanni:
	trainer SKIER, HANNI, EVENT_BEAT_SKIER_HANNI, SkierHanniSeenText, SkierHanniBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierHanniAfterBattleText
	waitbutton
	closetext
	end

SkierHanniSeenText:
	text "I heard a rumor"
	line "that during the"

	para "war, the KANTO"
	line "soldiers threw"

	para "JOHTO rebels in"
	line "here naked."
	done

SkierHanniBeatenText:
	text "Too Strong!"
	done

SkierHanniAfterBattleText:
	text "..."
	line "..."

	para "Yeah, most didn't"
	line "survive for very"
	cont "long."

	para "This place should"
	line "be haunted, but"

	para "I think it has a"
	line "nice energy."
	done

IcePathB2FMahoganySideBoulderText:
	text "It's immovably"
	line "imbedded in ice."
	done

IcePathB2FMahoganySide_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  1, ICE_PATH_B1F, 2
	warp_event  9, 11, ICE_PATH_B3F, 1
	warp_event 11,  4, ICE_PATH_B1F, 3
	warp_event  4,  6, ICE_PATH_B1F, 4
	warp_event  4, 12, ICE_PATH_B1F, 5
	warp_event 12, 12, ICE_PATH_B1F, 6

	def_coord_events

	def_bg_events
	bg_event  0, 17, BGEVENT_ITEM, IcePathB2FMahoganySideHiddenCarbos

	def_object_events
	object_event 11,  3, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, IcePathB2FMahoganySideBoulder, EVENT_BOULDER_IN_ICE_PATH_1A
	object_event  4,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, IcePathB2FMahoganySideBoulder, EVENT_BOULDER_IN_ICE_PATH_2A
	object_event  3, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, IcePathB2FMahoganySideBoulder, EVENT_BOULDER_IN_ICE_PATH_3A
	object_event 12, 13, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, IcePathB2FMahoganySideBoulder, EVENT_BOULDER_IN_ICE_PATH_4A
	object_event  8,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePathB2FMahoganySideFullHeal, EVENT_ICE_PATH_B2F_MAHOGANY_SIDE_FULL_HEAL
	object_event  0,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePathB2FMahoganySideMaxPotion, EVENT_ICE_PATH_B2F_MAHOGANY_SIDE_MAX_POTION
	object_event  9,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 3, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 1, SkierHanni, -1
