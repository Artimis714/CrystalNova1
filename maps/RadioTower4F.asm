	object_const_def
	const RADIOTOWER4F_FISHER
	const RADIOTOWER4F_TEACHER
	const RADIOTOWER4F_GROWLITHE
	const RADIOTOWER4F_ROCKET1
	const RADIOTOWER4F_ROCKET2
	const RADIOTOWER4F_ROCKET_GIRL
	const RADIOTOWER4F_SCIENTIST

RadioTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

RadioTower4FFisherScript:
	jumptextfaceplayer RadioTower4FFisherText

RadioTower4FDJMaryScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_PINK_BOW_FROM_MARY
	iftrue .GotPinkBow
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRockets
	writetext RadioTower4FDJMaryText
	waitbutton
	closetext
	end

.ClearedRockets:
	writetext RadioTower4FDJMaryText_ClearedRockets
	promptbutton
	verbosegiveitem PINK_BOW
	iffalse .NoRoom
	writetext RadioTower4FDJMaryText_GivePinkBow
	waitbutton
	closetext
	setevent EVENT_GOT_PINK_BOW_FROM_MARY
	end

.GotPinkBow:
	writetext RadioTower4FDJMaryText_After
	waitbutton
.NoRoom:
	closetext
	end

RadioTowerMeowth:
	opentext
	writetext RadioTowerMeowthText
	cry MEOWTH
	setval MEOWTH
	special ShowPokedexEntry
	waitbutton
	closetext
	end

TrainerGruntM10:
	trainer GRUNTM, GRUNTM_10, EVENT_BEAT_ROCKET_GRUNTM_10, GruntM10SeenText, GruntM10BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM10AfterBattleText
	waitbutton
	closetext
	end

TrainerExecutivem2:
	trainer EXECUTIVEM, EXECUTIVEM_2, EVENT_BEAT_ROCKET_EXECUTIVEM_2, Executivem2SeenText, Executivem2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Executivem2AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntF4:
	trainer GRUNTF, GRUNTF_4, EVENT_BEAT_ROCKET_GRUNTF_4, GruntF4SeenText, GruntF4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF4AfterBattleText
	waitbutton
	closetext
	end

TrainerScientistRich:
	trainer SCIENTIST, RICH, EVENT_BEAT_SCIENTIST_RICH, ScientistRichSeenText, ScientistRichBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistRichAfterBattleText
	waitbutton
	closetext
	end

RadioTower4FProductionSign:
	jumptext RadioTower4FProductionSignText

RadioTower4FStudio2Sign:
	jumptext RadioTower4FStudio2SignText

RadioTower4FFisherText:
	text "I listened to the"
	line "radio while I was"
	cont "at the RUINS."

	para "I heard a strange"
	line "broadcast there."
	done

RadioTower4FDJMaryText:
	text "MARY: Why? Why do"
	line "I have to suffer"
	cont "through this?"

	para "MEOWTH, help me!"
	done

RadioTower4FDJMaryText_ClearedRockets:
	text "MARY: Oh! You're"
	line "my little savior!"

	para "After that dread-"
	line "ful business with"

	para "those awful rebels"
	line "I'm so glad you put"

	para "them in their"
	line "place!"

	para "Will you take this"
	line "as my thanks?"
	done

RadioTower4FDJMaryText_GivePinkBow:
	text "MARY: It's just"
	line "right for #MON"

	para "that know normal-"
	line "type moves."
	done

RadioTower4FDJMaryText_After:
	text "MARY: Please tune"
	line "into me on PROF."

	para "OAK'S #MON TALK"
	line "show."
	done

RadioTowerMeowthText:
	text "MEOWTH: Meowth…"
	done

GruntM10SeenText:
	text "You plan to rescue"
	line "the DIRECTOR?"

	para "That won't be pos-"
	line "sible because I'm"
	cont "going to beat you!"
	done

GruntM10BeatenText:
	text "No! Unbelievable!"
	done

GruntM10AfterBattleText:
	text "Your eyes..."
	line "When you battle,"

	para "it reminds me of"
	line "the way RED"
	cont "looked."

	para "Twice a kid has"
	line "come to haunt my"
	cont "nightmares!"
	done

Executivem2SeenText:
	text "Stop! I'm known as"
	line "the TEAM ROCKET"
	cont "fortress!"

	para "You're not taking"
	line "another step!"
	done

Executivem2BeatenText:
	text "The fortress came"
	line "down!"
	done

Executivem2AfterBattleText:
	text "You've earned my"
	line "respect, so here's"
	cont "some advice."

	para "It's not too late."
	line "You can still turn"
	cont "back."

	para "You're from JOHTO"
	line "We're trying to"
	cont "save your home."

	para "..."

	para "The signal may be"
	line "wrong, but it's"
	cont "the only way."
	done

GruntF4SeenText:
	text "Listen brat,"
	line "you've caused"
	cont "enough trouble."

	para "Go home, before I"
	line "send you crying"
	cont "to mommy!"
	done

GruntF4BeatenText:
	text "Mommy!!!"
	done

GruntF4AfterBattleText:
	text "You're wasting"
	line "our time."
	done

ScientistRichSeenText:
	text "Most excellent."

	para "This RADIO TOWER"
	line "will fulfill our"
	cont "grand design."
	done

ScientistRichBeatenText:
	text "Hmmm…"

	para "All grand plans"
	line "come with snags."
	done

ScientistRichAfterBattleText:
	text "Do you honestly"
	line "believe you can"
	cont "stop TEAM ROCKET?"

	para "You're too late"
	line "child. The trans-"
	cont "mission has al-"
	cont "ready started!"
	done

RadioTower4FProductionSignText:
	text "4F PRODUCTION"
	done

RadioTower4FStudio2SignText:
	text "4F STUDIO 2"
	done

RadioTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_5F, 1
	warp_event  9,  0, RADIO_TOWER_3F, 2
	warp_event 12,  0, RADIO_TOWER_5F, 2
	warp_event 17,  0, RADIO_TOWER_3F, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_READ, RadioTower4FProductionSign
	bg_event 15,  0, BGEVENT_READ, RadioTower4FStudio2Sign

	def_object_events
	object_event  6,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower4FFisherScript, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	object_event 14,  6, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower4FDJMaryScript, -1
	object_event 12,  7, SPRITE_MEOWTH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RadioTowerMeowth, -1
	object_event  5,  6, SPRITE_ROCKET, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM10, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 14,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerExecutivem2, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 12,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGruntF4, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerScientistRich, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
