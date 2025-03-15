	object_const_def
	const SILVERCAVEROOM3_RED
	const SILVERCAVEROOM3_AGATHA

SilverCaveRoom3_MapScripts:
	def_scene_scripts

	def_callbacks

Red:
	special FadeOutMusic
	faceplayer
	opentext
	writetext RedSeenText
	waitbutton
	closetext
	winlosstext RedWinLossText, RedWinLossText
	loadtrainer RED, RED1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext RedLeavesText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SILVERCAVEROOM3_RED
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	credits
	end

Agatha:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_AGATHA
	iftrue .foughtAgatha
	writetext AgathaSeenText
	waitbutton
	closetext
	winlosstext AgathaWinLossText, AgathaWinLossText
	loadtrainer MEDIUM, AGATHA
	startbattle
	reloadmapafterbattle
	opentext 
	setevent EVENT_FOUGHT_AGATHA
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .RedAppear
	writetext AgathaAfterBattleText
	waitbutton
	closetext
	end

.foughtAgatha:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .RedAppear
	writetext AgathaAfterBattleText
	waitbutton
	closetext
	end

.RedAppear:
	setevent EVENT_BEAT_MEDIUM_AGATHA
	clearevent EVENT_RED_IN_MT_SILVER
	writetext AgathaafterMewTwoBattle
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SILVERCAVEROOM3_AGATHA
	appear SILVERCAVEROOM3_RED
	pause 15
	special FadeInQuickly
	end
	

RedSeenText:
	text "RED: ..."
	line "..."

	para "..."
	line "..."

	para "RED: ..."
	line "..."
	done

RedWinLossText:
	text "RED: ..."
	done

RedLeavesText:
	text "RED: ..."
	line "..."
	done

AgathaSeenText:
	text "AGATHA: I finally"
	line "tracked down RED."

	para "..."
	line "..."

	para "AGATHA: Oh? So you"
	line "are RED's child?"

	para "..."
	line "..."

	para "AGATHA: The fact"
	line "that boy kept your"

	para "dubious parentage"
	line "from you, might be"

	para "the only good he"
	line "ever did."

	para "..."
	line "..."

	para "AGATHA: Oh, he is"
	line "still here child."

	para "..."
	line "..."

	para "AGATHA: I will"
	line "tell you what I"

	para "know, but only"
	line "if you can"
	cont "beat me."
	done

AgathaWinLossText:
	text "You are nothing"
	line "like your father."
	done

AgathaAfterBattleText:
	text "AGATHA: RED told"
	line "me that he was"

	para "venturing deeper"
	line "into the SACRED"
	cont "SILVER MTS."

	para "He's searching for"
	line "the abomination"

	para "created by PROJECT"
	line "GENESIS."

	para "..."
	line "..."

	para "AGATHA: Good luck."
	done

AgathaafterMewTwoBattle:
	text "AGATHA: RED came"
	line "here to track down"
	cont "MEWTWO."

	para "not to recapture"
	line "it but to try and"

	para "show that #MON"
	line "that there could"
	cont "be another way."

	para "..."
	line "..."

	para "AGATHA: You! You"
	line "managed to soothe"
	cont "that tool of war!"

	para "..."
	line "..."

	para "AGATHA: RED should"
	line "circle back to"
	cont "this area."

	para "As I said before,"
	line "you are nothing"
	cont "like your father."

	para "As a child of both"
	line "KANTO and JOHTO,"

	para "you make your"
	line "nations proud."

	para "Keep searching,"
	line "child."

	para "You have a hard-"
	line "won reunion ahead."

	para "As for me, I will"
	line "take my leave."
	done

SilverCaveRoom3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, SILVER_CAVE_ROOM_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, EVENT_RED_IN_MT_SILVER
	object_event 10, 27, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Agatha, EVENT_BEAT_MEDIUM_AGATHA