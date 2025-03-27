	object_const_def
	const SILVERCAVEROOM3_RED
	const SILVERCAVEROOM3_AGATHA
	const SILVERCAVEROOM3_RIVAL

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
	setevent EVENT_FINAL_GAUNTLET
	clearevent EVENT_BEAT_MEDIUM_AGATHA
	clearevent EVENT_LEADERS_IN_SILVER
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	clearevent EVENT_OLIVINE_GYM_JASMINE
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
	setevent EVENT_OAK_IN_MT_SILVER
	clearevent EVENT_OAK_BACK_IN_LAB
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
	setevent EVENT_LEADERS_IN_SILVER
	setevent EVENT_VIRIDIAN_GYM_BLUE
	setevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setevent EVENT_OLIVINE_GYM_JASMINE
	setevent EVENT_OAK_IN_MT_SILVER
	clearevent EVENT_RED_IN_MT_SILVER
	clearevent EVENT_FINAL_GAUNTLET
	clearevent EVENT_OAK_BACK_IN_LAB
	writetext AgathaafterMewTwoBattle
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	special FadeInQuickly
	waitsfx
	warp SILVER_CAVE_OUTSIDE, 18, 12
	end

Rival:
	showemote EMOTE_SHOCK, SILVERCAVEROOM3_RIVAL, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceplayer
	opentext 
	writetext RivalFinalBattle1
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	; Cyndaquil
	winlosstext FinalRivalWinText, FinalRivalLoseText
	setlasttalked SILVERCAVEROOM3_RIVAL
	loadtrainer RIVAL2, RIVAL2_3_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump FinalRivalPostBattle

.Totodile:
	winlosstext FinalRivalWinText, FinalRivalLoseText
	setlasttalked SILVERCAVEROOM3_RIVAL
	loadtrainer RIVAL2, RIVAL2_3_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump FinalRivalPostBattle

.Chikorita:
	winlosstext FinalRivalWinText, FinalRivalLoseText
	setlasttalked SILVERCAVEROOM3_RIVAL
	loadtrainer RIVAL2, RIVAL2_3_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump FinalRivalPostBattle

FinalRivalPostBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext 
	writetext FinalRivalText2
	waitbutton
	closetext
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	disappear SILVERCAVEROOM3_RIVAL
	waitsfx
	reloadmap
	playmapmusic
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
	line "let me know if you"

	para "find him or that"
	line "abomination."
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

	para "AGATHA: You!? You"
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

	para "You have a hard-"
	line "won reunion ahead."

	para "Though I have one"
	line "final gauntlet."

	para "for you to over-"
	line "come."

	para "Ahaha!"
	done

RivalFinalBattle1:
	text "So you've come"
	line "all this way to"

	para "meet the infamous"
	line "RED."

	para "..."
	line "..."

	para "Your father!?"
	line "That explains so"
	cont "much."

	para "..."
	line "..."

	para "Maybe you should"
	line "prove you're on"
	cont "your dad's level."
	done

FinalRivalWinText:
	text "This is getting"
	line "predictable." 
	done

FinalRivalLoseText:
	text "This is getting"
	line "predictable." 
	done

FinalRivalText2:
	text "..."
	line "..."

	para "I came to make"
	line "RED pay for his"

	para "crimes during the"
	line "war."

	para "..."
	line "..."

	para "Listen, my dad is"
	line "GIOVANI. I under-"
	
	para "stand your daddy"
	line "issues. Trust me."

	para "..."
	line "..."

	para "I suppose you're"
	line "right."

	para "We make the world"
	line "a better place."

	para "..."
	line "..."

	para "You showed me how"
	line "to be a better"

	para "trainer, and a"
	line "better person."

	para "Thank you for"
	line "believing in me"

	para "when no one else"
	line "did."

	para "..."
	line "..."

	para "Give him hell."

	para "I'll see you"
	line "around, <PLAY_G>"
	done

SilverCaveRoom3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, SILVER_CAVE_ROOM_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, EVENT_RED_IN_MT_SILVER
	object_event 10, 27, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Agatha, EVENT_BEAT_MEDIUM_AGATHA
	object_event  9, 13, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Rival, EVENT_FINAL_GAUNTLET