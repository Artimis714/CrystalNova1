	object_const_def
	const ROUTE40_OLIVINE_RIVAL1
	const ROUTE40_OLIVINE_RIVAL2
	const ROUTE40_SWIMMER_GIRL1
	const ROUTE40_SWIMMER_GIRL2
	const ROUTE40_ROCK1
	const ROUTE40_ROCK2
	const ROUTE40_ROCK3
	const ROUTE40_LASS1
	const ROUTE40_MONICA
	const ROUTE40_POKEFAN_M
	const ROUTE40_LASS2
	const ROUTE40_OFFICER
	const ROUTE40_SHINY_KRABBY

Route40_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route40MonicaCallback

Route40MonicaCallback:
	clearevent EVENT_BATTLE_TOWER_OPEN_CIVILIANS
	readvar VAR_WEEKDAY
	ifequal MONDAY, .MonicaAppears
	disappear ROUTE40_MONICA
	endcallback

.MonicaAppears:
	appear ROUTE40_MONICA
	endcallback

TrainerSwimmerfElaine:
	trainer SWIMMERF, ELAINE, EVENT_BEAT_SWIMMERF_ELAINE, SwimmerfElaineSeenText, SwimmerfElaineBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfElaineAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfPaula:
	trainer SWIMMERF, PAULA, EVENT_BEAT_SWIMMERF_PAULA, SwimmerfPaulaSeenText, SwimmerfPaulaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfPaulaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermSimon:
	trainer SWIMMERM, SIMON, EVENT_BEAT_SWIMMERM_SIMON, SwimmermSimonSeenText, SwimmermSimonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermSimonAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermRandall:
	trainer SWIMMERM, RANDALL, EVENT_BEAT_SWIMMERM_RANDALL, SwimmermRandallSeenText, SwimmermRandallBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermRandallAfterBattleText
	waitbutton
	closetext
	end

Route40Lass1Script:
	jumptextfaceplayer Route40Lass1Text

Route40PokefanMScript:
	jumptextfaceplayer Route40PokefanMText

ShinyKrabby:
	opentext
	writetext Route40KrabbyText
	pause 15
	cry KRABBY
	closetext
	setevent EVENT_SHINY_KRABBY
	loadwildmon KRABBY, 9
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	disappear ROUTE40_SHINY_KRABBY
	reloadmapafterbattle
	end

Route40Lass2Script:
	faceplayer
	opentext
	writetext Route40Lass2Text
	setevent EVENT_SPOKE_WITH_ARCHAEO_LASS1
	clearevent EVENT_SPOKE_WITH_ARCHAEO_LASS2
	waitbutton
	closetext
	end

MonicaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	iftrue .Monday
	readvar VAR_WEEKDAY
	ifnotequal MONDAY, .NotMonday
	checkevent EVENT_MET_MONICA_OF_MONDAY
	iftrue .MetMonica
	writetext MeetMonicaText
	promptbutton
	setevent EVENT_MET_MONICA_OF_MONDAY
.MetMonica:
	writetext MonicaGivesGiftText
	promptbutton
	verbosegiveitem SHARP_BEAK
	iffalse .done
	setevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	writetext MonicaGaveGiftText
	waitbutton
	closetext
	end

.Monday:
	writetext MonicaMondayText
	waitbutton
.done:
	closetext
	end

.NotMonday:
	writetext MonicaNotMondayText
	waitbutton
	closetext
	end

Route40Sign:
	jumptext Route40SignText

Route40Rock:
	jumpstd SmashRockScript

Route40NOtARock:
	trainer OFFICER, GERALD, EVENT_BEAT_OFFICER_GERALD, OfficerGeraldSeenText, OfficerGeraldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext OfficerGeraldAfterBattleText
	waitbutton
	closetext
	end

Route40HiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ROUTE_40_HIDDEN_HYPER_POTION

OfficerGeraldSeenText:
	text "Only authorized"
	line "individuals are"

	para "allowed beyond"
	line "this point."

	para "You're under"
	line "arrest."

	para "..."
	line "..."

	para "I am authorized to"
	line "use lethal force."

	para "..."
	line "..."

	para "The fact you're"
	line "only a child means"
	cont "little."

	para "Prepare yourself."
	done

OfficerGeraldBeatenText:
	text "I should've been"
	line "more prepared."
	done

OfficerGeraldAfterBattleText:
	text "You're very"
	line "impressive, but I"

	para "am still not mov-"
	line "ing from my post."

	para "No one is allowed"
	line "in the MASS GRAVES"

	para "The KANTO IMPERIAL"
	line "GOVERNMENT feels"

	para "it would become a"
	line "meeting ground for"
	cont "rebels."
	done

SwimmermSimonSeenText:
	text "You have to warm"
	line "up before going"
	cont "into the water."

	para "That's basic."
	done

SwimmermSimonBeatenText:
	text "OK! Uncle! I give!"
	done

SwimmermSimonAfterBattleText:
	text "CIANWOOD CITY is"
	line "a good distance"
	cont "away from here."
	done

SwimmermRandallSeenText:
	text "Hey, you're young"
	line "and fit!"

	para "Don't ride your"
	line "#MON! Swim!"

	para "..."
	line "..."

	para "I'm sorry to hear"
	line "you can't swim."

	para "That was rude of"
	line "me to assume."

	para "Can we battle?"
	done

SwimmermRandallBeatenText:
	text "Uh-oh. I lost…"
	done

SwimmermRandallAfterBattleText:
	text "Swimming exercises"
	line "your entire body."
	cont "It's healthy."

	para "You really should"
	line "learn."
	done

SwimmerfElaineSeenText:
	text "Are you going to"
	line "CIANWOOD?"

	para "How about a quick"
	line "battle first?"
	done

SwimmerfElaineBeatenText:
	text "I lost that one!"
	done

SwimmerfElaineAfterBattleText:
	text "I'd say I'm a bet-"
	line "ter swimmer than"
	cont "you. Yeah!"

	para "..."
	line "..."

	para "Oh, well if you"
	line "can't swim, that"
	cont "explains a lot."
	done

SwimmerfPaulaSeenText:
	text "No inner tube for"
	line "me."

	para "I'm hanging on to"
	line "a sea #MON!"
	done

SwimmerfPaulaBeatenText:
	text "Ooh, I'm feeling"
	line "dizzy!"
	done

SwimmerfPaulaAfterBattleText:
	text "While I float like"
	line "this, the waves"
	cont "carry me along."
	done

Route40Lass1Text:
	text "On the other side"
	line "of that Gatehouse"

	para "are some of the"
	line "mass graves."

	para "JOHTO lost badly"
	line "in the WAR."

	para "Most of them are"
	line "unmarked."

	para "I think both of my"
	line "parents are there."

	para "But we're not able"
	line "to get in."

	para "..."
	line "..."

	para "It's okay. Thanks"
	line "for listening."
	done

Route40PokefanMText:
	text "Those KANTO ass-"
	line "holes slaughtered"
	cont "so many of us."

	para "They made prison-"
	line "ers of the war."

	para "DIG the mass"
	line "grave where the"

	para "BATTLE TOWER used"
	line "to be."

	para "The guard they've"
	line "posted is un-"
	cont "stopable."

	para "He thrashed my"
	line "team. I'd steer"
	cont "clear of him."
	done

Route40Lass2Text:
	text "CASS: I came to"
	line "OLIVINE by ferry"

	para "Just got off the"
	line "ship today!"

	para "Being a port, it"
	line "feels so different"
	cont "from a my home."

	para "Though everyone"
	line "keeps giving me"

	para "dirty looks. I'm"
	line "from VII island"

	para "but everyone here"
	line "thinks I'm from"
	cont "KANTO!"

	para "I wanted to visit"
	line "the RUINS of ALPH"

	para "on my home island"
	line "we have a similar"

	para "place called the"
	line "TANOBY RUINS."

	para "We didn't have a"
	line "University, but"

	para "I've always loved"
	line "archaeology."

	para "Can you tell me"
	line "how to get to the"
	cont "RUINS of ALPH?"

	para "..."
	line "..."

	para "Really? that's"
	line "nowhere near"
	cont "here."

	para "Well, thanks for"
	line "your help."

	para "I'll need to"
	line "head out soon."	 
	done

MeetMonicaText:
	text "MONICA: Glad to"
	line "meet you. I'm"

	para "MONICA of Monday."
	done

MonicaGivesGiftText:
	text "As a token of our"
	line "friendship, I have"
	cont "a gift for you!"
	done

MonicaGaveGiftText:
	text "MONICA: It's an"
	line "item that raises"

	para "the power of fly-"
	line "ing-type moves."

	para "You should equip a"
	line "bird #MON with"
	cont "that item."
	done

MonicaMondayText:
	text "MONICA: My broth-"
	line "ers and sisters"

	para "are all over the"
	line "place."

	para "See if you could"
	line "find them all!"
	done

MonicaNotMondayText:
	text "MONICA: I don't"
	line "think today is"
	cont "Monday. How sad…"
	done

Route40SignText:
	text "ROUTE 40"

	para "CIANWOOD CITY -"
	line "OLIVINE CITY"
	done

Route40KrabbyText:
	text "Koo-ki Koo-ki?"
	done

Route40_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 14, 10, BGEVENT_READ, Route40Sign
	bg_event  7,  8, BGEVENT_ITEM, Route40HiddenHyperPotion

	def_object_events
	object_event 14, 15, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmermSimon, -1
	object_event 18, 30, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerSwimmermRandall, -1
	object_event  3, 19, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerfElaine, -1
	object_event 10, 25, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfPaula, -1
	object_event  6, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Rock, -1
	object_event  7,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Rock, -1
	object_event  6,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Rock, -1
	object_event 11, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40Lass1Script, -1
	object_event  8, 10, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonicaScript, EVENT_ROUTE_40_MONICA_OF_MONDAY
	object_event  7,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route40PokefanMScript, -1
	object_event 13,  4, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route40Lass2Script, EVENT_SPOKE_WITH_ARCHAEO_LASS1
	object_event  9,  6, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, Route40NOtARock, -1
	object_event  6,  9, SPRITE_KRABBY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_EMOTE, OBJECTTYPE_SCRIPT, 0, ShinyKrabby, EVENT_SHINY_KRABBY
