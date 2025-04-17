	object_const_def
	const GOLDENRODARCHIVESB1F_BOULDER
	const GOLDENRODARCHIVESB1F_VIRGIL
	const GOLDENRODARCHIVESB1F_POKE_BALL1
	const GOLDENRODARCHIVESB1F_POKE_BALL2

GoldenrodArchivesB1F_MapScripts:
	def_scene_scripts

	def_callbacks


TrainerGenglemanVirgilGhost:
	opentext
	checkevent EVENT_BEAT_GENTLEMAN_VIRGIL
	iftrue .Defeated
	writetext GenglemanVirgilGhostGhostSeenText
	waitbutton
	closetext
	winlosstext GenglemanVirgilGhostGhostBeatenText, 0
	loadtrainer GENTLEMAN, VIRGIL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GENTLEMAN_VIRGIL
	opentext
	writetext GentlemanVirgilBraverytext
	promptbutton
	verbosegiveitem CLEAR_BELL
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS
	setevent EVENT_GOT_CLEAR_BELL
	clearevent EVENT_BURNEDTOWER_GHOST1
	clearevent EVENT_BURNEDTOWER_GHOST2
	writetext GentlemanVirgilClearBelltext
	waitbutton
	closetext
	end

.Defeated:
	writetext GenglemanVirgilGhostGhostAfterBattleText
	waitbutton
	closetext
	end

GoldenrodArchivesB1FHPUp:
	itemball HP_UP

GoldenrodArchivesB1FTMEndure:
	itemball ANCIENTRELIC

GoldenrodArchivesB1FBoulder:
	jumpstd StrengthBoulderScript

GoldenrodArchivesB1FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ARCHIVESB1F_HIDDEN_ITEM1

GoldenrodArchivesB1FHiddenBurnHeal:
	hiddenitem BURN_HEAL, EVENT_ARCHIVESB1F_HIDDEN_ITEM2

GoldenrodArchivesB1FHiddenNugget:
	hiddenitem BIG_NUGGET, EVENT_ARCHIVESB1F_HIDDEN_ITEM3

GenglemanVirgilGhostGhostSeenText:
	text "I will defend the"
	line "ARCHIVES until my"
	cont "last breath!"
	done

GenglemanVirgilGhostGhostBeatenText:
	text "They may have"
	line "killed us, but"

	para "still they have"
	line "failed."
	done

GenglemanVirgilGhostGhostAfterBattleText:
	text "I still have a"
	line "family out in."
	cont "CIANWOOD."

	para "My wife and daugh-"
	line "ters. Were kept"

	para "away from most of"
	line "the horrors."

	para "May the FOREST"
	line "PROTECTOR watch"

	para "Over them, and may"
	line "they forget about"
	cont "me."

	para "My hands are just"
	line "as red as any"
	cont "KANTO general's."

	para "If you ever meet"
	line "them, all I ask"

	para "is that you tell"
	line "them that I was"

	para "thinking of them"
	line "when the end came."
	done

GentlemanVirgilBraverytext:
	text "You... are brave."
	line "But more than"
	cont "brave. You are.."

	para "kind. You have"
	line "shown our restless"
	cont "souls kindness."

	para "and for this, we"
	line "thank you."

	para "Three years ago."
	line "I fought at GOLD-"
	cont "ENROD's last stand"

	para "They destroyed our"
	line "ARCHIVES, and tho-"
	cont "usands of years of"
	cont "our history."

	para "They were looking"
	line "for something."

	para "They were looking"
	line "for a treasure,"

	para "which I now best-"
	line "ow upon you."
	done

GentlemanVirgilClearBelltext:
	text "This is the CLEAR"
	line "BELL, and it's the"

	para "key to unlock many"
	line "of JOHTO's secrets."

	para "Begin with the TIN"
	line "TOWER."

	para "You have proven"
	line "yourself worthy of"
	cont "the bell's trials."

	para "I wish you luck."
	done


GoldenrodArchivesB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, GOLDENROD_ARCHIVES1F, 3
	warp_event 17,  7, GOLDENROD_ARCHIVES1F, 7
	warp_event 10,  8, GOLDENROD_ARCHIVES1F, 9
	warp_event  3, 13, GOLDENROD_ARCHIVES1F, 10
	warp_event 17, 14, GOLDENROD_ARCHIVES1F, 12
	warp_event  7, 15, GOLDENROD_ARCHIVES1F, 14

	def_coord_events

	def_bg_events
	bg_event  2, 13, BGEVENT_ITEM, GoldenrodArchivesB1FHiddenUltraBall
	bg_event 17, 14, BGEVENT_ITEM, GoldenrodArchivesB1FHiddenBurnHeal
	bg_event  8,  3, BGEVENT_ITEM, GoldenrodArchivesB1FHiddenNugget

	def_object_events
	object_event 17,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchivesB1FBoulder, -1
	object_event  8,  4, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerGenglemanVirgilGhost, EVENT_GOT_OLD_AMBER_CIANWOOD
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodArchivesB1FHPUp, EVENT_ARCHIVESB1F_ITEM1
	object_event 15,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodArchivesB1FTMEndure, EVENT_ARCHIVESB1F_ITEM1
