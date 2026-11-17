	object_const_def
	const MAYOR2_CLERK
	const MAYOR2_BEAUTY
	const MAYOR2_GIOVANNI

CitrineMayorF2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CitrineMayorOfficeFloor2Callback

CitrineMayorOfficeFloor2Callback:
	readvar VAR_WEEKDAY
	ifequal FRIDAY, .ShowGiovanni

.HideGiovanni:
	disappear MAYOR2_GIOVANNI
	endcallback

.ShowGiovanni:
	appear MAYOR2_GIOVANNI
	endcallback

CitrineMayorOfficeSeniorAdmin:
	jumptextfaceplayer CitrineMayorOfficeSeniorAdminText

CitrineMayorOfficeSecretary:
	checktime DAY
	iffalse .Away
	readvar VAR_WEEKDAY
	ifnotequal FRIDAY, .Away
	jumptextfaceplayer CitrineMayorOfficeSecretaryBusyText

.Away
	jumptextfaceplayer CitrineMayorOfficeSecretaryAwayText

CitrineMayorOfficeGiovanni:
	jumptextfaceplayer CitrineMayorOfficeGiovanniText

CitrineMayorOfficeSeniorAdminSign:
	jumptext CitrineMayorOfficeSeniorAdminSignText

CitrineMayorOfficeBoardroomSign:
	jumptext CitrineMayorOfficeBoardroomSignText

CitrineMayorOfficeMayorSign:
	jumptext CitrineMayorOfficeMayorSignText

CitrineMayorOfficeBookshelf2:
	jumptext CitrineMayorOfficeBookshelf2Text

CitrineMayorOfficeSeniorAdminMonitor:
	jumptext CitrineMayorOfficeSeniorAdminMonitorText

CitrineMayorOfficeSecretaryMonitor:
	jumptext CitrineMayorOfficeSecretaryMonitorText

CitrineMayorOfficeGiovanniMonitor:
	jumptext CitrineMayorOfficeGiovanniScreensaverText

CitrineMayorOfficeGiovanniKeyboard:
	opentext
	writetext CitrineMayorOfficeKeyboardText
	waitbutton
	closetext
	end

CitrineMayorOfficeAmphora:
	jumptext CitrineMayorOfficeAmphoraText

CitrineMayorOfficeSeniorAdminSignText:
	text "SENIOR"
	line "ADMINISTRATION"
	done

CitrineMayorOfficeBoardroomSignText:
	text "BOARD ROOM"
	line "AUTHORIZED STAFF"
	cont "ONLY"
	done

CitrineMayorOfficeMayorSignText:
	text "MAYOR GIOVANNI'S"
	line "OFFICE"
	done

CitrineMayorOfficeBookshelf2Text:
	text "SEVII REGION"
	line "HISTORY AND"
	cont "PUBLIC RECORDS."

	para "TAXATION, TRADE,"
	line "AND DEVELOPMENT."
	done

CitrineMayorOfficeSeniorAdminMonitorText:
	text "A COMPLEX"
	line "SPREADSHEET."

	para "BUDGETS, STAFFING,"
	line "AND APPROVALS."
	done

CitrineMayorOfficeSecretaryMonitorText:
	text "MAYOR'S SCHEDULE"

	para "CURRENT LOCATION:"
	line "SAFFRON CITY"
	cont "SILPH CO."

	para "RETURNING THIS"
	line "FRIDAY."
	done

CitrineMayorOfficeGiovanniScreensaverText:
	text "A PERSIAN SLEEPS"
	line "ON THE SCREEN."

	para "Z Z Z Z Z..."
	done

CitrineMayorOfficeKeyboardText:
	text "You toggle the"
	line "mouse."

	para "The screen wakes"
	line "up."

	para "A list of files"
	line "appears."

	para "Every file is"
	line "ENCRYPTED."
	done


CitrineMayorOfficeAmphoraText:
	text "A TANOBY WEAR"
	line "AMPHORA."

	para "It appears to be"
	line "completely intact."

	para "A stylized"
	line "OCTILLERY adorns"
	cont "the surface."

	para "Its design is"
	line "distinctly"
	cont "TANOBY."
	done

CitrineMayorOfficeGiovanniText:
	text "Who are you?"

	para "How did you get"
	line "in here?"

	para "This is a private"
	line "office!"

	para "Get out. Now."
	done

CitrineMayorOfficeSecretaryAwayText:
	text "The MAYOR is"
	line "away from his"
	cont "desk at present."

	para "I'm afraid you'll"
	line "have to come"
	cont "back another time."
	done

CitrineMayorOfficeSecretaryBusyText:
	text "The MAYOR is"
	line "quite busy today."

	para "I'm afraid he"
	line "cannot accept"
	cont "any meetings."
	done

CitrineMayorOfficeSeniorAdminText:
	text "I'm afraid this"
	line "floor is reserved"
	cont "for senior staff."

	para "You don't have"
	line "authorization to"
	cont "be up here."

	para "Please return to"
	line "the public floor."
	done

CitrineMayorF2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, CITRINE_MAYOR_1F, 3
	warp_event 11,  0, CITRINE_CITY, 20

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, CitrineMayorOfficeSeniorAdminSign
	bg_event  3,  6, BGEVENT_READ, CitrineMayorOfficeBoardroomSign
	bg_event 10,  6, BGEVENT_READ, CitrineMayorOfficeMayorSign
	bg_event  3,  1, BGEVENT_READ, CitrineMayorOfficeBookshelf2
	bg_event 11,  7, BGEVENT_READ, CitrineMayorOfficeBookshelf2
	bg_event  2,  1, BGEVENT_READ, CitrineMayorOfficeSeniorAdminMonitor
	bg_event 12, 10, BGEVENT_READ, CitrineMayorOfficeSecretaryMonitor
	bg_event 12,  2, BGEVENT_READ, CitrineMayorOfficeGiovanniMonitor
	bg_event 11,  2, BGEVENT_READ, CitrineMayorOfficeGiovanniKeyboard
	bg_event  4,  7, BGEVENT_READ, CitrineMayorOfficeAmphora

	def_object_events
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CitrineMayorOfficeSeniorAdmin, -1
	object_event 11, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineMayorOfficeSecretary, -1
	object_event 11,  4, SPRITE_GIOVANNI, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 1, -1, DAY, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CitrineMayorOfficeGiovanni, -1
