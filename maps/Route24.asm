	object_const_def
	const ROUTE24_ROCKET

Route24_MapScripts:
	def_scene_scripts

	def_callbacks

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

	def_bg_events

	def_object_events
	object_event  8,  7, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, EVENT_ROUTE_24_ROCKET
