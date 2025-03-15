	object_const_def
	const SILVERCAVEROOM2_POKE_BALL1
	const SILVERCAVEROOM2_POKE_BALL2
	const SILVERCAVEROOM2_POKE_BALL3
	const SILVERCAVEROOM2_BROCK
	const SILVERCAVEROOM2_MISTY
	const SILVERCAVEROOM2_SURGE
	const SILVERCAVEROOM2_JANINE
	const SILVERCAVEROOM2_ERIKA
	const SILVERCAVEROOM2_BLAINE
	const SILVERVAVEROOM2_SABRINA
	const SILVERCAVEROOM2_BLUE

SilverCaveRoom2_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCaveBrock:
	trainer BROCK, BROCK2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, SilverBrockSeenText, SilverBrockBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverBrockAfterBattleText
	waitbutton
	closetext
	end

SilverCaveMisty:
	trainer MISTY, MISTY2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2, SilverMistySeenText, SilverMistyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverMistyAfterBattleText
	waitbutton
	closetext
	end

SilverCaveSurge:
	trainer LT_SURGE, LT_SURGE2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3, SilverSurgeSeenText, SilverSurgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverSurgeAfterBattleText
	waitbutton
	closetext
	end

SilverCaveJanine:
	trainer JANINE, JANINE2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4, SilverJanineSeenText, SilverJanineBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverJanineAfterBattleText
	waitbutton
	closetext
	end

SilverCaveErika:
	trainer ERIKA, ERIKA2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5, SilverErikaSeenText, SilverErikaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverErikaAfterBattleText
	waitbutton
	closetext
	end

SilverCaveBlaine:
	trainer BLAINE, BLAINE2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6, SilverBlaineSeenText, SilverBlaineBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverBlaineAfterBattleText
	waitbutton
	closetext
	end

SilverCaveSabrina:
	trainer SABRINA, SABRINA2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7, SilverSabrinaSeenText, SilverSabrinaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverSabrinaAfterBattleText
	waitbutton
	closetext
	end

SilverCaveBlue:
	trainer BLUE, BLUE2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8, SilverBlueSeenText, SilverBlueBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverBlueAfterBattleText
	waitbutton
	closetext
	end

SilverCaveRoom2Calcium:
	itemball CALCIUM

SilverCaveRoom2UltraBall:
	itemball PROTEIN

SilverCaveRoom2PPUp:
	itemball PP_UP, 2

SilverCaveRoom2HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_SILVER_CAVE_ROOM_2_HIDDEN_MAX_POTION

SilverBrockSeenText:
	text "Alright!"

	para "..."
	line "..."

	para "You didn't think"
	line "AGATHA only called"

	para "the JOHTO leaders"
	line "did you?"

	para "..."
	line "..."

	para "No, you've got to"
	line "get through all"
	cont "of us."
	done

SilverBrockBeatenText:
	text "At least now I"
	line "have an excuse to"
	cont "see NURSE JOY!"
	done

SilverBrockAfterBattleText:
	text "You'll always be"
	line "the champ in my"
	cont "book!"
	done

SilverMistySeenText:
	text "..."
	line "..."

	para "My boyfriend is"
	line "waiting back in"

	para "CERULEAN. Let's"
	line "finish this."
	done

SilverMistyBeatenText:
	text "You can brag, but"
	line "I'm getting laid."

	para "so who's the real"
	line "loser?"
	done

SilverMistyAfterBattleText:
	text "I can't leave"
	line "until you defeat"
	cont "all of us."
	done

SilverSurgeSeenText:
	text "Had I known you"
	line "were RED's kid, I"

	para "would've shown you"
	line "more respect."

	para "Your father served"
	line "his country. He is"
	cont "a national hero!"

	para "..."
	line "..."

	para "It's time someone"
	line "taught you to"

	para "respect a superior"
	line "officer!"
	done

SilverSurgeBeatenText:
	text "I hate that you"
	line "out-rank me."
	done

SilverSurgeAfterBattleText:
	text "..."
	line "..."

	para "Fine. I'm sorry."

	para "..."
	line "..."

	para "I'm sorry you're"
	line "so naive."
	done

SilverJanineSeenText:
	text "As Hokage of the"
	line "village hidden in"
	cont "the smog."

	para "I accept your"
	line "rematch."
	done

SilverJanineBeatenText:
	text "Well, shit."
	done

SilverJanineAfterBattleText:
	text "..."
	line "..."

	para "Yes I know I'm the"
	line "weakest link."

	para "Even FALKNER kicks"
	line "my ass."

	para "..."
	line "..."

	para "I know, right?"
	done

SilverErikaSeenText:
	text "Yo! What's hangin'"
	line "kid?"

	para "..."
	line "..."

	para "Reunion with your"
	line "dad? That sounds"
	cont "pretty heavy."

	para "..."
	line "..."

	para "Nah bro, I can't"
	line "just let you past."
	done

SilverErikaBeatenText:
	text "I need another"
	line "hit."
	done

SilverErikaAfterBattleText:
	text "If you're gonna"
	line "meet your dad for"

	para "the first time,"
	line "take a hit."

	para "..."
	line "..."

	para "Feel better?"

	para "..."
	line "..."

	para "Anytime."
	done

SilverBlaineSeenText:
	text "This is a waste"
	line "of time."

	para "I cannot believe"
	line "AGATHA called in a"
	cont "favor for this."
	done

SilverBlaineBeatenText:
	text "RED isn't worth"
	line "all this trouble."
	done

SilverBlaineAfterBattleText:
	text "RED won't be the"
	line "man you think he"
	cont "is."

	para "..."
	line "..."

	para "Then prepare to be"
	line "disappointed."
	done

SilverSabrinaSeenText:
	text "I foresaw this the"
	line "day you defeated"
	cont "me."

	para "..."
	line "..."

	para "You encountered my"
	line "MEWTWO's sibling."

	para "..."
	line "..."

	para "Then this will be"
	line "an interesting"
	cont "match-up indeed."
	done

SilverSabrinaBeatenText:
	text "I foresaw this"
	line "too."
	done

SilverSabrinaAfterBattleText:
	text "What do you hope"
	line "to accomplish by"

	para "meeting your"
	line "father?"

	para "..."
	line "..."

	para "I wish you luck."
	done

SilverBlueSeenText:
	text "Good to see you."

	para "..."
	line "..."

	para "Yes, he's in"
	line "there."

	para "When we met... I"
	line "I had no idea you"
	cont "were his kid."

	para "..."
	line "..."

	para "RED and I grew up"
	line "together."

	para "..."
	line "..."

	para "I believe he wants"
	line "to be a better"
	cont "man."
	done

SilverBlueBeatenText:
	text "I hate to say it"
	line "but you're not the"
	cont "first to beat me."

	para "Someone beat you"
	line "inside."
	done

SilverBlueAfterBattleText:
	text "Some kid with red"
	line "hair and powerful"

	para "#MON got here"
	line "first."

	para "..."
	line "..."

	para "Sounds like you"
	line "know him."

	para "..."
	line "..."

	para "I don't know what"
	line "he wants with"
	cont "your father."
	done

SilverCaveRoom2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 31, SILVER_CAVE_ROOM_1, 2
	warp_event 11,  5, SILVER_CAVE_ROOM_3, 1
	warp_event 13, 21, SILVER_CAVE_ITEM_ROOMS, 1
	warp_event 23,  3, SILVER_CAVE_ITEM_ROOMS, 2

	def_coord_events

	def_bg_events
	bg_event 14, 31, BGEVENT_ITEM, SilverCaveRoom2HiddenMaxPotion

	def_object_events
	object_event 24, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2Calcium, EVENT_SILVER_CAVE_ROOM_2_CALCIUM
	object_event 22, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2UltraBall, EVENT_SILVER_CAVE_ROOM_2_ULTRA_BALL
	object_event  4, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2PPUp, EVENT_SILVER_CAVE_ROOM_2_PP_UP
	object_event 17, 28, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, SilverCaveBrock, EVENT_FINAL_GAUNTLET
	object_event 20, 26, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, SilverCaveMisty, EVENT_FINAL_GAUNTLET
	object_event 20, 24, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, SilverCaveSurge, EVENT_FINAL_GAUNTLET
	object_event 20, 22, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, SilverCaveJanine, EVENT_FINAL_GAUNTLET
	object_event 14, 16, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, SilverCaveErika, EVENT_FINAL_GAUNTLET
	object_event 10, 14, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, SilverCaveBlaine, EVENT_FINAL_GAUNTLET
	object_event  6, 13, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, SilverCaveSabrina, EVENT_FINAL_GAUNTLET
	object_event 10,  6, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, SilverCaveBlue, EVENT_FINAL_GAUNTLET
