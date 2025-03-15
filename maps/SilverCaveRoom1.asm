	object_const_def
	const SILVERCAVEROOM1_POKE_BALL1
	const SILVERCAVEROOM1_POKE_BALL2
	const SILVERCAVEROOM1_POKE_BALL3
	const SILVERCAVEROOM1_POKE_BALL4
	const SILVERCAVEROOM1_FALKNER
	const SILVERCAVEROOM1_BUGSY
	const SILVERCAVEROOM1_WHITNEY
	const SILVERCAVEROOM1_MORTY
	const SILVERCAVEROOM1_CHUCK
	const SILVERCAVEROOM1_JASMINE
	const SILVERCAVEROOM1_PRYCE
	const SILVERCAVEROOM1_CLAIR

SilverCaveRoom1_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCaveFalkner:
	trainer FALKNER, FALKNER2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, SilverFalknerSeenText, SilverFalknerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverFalknerAfterBattleText
	waitbutton
	closetext
	end

SilverCaveBugsy:
	trainer BUGSY, BUGSY2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2, SilverBugsySeenText, SilverBugsyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverBugsyAfterBattleText
	waitbutton
	closetext
	end

SilverCaveWhitney:
	trainer WHITNEY, WHITNEY2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3, SilverWhitneySeenText, SilverWhitneyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverWhitneyAfterBattleText
	waitbutton
	closetext
	end

SilverCaveMorty:
	trainer MORTY, MORTY2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4, SilverMortySeenText, SilverMortyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverMortyAfterBattleText
	waitbutton
	closetext
	end

SilverCaveChuck:
	trainer CHUCK, CHUCK4, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5, SilverChuckSeenText, SilverChuckBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverChuckAfterBattleText
	waitbutton
	closetext
	end

SilverCaveJasmine:
	trainer JASMINE, JASMINE3, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6, SilverJasmineSeenText, SilverJasmineBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverJasmineAfterBattleText
	waitbutton
	closetext
	end

SilverCavePryce:
	trainer PRYCE, PRYCE4, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7, SilverPryceSeenText, SilverPryceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverPryceAfterBattleText
	waitbutton
	closetext
	end

SilverCaveClair:
	trainer CLAIR, CLAIR2, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8, SilverClairSeenText, SilverClairBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverClairAfterBattleText
	waitbutton
	closetext
	end


SilverCaveRoom1MaxElixer:
	itemball MAX_ELIXER

SilverCaveRoom1Protein:
	itemball PROTEIN

SilverCaveRoom1EscapeRope:
	itemball CARBOS

SilverCaveRoom1UltraBall:
	itemball DUSK_BALL, 4

SilverCaveRoom1HiddenDireHit:
	hiddenitem X_EVADE, EVENT_SILVER_CAVE_ROOM_1_HIDDEN_DIRE_HIT

SilverCaveRoom1HiddenUltraBall:
	hiddenitem MASTER_BALL, EVENT_SILVER_CAVE_ROOM_1_HIDDEN_ULTRA_BALL

SilverFalknerSeenText:
	text "I remember you."
	line "You've come a long"
	cont "way, huh kid?"
	done

SilverFalknerBeatenText:
	text "Damn..."
	done

SilverFalknerAfterBattleText:
	text "Go on then."
	done

SilverBugsySeenText:
	text "I've always hated"
	line "caves."

	para "But my bugs thrive"
	line "in the dark."
	done

SilverBugsyBeatenText:
	text "AHAHA!"
	done

SilverBugsyAfterBattleText:
	text "We've all come to"
	line "test you."

	para "..."
	line "..."

	para "AGATHA called us."

	para "..."
	line "..."

	para "I suppose that's"
	line "true."
	done

SilverWhitneySeenText:
	text "Hey cutie!"
	line "Good to see you"
	cont "again."

	para "..."
	line "..."

	para "Oh, I'll crush"
	line "you this time!"
	done

SilverWhitneyBeatenText:
	text "WHAHAHA!"
	done

SilverWhitneyAfterBattleText:
	text "Sniffle..."

	para "..."
	line "..."

	para "I still think"
	line "you're a meanie!"
	done

SilverMortySeenText:
	text "You have come far."
	
	para "But so have I!"
	done

SilverMortyBeatenText:
	text "Not far enough."
	done

SilverMortyAfterBattleText:
	text "You have done more"
	line "to rebuild JOHTO"
	cont "than any of us."
	done

SilverChuckSeenText:
	text "I finally defeated"
	line "my wife in battle."

	para "I think it's time"
	line "for a rematch."
	done

SilverChuckBeatenText:
	text "Too damn strong."
	done

SilverChuckAfterBattleText:
	text "JOHTO is in your"
	line "debt."

	para "Onwards to your"
	line "next challenge."
	done

SilverJasmineSeenText:
	text "Oh... um... Hi."
	line "It is good to see"
	cont "you again."

	para "We have all been"
	line "summoned to test"
	cont "you."
	done

SilverJasmineBeatenText:
	text "You Passed."
	done

SilverJasmineAfterBattleText:
	text "You have long"
	line "proven yourself to"
	cont "be kind."

	para "But today you have"
	line "shown that you"

	para "have a heart FULL-"
	line "METAL."
	done

SilverPryceSeenText:
	text "Well child, it has"
	line "finally come to"
	cont "this."
	done

SilverPryceBeatenText:
	text "I would expect"
	line "nothing less from"
	cont "RED's child."
	done

SilverPryceAfterBattleText:
	text "It seems you are"
	line "yet the best."
	done

SilverClairSeenText:
	text "Oh, it's you."
	done

SilverClairBeatenText:
	text "Humph..."
	done

SilverClairAfterBattleText:
	text "Even I must admit"
	line "you are JOHTO's"
	cont "CHAMPION."

	para "You do our people"
	line "proud."
	done

SilverCaveRoom1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, SILVER_CAVE_OUTSIDE, 2
	warp_event 15,  1, SILVER_CAVE_ROOM_2, 1

	def_coord_events

	def_bg_events
	bg_event 16, 23, BGEVENT_ITEM, SilverCaveRoom1HiddenDireHit
	bg_event 17, 12, BGEVENT_ITEM, SilverCaveRoom1HiddenUltraBall

	def_object_events
	object_event  4,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1MaxElixer, EVENT_SILVER_CAVE_ROOM_1_MAX_ELIXER
	object_event 15, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1Protein, EVENT_SILVER_CAVE_ROOM_1_PROTEIN
	object_event  5, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1EscapeRope, EVENT_SILVER_CAVE_ROOM_1_ESCAPE_ROPE
	object_event  7, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1UltraBall, EVENT_SILVER_CAVE_ROOM_1_ULTRA_BALL
	object_event  9, 30, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, SilverCaveFalkner, EVENT_FINAL_GAUNTLET
	object_event 10, 26, SPRITE_BUGSY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, SilverCaveBugsy, EVENT_FINAL_GAUNTLET
	object_event  9, 20, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, SilverCaveWhitney, EVENT_FINAL_GAUNTLET
	object_event  7, 14, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, SilverCaveMorty, EVENT_FINAL_GAUNTLET
	object_event 11, 18, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, SilverCaveChuck, EVENT_FINAL_GAUNTLET
	object_event 11,  8, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, SilverCaveJasmine, EVENT_FINAL_GAUNTLET
	object_event 12,  2, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, SilverCavePryce, EVENT_FINAL_GAUNTLET
	object_event 14,  3, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, SilverCaveClair, EVENT_FINAL_GAUNTLET
