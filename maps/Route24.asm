	object_const_def
	const ROUTE24_ROCKET
	const ROUTE25_MISTY
	const ROUTE25_COOLTRAINER_M1

Route24_MapScripts:
	def_scene_scripts
	scene_script Route25Noop1Scene, SCENE_ROUTE25_NOOP
	scene_script Route25Noop2Scene, SCENE_ROUTE25_MISTYS_DATE

	def_callbacks

Route25Noop1Scene:
	end

Route25Noop2Scene:
	end

Route25MistyDate1Script:
	showemote EMOTE_HEART, ROUTE25_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, ROUTE25_COOLTRAINER_M1, 10
	turnobject ROUTE25_MISTY, DOWN
	applymovement ROUTE25_COOLTRAINER_M1, Route25MistysDateLeavesMovement1
	disappear ROUTE25_COOLTRAINER_M1
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject ROUTE25_MISTY, UP
	pause 10
	applymovement ROUTE25_MISTY, Route25MistyApproachesPlayerMovement1
	opentext
	writetext Route25MistyDateText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement ROUTE25_MISTY, Route25MistyLeavesPlayerMovement1
	turnobject PLAYER, LEFT
	applymovement ROUTE25_MISTY, Route25MistyLeavesMovement
	disappear ROUTE25_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	clearevent EVENT_NUGGET_BRIDGE_AWAY
	setscene SCENE_ROUTE25_NOOP
	special RestartMapMusic
	end

Route25MistyDate2Script:
	showemote EMOTE_HEART, ROUTE25_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, ROUTE25_COOLTRAINER_M1, 10
	turnobject ROUTE25_MISTY, DOWN
	applymovement ROUTE25_COOLTRAINER_M1, Route25MistysDateLeavesMovement2
	disappear ROUTE25_COOLTRAINER_M1
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject ROUTE25_MISTY, UP
	pause 10
	applymovement ROUTE25_MISTY, Route25MistyApproachesPlayerMovement2
	opentext
	writetext Route25MistyDateText
	waitbutton
	closetext
	turnobject PLAYER, UP
	applymovement ROUTE25_MISTY, Route25MistyLeavesPlayerMovement2
	turnobject PLAYER, LEFT
	applymovement ROUTE25_MISTY, Route25MistyLeavesMovement
	disappear ROUTE25_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	clearevent EVENT_NUGGET_BRIDGE_AWAY
	setscene SCENE_ROUTE25_NOOP
	special RestartMapMusic
	end

Route24RocketScript:
	faceplayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext Route24RocketSeenText
	waitbutton
	closetext
	winlosstext Route24RocketBeatenText, -1
	loadtrainer GRUNTM, GRUNTM_31
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext Route24RocketAfterBattleText
	promptbutton
	special FadeOutMusic
	writetext Route24RocketDisappearsText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear ROUTE24_ROCKET
	setevent EVENT_ROUTE_24_ROCKET
	setevent EVENT_PRISON_ROCKETS
	pause 25
	special FadeInQuickly
	playmapmusic
	end

Route25MistysDateLeavesMovement1:
	big_step DOWN
	step_end

Route25MistysDateLeavesMovement2:
	big_step DOWN
	big_step DOWN
	step_end

Route25MistyApproachesPlayerMovement1:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyApproachesPlayerMovement2:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyLeavesPlayerMovement1:
	step DOWN
	step LEFT
	step_end

Route25MistyLeavesPlayerMovement2:
	step UP
	step LEFT
	step_end

Route25MistyLeavesMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyDateText:
	text "MISTY: Aww! Why"
	line "did you have to"

	para "show up and bug us"
	line "now?"

	para "Do you know what"
	line "they call people"
	cont "like you?"

	para "Pests! You heard"
	line "me right, pest!"

	para "..."
	line "..."

	para "…Oh? Those BADGES"
	line "you have… Are they"
	cont "JOHTO GYM BADGES?"

	para "Then you must be"
	line "the JOHTO LEAGUE"
	cont "CHAMPION."

	para "..."
	line "..."

	para "Good, then you"
	line "must be strong."

	para "I haven't had a"
	line "real challenge in"
	cont "years!"

	para "OK, then. Come to"
	line "CERULEAN GYM."

	para "I'll be happy to"
	line "take you on."

	para "I'm MISTY, the"
	line "GYM LEADER in"
	cont "CERULEAN."
	done

Route24RocketSeenText:
	text "YOU!!!"
	line "YOU LITTLE SHIT!"

	para "You're the one"
	line "who ruined our"

	para "plans in GOLDENROD"
	line "aren't you?"

	para "..."
	line "..."

	para "Yeah We didn't"
	line "get to fight."

	para "Too bad, because"
	line "you're at the top"
	cont "of my shit-list!"

	para "..."
	line "..."

	para "#MON LEAGUE"
	line "CHAMPION?"

	para "So you've got"
	line "full KANTO"
	cont "CITIZENSHIP?"

	para "..."
	line "..."

	para "AHAHA!!! It was"
	line "stolen?"

	para "That brightens my"
	line "day. Now you know"

	para "what life's like"
	line "for the rest of"
	cont "us!"

	para "..."
	line "..."

	para "POWER PLANT?"
	line "After the shit"

	para "they've put you"
	line "through, you still"
	cont "want to help?"

	para "..."
	line "..."

	para "Kid, I was gonna"
	line "kick your ass any-"
	cont "way, but now..."

	para "I'm gonna enjoy"
	line "it!"
	done

Route24RocketBeatenText:
	text "You've got some"
	line "misplaced loyal-"
	cont "ties."

	para "Fine, yes I took"
	line "the MACHINE PART!"
	done

Route24RocketAfterBattleText:
	text "I hid it in"
	line "CERULEAN GYM."

	para "..."
	line "..."

	para "Why? because"
	line "MISTY killed my"
	cont "sister in the war!"

	para "..."
	line "..."

	para "I don't want your"
	line "sympathy."

	para "You can fuck off."

	para "If you're content"
	line "to play KANTO's"

	para "little guard dog."
	line "Know that, no mat-"
	cont "ter what you do,"

	para "they won't thank"
	line "you for it."

	para "Grow up kid."
	done

Route24RocketDisappearsText:
	text "..."
	line "..."

	para "I'll leave."

	para "I'm not sure how"
	line "many of us there"
	cont "are still alive."

	para "..."
	line "..."

	para "We were a special"
	line "ops unit."

	para "Many of my squad"
	line "helped trigger"
	cont "CINNABAR!"

	para "..."
	line "..."

	para "I'll call that"
	line "revenge enough!"
	cont "AHAHA!!!"
	done

Route24_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event  8, 23, SCENE_ROUTE25_MISTYS_DATE, Route25MistyDate1Script
	coord_event  9, 23, SCENE_ROUTE25_MISTYS_DATE, Route25MistyDate2Script

	def_bg_events

	def_object_events
	object_event  6,  5, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, EVENT_ROUTE_24_ROCKET
	object_event 13, 23, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_25_MISTY_BOYFRIEND
	object_event 13, 24, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_25_MISTY_BOYFRIEND
