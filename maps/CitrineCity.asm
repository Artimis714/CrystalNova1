	object_const_def
	const CITRINECITY_YOUNGSTER
	const CITRINECITY_GENTLEMAN
	const CITRINECITY_BEAUTY
	const CITRINECITY_LASS
	const CITRINECITY_CLERK
	const CITRINECITY_SCIENTIST
	const CITRINECITY_POKEFAN_F

CitrineCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CitrineCityFlypointCallback

CitrineCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CITRINE
	endcallback

CitrineDoorBiomedicalScript:
	jumptext CitrineDoorLockedText

CitrineFloristSign:
	jumptext CitrineFloristSignText

CitrineMartSign:
	jumpstd MartSignScript

CitrinePokeCenterSign:
	jumpstd PokecenterSignScript

CitrineGameCornerSign: 
	jumptext CitrineGameCornerSignText

CitrineLabsSign: 
	jumptext CitrineLabsSignText

CitrineMayorSign: 
	jumptext CitrineMayorSignText

CitrineDoorLockedScript:
	jumptext CitrineDoorLockedText

CitrineCityNPC1:
	jumptextfaceplayer CitrineCityNPC1Text

CitrineCityNPC2:
	jumptextfaceplayer CitrineCityNPC2Text


CitrineCityNPC3:
	jumptextfaceplayer CitrineCityNPC3Text

CitrineCityNPC4:
	jumptextfaceplayer CitrineCityNPC4Text

CitrineCityNPC5:
	jumptextfaceplayer CitrineCityNPC5Text

CitrineCityNPC6:
	jumptextfaceplayer CitrineCityNPC6Text

CitrineCityNPC7:
	jumptextfaceplayer CitrineCityNPC7Text


CitrineCityNPC1Text:
	text "This city never"
	line "seems to sleep!"

	para "There's always"
	line "someone arriving,"
	cont "someone leaving,"
	cont "or someone late"
	cont "for an appointment."
	done

CitrineCityNPC2Text:
	text "I've been visiting"
	line "the CASINO every"
	cont "evening this week."

	para "I keep telling"
	line "myself I'll stop"
	cont "after one more"
	cont "game."

	para "Funny how that"
	line "never happens!"
	done

CitrineCityNPC3Text:
	text "Have you visited"
	line "the flower shop?"

	para "The florist is"
	line "always looking"
	cont "for unusual"
	cont "leaves and flowers."

	para "I wonder what"
	line "they're making"
	cont "this time."
	done

CitrineCityNPC4Text:
	text "I came here from"
	line "JOHTO a few years"
	cont "ago."

	para "People here still"
	line "talk about the"
	cont "war sometimes."

	para "I suppose it"
	line "takes longer for"
	cont "some wounds to"
	cont "heal than others."
	done

CitrineCityNPC5Text:
	text "Working for the"
	line "regional office"
	cont "isn't as exciting"
	cont "as it sounds."

	para "Forms, meetings,"
	line "more forms..."

	para "Still, it's nice"
	line "knowing decisions"
	cont "about our region"
	cont "are made here."
	done

CitrineCityNPC6Text:
	text "They won't let me"
	line "inside the bio-"
	cont "medical facility."

	para "I've tried asking"
	line "about it, but"
	cont "nobody seems to"
	cont "know much."

	para "Perhaps that's"
	line "the whole point."
	done

CitrineCityNPC7Text:
	text "I used to think"
	line "I'd travel the"
	cont "world someday."

	para "Then I visited"
	line "CITRINE CITY and"
	cont "found more things"
	cont "to do than I could"
	cont "possibly manage!"

	para "Maybe I'll start"
	line "with somewhere"
	cont "a little closer."
	done

CitrineFloristSignText:
	text "CITRINE FLORIST"
	line "There's a notice"

	para "Seeking Metalic"
	line "leaves for special"
	cont "arrangement."

	para "Will trade RARE"
	line "CANDIES!"
	done

CitrineGameCornerSignText:
	text "CITRINE CASINO"
	line "Try your luck!"
	done

CitrineLabsSignText: 
	text "KANTO BIOMEDICAL"
	line "RESEARCH FACILITY"
	cont "KEEP OUT"
	done

CitrineMayorSignText:
	text "SEVII REGIONAL"
	line "ADMINISTRATIVE"
	cont "OFFICE"
	done

CitrineDoorLockedText:
	text "It's locked."
	done

CitrineCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 29, CITRINE_POKECENTER, 1
	warp_event  4, 38, CORAL_CITRINE_GATE, 3
	warp_event  4, 39, CORAL_CITRINE_GATE, 4
	warp_event 35, 38, CITRINE_GREEN_GATE, 1
	warp_event 35, 39, CITRINE_GREEN_GATE, 2
	warp_event 19, 39, CITRINE_MART, 1
	warp_event 31, 15, CITRINE_FLORIST, 1
	warp_event  7, 31, CITRINE_HOUSE_1, 1
	warp_event  7, 23, CITRINE_HOUSE_2, 1
	warp_event 25, 11, CITRINE_HOUSE_3, 1
	warp_event 19, 31, CITRINE_HOUSE_4, 1
	warp_event 33, 27, CITRINE_HOUSE_5, 1
	warp_event 29, 39, CITRINE_HOUSE_6, 1

	def_coord_events

	def_bg_events
	bg_event 32, 16, BGEVENT_READ, CitrineFloristSign
	bg_event 20, 39, BGEVENT_READ, CitrineMartSign
	bg_event 26, 29, BGEVENT_READ, CitrinePokeCenterSign
	bg_event 14, 22, BGEVENT_READ, CitrineGameCornerSign
	bg_event 24, 22, BGEVENT_READ, CitrineLabsSign
	bg_event 20, 12, BGEVENT_READ, CitrineMayorSign
	bg_event 13, 11, BGEVENT_READ, CitrineDoorLockedScript
	bg_event  7, 11, BGEVENT_READ, CitrineDoorLockedScript
	bg_event  5, 15, BGEVENT_READ, CitrineDoorLockedScript
	bg_event  7, 19, BGEVENT_READ, CitrineDoorLockedScript
	bg_event  5, 27, BGEVENT_READ, CitrineDoorLockedScript
	bg_event 11, 33, BGEVENT_READ, CitrineDoorLockedScript
	bg_event 11, 39, BGEVENT_READ, CitrineDoorLockedScript
	bg_event 29, 33, BGEVENT_READ, CitrineDoorLockedScript
	bg_event 31, 23, BGEVENT_READ, CitrineDoorLockedScript
	bg_event 33, 19, BGEVENT_READ, CitrineDoorLockedScript
	bg_event 23, 21, BGEVENT_READ, CitrineDoorBiomedicalScript


	def_object_events
	object_event 10, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CitrineCityNPC1, -1
	object_event 16, 22, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CitrineCityNPC2, -1
	object_event 15, 38, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineCityNPC3, -1
	object_event  8, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineCityNPC4, -1
	object_event 21, 13, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CitrineCityNPC5, -1
	object_event 22, 24, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CitrineCityNPC6, -1
	object_event 27, 30, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineCityNPC7, -1
