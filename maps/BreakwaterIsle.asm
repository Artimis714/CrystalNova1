	object_const_def
	const BREAKWATER_FISHER
	const BREAKWATER_LASS
	const BREAKWATER_SAILOR
	const BREAKWATER_OLDMAN
	const BREAKWATER_BOY
	const BREAKWATER_TEACHER
	const BREAKWATER_FISHER2
	const BREAKWATER_GRANNY
	const BREAKWATER_CAMPER
	const BREAKWATER_BLACKBELT

BreakwaterIsle_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, BreakwaterIsleFlypointCallback

BreakwaterIsleFlypointCallback:
	setflag ENGINE_FLYPOINT_BREAKWATER
	endcallback

BreakwaterPokeSign:
	jumpstd PokecenterSignScript

BreakwaterMartSign:
	jumpstd MartSignScript

BreakwaterIsleSign: 
	jumptext BreakwaterIsleText

BreakwaterIsleGymSign: 
	jumptext BreakwaterGymText

BreakwaterLighthouseSign:
	jumptext BreakwaterLighthouseText

BreakwaterFisher:
	jumptextfaceplayer BreakwaterFisherText

BreakwaterLass:
	jumptextfaceplayer BreakwaterLassText

BreakwaterSailor:
	jumptextfaceplayer BreakwaterSailorText

BreakwaterOldMan:
	jumptextfaceplayer BreakwaterOldManText

BreakwaterBoy:
	jumptextfaceplayer BreakwaterBoyText

BreakwaterTeacher:
	jumptextfaceplayer BreakwaterTeacherText

BreakwaterFisher2:
	jumptextfaceplayer BreakwaterFisher2Text

BreakwaterGranny:
	jumptextfaceplayer BreakwaterGrannyText

BreakwaterCamper:
	jumptextfaceplayer BreakwaterCamperText

BreakwaterBlackBelt:
	jumptextfaceplayer BreakwaterBlackBeltText

BreakwaterRuinedBuildingScript:
	jumptext RuinedBuildingText

BreakwaterGreenHouseScript:
	jumptext GreenHouseText

BreakwaterBillsHouseScript: 
	jumptext BillshouseText

BreakwaterSchoolhouseScript:
	jumptext BreakwaterSchoolText


GreenHouseText:
	text "<PKMN> TRAINER"
	line "GREEN."
	done

BillshouseText:
	text "BILL's SUMMER"
	line "home."
	done

BreakwaterSchoolText:
	text "BREAKWATER"
	line "SCHOOLHOUSE."
	done

RuinedBuildingText:
	text "This building was"
	line "bombed during the"
	cont "war."

	para "The rubble hasn't"
	line "been cleared yet."
	done 

BreakwaterFisherText:
	text "The harbour used"
	line "to be full of"
	cont "ships."

	para "Now most of the"
	line "docks are wrecked,"
	cont "and half the boats"
	cont "are barely seawor-"
	cont "thy."

	para "Still, a bad day's"
	line "fishing beats no"
	cont "fishing at all!"
	done

BreakwaterLassText:
	text "I used to live in"
	line "CINNABAR."

	para "I thought moving"
	line "here would only"
	cont "be temporary."

	para "It's been a while"
	line "now. I suppose"
	cont "this is home."
	done

BreakwaterSailorText:
	text "You from JOHTO?"

	para "Hmph."

	para "Funny how their"
	line "islands escaped"
	cont "most of the"
	cont "fighting."

	para "We KANTO people"
	line "had to pay for"
	cont "their war."
	done

BreakwaterOldManText:
	text "BREAKWATER used"
	line "to be a lovely"
	cont "little port."

	para "The war left its"
	line "mark on this"
	cont "place."

	para "But the volcano"
	line "finished what the"
	cont "war started."

	para "We've had to learn"
	line "how to rebuild"
	cont "twice over."
	done

BreakwaterBoyText:
	text "Have you been to"
	line "the LIGHTHOUSE?"

	para "They say some of"
	line "the strongest"
	cont "TRAINERS in the"
	cont "region gather"
	cont "there!"

	para "I want to be just"
	line "like them someday!"
	done

BreakwaterTeacherText:
	text "A lot of the kids"
	line "here came from"
	cont "CINNABAR."

	para "Some lost their"
	line "homes. Others"
	cont "lost their"
	cont "families."

	para "I try to give"
	line "them something"
	cont "normal to look"
	cont "forward to."

	para "Even if it's just"
	line "a lesson every"
	cont "morning."
	done

BreakwaterFisher2Text:
	text "The water around"
	line "here is full of"
	cont "debris."

	para "Sometimes I pull"
	line "up old pieces of"
	cont "metal instead of"
	cont "MAGIKARP."

	para "I suppose the sea"
	line "isn't done giving"
	cont "back what it took."
	done

BreakwaterGrannyText:
	text "JOHTO TRAINERS?"

	para "Don't make me"
	line "laugh!"

	para "They get to go"
	line "home to their"
	cont "pretty little"
	cont "towns while we"
	cont "pick up the"
	cont "pieces."

	para "Well, they aren't"
	line "welcome here."
	done

BreakwaterCamperText:
	text "The LIGHTHOUSE"
	line "isn't just a"
	cont "place to look at"
	cont "the sea."

	para "TRAINERS come"
	line "from all over"
	cont "KANTO to test"
	cont "themselves there."

	para "I'm going to"
	line "challenge them"
	cont "one day!"

	para "Just... not today."
	done

BreakwaterBlackBeltText:
	text "I used to train"
	line "at the CINNABAR"
	cont "GYM."

	para "When the volcano"
	line "erupted, we lost"
	cont "more than just"
	cont "the GYM."

	para "The LEADER hasn't"
	line "given up, though."

	para "Neither have I."
	done

BreakwaterIsleText:
	text "BREAKWATER ISLE"
	
	para "First line of"
	line "defense against"
	cont "JOHTO!"
	done

BreakwaterGymText: 
	text "BREAKWATER GYM"
	line "LEADER BLAINE"
	done

BreakwaterLighthouseText:
	text "BREAKWATER"
	line "LIGHTHOUSE"
	done

BreakwaterIsle_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 30,  5, BREAKWATER_CAVE_1, 2
	warp_event 23,  7, BREAKWATER_POKECENTER, 1
	warp_event 25, 15, BREAKWATER_MART, 1
	warp_event 29, 11, BREAKWATER_HOUSE1, 1
	warp_event 21, 19, BREAKWATER_HOUSE2, 1
	warp_event  5, 23, BREAKWATER_LIGHTHOUSEF1, 1
	warp_event 18, 13, BREAKWATER_GYM, 1
	warp_event 25, 21, BILLS_HOUSE, 1
	warp_event 31, 17, BREAKWATER_SCHOOLHOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 24,  7, BGEVENT_READ, BreakwaterPokeSign
	bg_event 26, 15, BGEVENT_READ, BreakwaterMartSign
	bg_event 29,  7, BGEVENT_READ, BreakwaterIsleSign
	bg_event 17, 15, BGEVENT_READ, BreakwaterIsleGymSign
	bg_event  7, 25, BGEVENT_READ, BreakwaterLighthouseSign
	bg_event 14,  7, BGEVENT_READ, BreakwaterRuinedBuildingScript
	bg_event 15,  7, BGEVENT_READ, BreakwaterRuinedBuildingScript
	bg_event 16,  7, BGEVENT_READ, BreakwaterRuinedBuildingScript
	bg_event 17,  7, BGEVENT_READ, BreakwaterRuinedBuildingScript
	bg_event 22, 20, BGEVENT_READ, BreakwaterGreenHouseScript
	bg_event 26, 22, BGEVENT_READ, BreakwaterBillsHouseScript
	bg_event 32, 18, BGEVENT_READ, BreakwaterSchoolhouseScript

	def_object_events
	object_event 31, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BreakwaterFisher, -1
	object_event 21,  9, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BreakwaterLass, -1
	object_event 28, 20, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BreakwaterSailor, -1
	object_event 25, 23, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BreakwaterOldMan, -1
	object_event 14, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BreakwaterBoy, -1
	object_event 29, 17, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BreakwaterTeacher, -1
	object_event 30, 27, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BreakwaterFisher2, -1
	object_event 18, 21, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BreakwaterGranny, -1
	object_event 31, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BreakwaterCamper, -1
	object_event 20, 15, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BreakwaterBlackBelt, -1
