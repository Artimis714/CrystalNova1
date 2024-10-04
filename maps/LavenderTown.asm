	object_const_def
	const LAVENDERTOWN_POKEFAN_M
	const LAVENDERTOWN_TEACHER
	const LAVENDERTOWN_YOUNGSTER
	const LAVENDERTOWN_OFFICER
	const LAVENDERTOWN_OFFICER_2
 	const LAVENDERTOWN_OFFICER_3

LavenderTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, LavenderTownFlypointCallback

LavenderTownFlypointCallback:
	setflag ENGINE_FLYPOINT_LAVENDER
	endcallback

LavenderTownPokefanMScript:
	jumptextfaceplayer LavenderTownPokefanMText

LavenderTownTeacherScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .Alert
	checkevent EVENT_LAVENDER_ALERT
	iftrue .GetAwayfromMe
	writetext LavenderTownTeacherText
	waitbutton
	closetext
	end

.Alert:
	farwritetext OhHeyDerKiddoText
	showemote EMOTE_SHOCK, LAVENDERTOWN_TEACHER, 15
	farwritetext ImCallingtheCopsDerEh
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	setevent EVENT_LAVENDER_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_LAVENDER
	end

.GetAwayfromMe:
	farwritetext GetAwayFromMeEhText
	waitbutton
	closetext
	end

LavenderTownYoungsterScript:
	jumptextfaceplayer LavenderTownYoungsterText

LavenderTownPrisonScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .Alert
	checkevent EVENT_LAVENDER_ALERT
	iftrue .GetAwayfromMe
	writetext LavenderTownPrisonText
	waitbutton
	closetext
	end

.Alert:
	writetext LavenderTownPrisonText2
	showemote EMOTE_SHOCK, LAVENDERTOWN_OFFICER, 15
	writetext CallingForBackupText
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	setevent EVENT_LAVENDER_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_LAVENDER
	end

.GetAwayfromMe:
	writetext LavenderTownPrisonText3
	waitbutton
	closetext
	end

	jumptextfaceplayer LavenderTownPrisonText

LavenderTownSign:
	jumptext LavenderTownSignText

KantoRadioStationSign:
	jumptext KantoRadioStationSignText

VolunteerPokemonHouseSign:
	jumptext VolunteerPokemonHouseSignText

SoulHouseSign:
	jumptext SoulHouseSignText

LavenderPokecenterSignText:
	jumpstd PokecenterSignScript

LavenderMartSignText:
	jumpstd MartSignScript

LavenderTownCityPolice2Script:
	trainer OFFICER, GUARD, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2, LavenderPoliceSeenText, LavenderPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LavenderPoliceAfterBattleText
	waitbutton
	closetext
	end

LavenderTownCityPolice1Script:
	trainer OFFICER, CITYPOLICE, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, LavenderPoliceSeenText, LavenderPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LavenderPoliceAfterBattleText
	waitbutton
	closetext
	end

LavenderPoliceSeenText:
	text "HEY! YOU!!!"

	para "STOP RIGHT THERE!"

	para "..."
	line "..."

	para "You're wanted by"
	line "the LAVENDER"
	cont "POLICE!"

	para "..."
	line "..."

	para "You're under"
	line "arrest!"
	done

LavenderPoliceAfterBattleText:
	text "..."
	line "..."

	para "Well, you don't"
	line "have KANTO PAPERS"

	para "so I should call"
	line "for backup, but"
	cont "I'm impressed."

	para "Try to stay out of"
	line "trouble."
	done

LavenderPoliceWinText:
	text "On behalf of the"
	line "LAVENDER POLICE"

	para "You're free to"
	line "go."
	done

LavenderTownPrisonText:
	text "HALT!"

	para "..."
	line "..."

	para "Let's see some ID"
	line "kiddo."

	para "..."
	line "..."

	para "Be on your way,"
	line "kid!"
	done

LavenderTownPrisonText2:
	text "HALT!"

	para "..."
	line "..."

	para "Let's see some ID"
	line "kiddo."

	para "..."
	line "..."

	para "You don't have"
	line "KANTO ID!"
	done

CallingForBackupText:
	text "If I could leave"
	line "my post, you'd be"
	cont "under arrest!"

	para "I'm calling for"
	line "backup!"
	done

LavenderTownPrisonText3:
	text "Backup is on its"
	line "way!"

	para "Better run!"
	done

LavenderTownPokefanMText:
	text "That's quite some"
	line "building, eh?"

	para "It used to be the"
	line "KANTO RADIO TOWER."

	para "It was damaged bad"
	line "during the war, so"

	para "there hasn't been"
	line "a broadcast here"
	cont "in decades."

	para "KANTO's Radio"
	line "Station now runs"

	para "from the SILPH"
	line "headquarters in"
	cont "SAFFRON."
	done

LavenderTownTeacherText:
	text "Our town used to"
	line "be a TECH hub in"

	para "the early days of"
	line "the war, but when"

	para "JHOTO raided the"
	line "town, our RADIO"

	para "TOWER was damaged"
	line "beyond repair."

	para "The building is"
	line "mostly just a"
	cont "cemetery now."
	done

LavenderTownYoungsterText:
	text "People come from"
	line "all over to pay"

	para "their respects to"
	line "the departed souls"
	cont "of #MON."
	done

LavenderTownSignText:
	text "LAVENDER TOWN"

	para "The Noble Purple"
	line "Town"
	done

KantoRadioStationSignText:
	text "TOWER OF DEATH"
	done

VolunteerPokemonHouseSignText:
	text "LAVENDER VOLUNTEER"
	line "#MON HOUSE"
	done

SoulHouseSignText:
	text "KANTO MINIMUM"
	line "SECURITY PRISON"
	done

LavenderTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, LAVENDER_POKECENTER_1F, 1
	warp_event  5,  9, MR_FUJIS_HOUSE, 1
	warp_event  3, 13, LAVENDER_SPEECH_HOUSE, 1
	warp_event  7, 13, LAVENDER_NAME_RATER, 1
	warp_event  1,  5, LAVENDER_MART, 2
	warp_event 13, 11, LAV_RADIO_TOWER_1F, 2
	warp_event 14,  5, LAV_RADIO_TOWER_1F, 2

	def_coord_events

	def_bg_events
	bg_event 11,  3, BGEVENT_READ, LavenderTownSign
	bg_event 15,  7, BGEVENT_READ, KantoRadioStationSign
	bg_event  3,  9, BGEVENT_READ, VolunteerPokemonHouseSign
	bg_event 15, 13, BGEVENT_READ, SoulHouseSign
	bg_event  6,  5, BGEVENT_READ, LavenderPokecenterSignText
	bg_event  2,  5, BGEVENT_READ, LavenderMartSignText

	def_object_events
	object_event 12,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderTownPokefanMScript, -1
	object_event  2, 15, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LavenderTownTeacherScript, -1
	object_event  6, 11, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 1, LavenderTownYoungsterScript, -1
	object_event 13, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, LavenderTownPrisonScript, -1
	object_event 10,  8, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, LavenderTownCityPolice1Script, EVENT_BEAT_CITY_POLICE_LAVENDER
	object_event  2,  8, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, LavenderTownCityPolice2Script, EVENT_BEAT_CITY_POLICE_LAVENDER
