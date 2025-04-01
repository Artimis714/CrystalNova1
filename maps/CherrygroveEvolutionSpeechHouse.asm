	object_const_def
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_LASS
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_YOUNGSTER
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_EEVEE

CherrygroveEvolutionSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygroveEvolutionSpeechHouseYoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLED_EEVEE
	iftrue .HeyGiveThatBack
	writetext CherrygroveEvolutionSpeechHouseYoungsterText
	waitbutton
	closetext
	end

.HeyGiveThatBack
	writetext WhatDoYouThinkYoureDoingText
	waitbutton
	closetext
	end

CherrygroveEvolutionSpeechHouseLassScript:
	faceplayer
	opentext
	checkevent EVENT_BATTLED_EEVEE
	iftrue .ImCallingTheCops
	writetext CherrygroveEvolutionSpeechHouseLassText
	waitbutton
	closetext
	end

.ImCallingTheCops
	writetext ImCallingTheCopsText
	waitbutton
	closetext
	end

CherrygroveEvolutionSpeechHouseBookshelf:
	jumpstd MagazineBookshelfScript

ShinyEevee:
	opentext
	writetext Route29EeveeText
	pause 15
	cry EEVEE
	yesorno
	iffalse .HappyEevee
	showemote EMOTE_QUESTION, CHERRYGROVEEVOLUTIONSPEECHHOUSE_EEVEE, 15
	writetext EeveeQuestionText
	closetext
	showemote EMOTE_SHOCK, CHERRYGROVEEVOLUTIONSPEECHHOUSE_LASS, 15
	showemote EMOTE_SHOCK, CHERRYGROVEEVOLUTIONSPEECHHOUSE_YOUNGSTER, 15
	pause 15
	setevent EVENT_BATTLED_EEVEE
	clearevent EVENT_BEAT_OFFICER_KANE
	loadwildmon EEVEE, 1
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	disappear CHERRYGROVEEVOLUTIONSPEECHHOUSE_EEVEE
	reloadmapafterbattle
	end

.HappyEevee
	closetext
	showemote EMOTE_HAPPY, CHERRYGROVEEVOLUTIONSPEECHHOUSE_EEVEE, 15
	pause 15
	cry EEVEE
	waitbutton
	end


Route29EeveeText:
	text "This Eevee has"
	line "an unusual coat."

	para "It would be wrong"
	line "to try and catch"
	cont "it."

	para "Want to try any"
	line "way?"
	done

EeveeQuestionText:
	text "Ee-vee?"
	done

ImCallingTheCopsText:
	text "How dare you come"
	line "into our home and"
	cont "attack our EEVEE!"

	para "I'm calling the"
	line "cops!"
	done

WhatDoYouThinkYoureDoingText:
	text "What do you think"
	line "you're doing?"

	para "That was our Mom's"
	line "EEVEE. It's all we"

	para "Have left of her"
	line "after the war!"

	para "Why would you do"
	line "this to us?"
	done

CherrygroveEvolutionSpeechHouseYoungsterText:
	text "Our Gran fought in"
	line "the war."

	para "Our Mom did too."
	line "But after KANTO"

	para "won, we've been on"
	line "our own."
	done

CherrygroveEvolutionSpeechHouseLassText:
	text "Momma died when"
	line "the troops stormed"

	para "through town in"
	line "the last days of"
	cont "the war."

	para "We miss her every"
	line "day."
	done

CherrygroveEvolutionSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 5
	warp_event  3,  7, CHERRYGROVE_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf

	def_object_events
	object_event  3,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseLassScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseYoungsterScript, -1
	object_event  5,  3, SPRITE_EEVEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, ShinyEevee, EVENT_BATTLED_EEVEE
