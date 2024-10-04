	object_const_def
	const FUCHSIACITY_YOUNGSTER
	const FUCHSIACITY_POKEFAN_M
	const FUCHSIACITY_TEACHER
	const FUCHSIACITY_FRUIT_TREE
	const FUCHSIACITY_OFFICER1
	const FUCHSIACITY_OFFICER2
	const FUCHSIACITY_OFFICER3

FuchsiaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, FuchsiaCityFlypointCallback

FuchsiaCityFlypointCallback:
	setflag ENGINE_FLYPOINT_FUCHSIA
	endcallback

FuchsiaCityYoungster:
	jumptextfaceplayer FuchsiaCityYoungsterText

FuchsiaCityPokefanM:
	jumptextfaceplayer FuchsiaCityPokefanMText

FuchsiaCityTeacher:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .FuchsiaAlert
	checkevent EVENT_FUCHSIA_ALERT
	iftrue .GetAwayfromMe
	writetext FuchsiaCityTeacherText
	waitbutton
	closetext
	end

.FuchsiaAlert:
	farwritetext OhHeyDerKiddoText
	showemote EMOTE_SHOCK, FUCHSIACITY_POKEFAN_M, 15
	farwritetext ImCallingtheCopsDerEh
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	setevent EVENT_FUCHSIA_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_FUCHSIA
	end

.GetAwayfromMe:
	farwritetext GetAwayFromMeEhText
	waitbutton
	closetext
	end

FuchsiaCitySign:
	jumptext FuchsiaCitySignText

FuchsiaGymSign:
	jumptext FuchsiaGymSignText

SafariZoneOfficeSign:
	jumptext SafariZoneOfficeSignText

WardensHomeSign:
	jumptext WardensHomeSignText

SafariZoneClosedSign:
	jumptext SafariZoneClosedSignText

NoLitteringSign:
	jumptext NoLitteringSignText

FuchsiaCityPokecenterSign:
	jumpstd PokecenterSignScript

FuchsiaCityMartSign:
	jumpstd MartSignScript

FuchsiaCityFruitTree:
	fruittree FRUITTREE_FUCHSIA_CITY

FuchsiaTownCityPolice4Script:
	trainer OFFICER, JERICHO, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8, FuchsiaPoliceSeenText, FuchsiaPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FuchsiaPoliceAfterBattleText
	waitbutton
	closetext
	end

FuchsiaTownCityPolice3Script:
	trainer OFFICER, GUARD, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7, FuchsiaPoliceSeenText, FuchsiaPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FuchsiaPoliceAfterBattleText
	waitbutton
	closetext
	end

FuchsiaTownCityPolice2Script:
	trainer OFFICER, RAXIL, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6, FuchsiaPoliceSeenText, FuchsiaPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FuchsiaPoliceAfterBattleText
	waitbutton
	closetext
	end

FuchsiaTownCityPolice1Script:
	trainer OFFICER, CITYPOLICE, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5, FuchsiaPoliceSeenText, FuchsiaPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FuchsiaPoliceAfterBattleText
	waitbutton
	closetext
	end

FuchsiaPoliceSeenText:
	text "HEY! YOU!!!"

	para "STOP RIGHT THERE!"

	para "..."
	line "..."

	para "You're wanted by"
	line "the FUCHSIA"
	cont "POLICE!"

	para "..."
	line "..."

	para "You're under"
	line "arrest!"
	done

FuchsiaPoliceAfterBattleText:
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

FuchsiaPoliceWinText:
	text "On behalf of the"
	line "FUCHSIA POLICE"

	para "You're free to"
	line "go."
	done

FuchsiaCityYoungsterText:
	text "One of the ELITE"
	line "FOUR used to be"

	para "the LEADER of"
	line "FUCHSIA's GYM."

	para "..."
	line "..."

	para "Really? you battl-"
	line "ed him?"
	done

FuchsiaCityPokefanMText:
	text "KOGA's daughter"
	line "succeeded him as"

	para "the GYM LEADER"
	line "after he joined"
	cont "the ELITE FOUR."

	para "..."
	line "..."

	para "Yeah, she's not"
	line "the same level of"
	cont "ninja as her dad."
	done

FuchsiaCityTeacherText:
	text "The SAFARI ZONE is"
	line "closed… It's sad,"

	para "considering it's"
	line "FUCHSIA's main"
	cont "attraction."

	para "The town was badly"
	line "bombed during the"
	cont "war."

	para "And Poachers came"
	line "to the SAFARI"
	cont "ZONE."

	para "When things finally"
	line "were back under"

	para "control, the ZONE"
	line "had to be shut for"
	cont "conservation."
	done

FuchsiaCitySignText:
	text "FUCHSIA CITY"

	para "Behold! It's"
	line "Passion Pink!"
	done

FuchsiaGymSignText:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: JANINE"

	para "The Poisonous"
	line "Ninja Master"
	done

SafariZoneOfficeSignText:
	text "There's a notice"
	line "here…"

	para "SAFARI ZONE OFFICE"
	line "is closed until"
	cont "further notice."

	para "Conservation"
	line "efforts remain"
	cont "ongoing."

	para "FUCHSIA CAFE is"
	line "still open for"
	cont "business!"
	done

WardensHomeSignText:
	text "SAFARI ZONE"
	line "WARDEN'S HOME"
	done

SafariZoneClosedSignText:
	text "The SAFARI ZONE"
	line "is under strict"
	cont "surveillance."

	para "Trespassers will"
	line "be penalized, and"
	
	para "have their citizen"
	line "ship revoked."
	done

NoLitteringSignText:
	text "No littering."

	para "Please take your"
	line "waste with you."

	para "Thank you for"
	line "helping FUCHSIA"

	para "CITY work towards"
	line "SUSTAINABILITY."

	para "FUCHSIA CITY,"
	line "Where even Pink"
	cont "can be Green!"
	done

FuchsiaCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, FUCHSIA_MART, 2
	warp_event 22, 13, SAFARI_ZONE_MAIN_OFFICE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 11, 27, BILLS_BROTHERS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 27, 27, SAFARI_ZONE_WARDENS_HOME, 1
	warp_event 18,  3, SAFARI_ZONE_FUCHSIA_GATE_BETA, 3 ; inaccessible
	warp_event 37, 22, ROUTE_15_FUCHSIA_GATE, 1
	warp_event 37, 23, ROUTE_15_FUCHSIA_GATE, 2
	warp_event  7, 35, ROUTE_19_FUCHSIA_GATE, 1
	warp_event  8, 35, ROUTE_19_FUCHSIA_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 21, 15, BGEVENT_READ, FuchsiaCitySign
	bg_event  5, 29, BGEVENT_READ, FuchsiaGymSign
	bg_event 25, 15, BGEVENT_READ, SafariZoneOfficeSign
	bg_event 27, 29, BGEVENT_READ, WardensHomeSign
	bg_event 17,  5, BGEVENT_READ, SafariZoneClosedSign
	bg_event 13, 15, BGEVENT_READ, NoLitteringSign
	bg_event 20, 27, BGEVENT_READ, FuchsiaCityPokecenterSign
	bg_event  6, 13, BGEVENT_READ, FuchsiaCityMartSign

	def_object_events
	object_event 23, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster, -1
	object_event 13,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokefanM, -1
	object_event 16, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityTeacher, -1
	object_event  8,  1, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityFruitTree, -1
	object_event 18, 28, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, FuchsiaTownCityPolice1Script, EVENT_BEAT_CITY_POLICE_FUCHSIA
	object_event 35, 22, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, FuchsiaTownCityPolice2Script, EVENT_BEAT_CITY_POLICE_FUCHSIA
	object_event 10, 33, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, FuchsiaTownCityPolice3Script, EVENT_BEAT_CITY_POLICE_FUCHSIA
	object_event  7, 21, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, FuchsiaTownCityPolice4Script, EVENT_BEAT_CITY_POLICE_FUCHSIA
