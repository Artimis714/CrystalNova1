	object_const_def
	const MAYOR1_RECEPTIONIST
	const MAYOR1_CLERK1
	const MAYOR1_CLERK2
	const MAYOR1_PRESENTER
	const MAYOR1_PARTICIPANT1
	const MAYOR1_PARTICIPANT2

CitrineMayorF1_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineMayorOfficeReceptionist:
	jumptextfaceplayer CitrineMayorOfficeReceptionistText

CitrineMayorOfficeClerk1:
	jumptextfaceplayer CitrineMayorOfficeClerk1Text

CitrineMayorOfficeClerk2:
	jumptextfaceplayer CitrineMayorOfficeClerk2Text

CitrineMayorOfficePresenter:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .Tanoby
	ifequal WEDNESDAY, .Tanoby
	ifequal SATURDAY, .Tanoby
	ifequal FRIDAY, .Giovanni
	jumptextfaceplayer CitrineMayorOfficePresenterGenesisText

.Tanoby:
	jumptextfaceplayer CitrineMayorOfficePresenterText

.Giovanni:
	jumptextfaceplayer CitrineMayorOfficePresenterGiovanniText

CitrineMayorOfficeAttendee1:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .Tanoby
	ifequal WEDNESDAY, .Tanoby
	ifequal SATURDAY, .Tanoby
	ifequal FRIDAY, .Giovanni
	jumptextfaceplayer CitrineMayorOfficeAttendee1GenesisText

.Tanoby:
	jumptextfaceplayer CitrineMayorOfficeAttendee1Text

.Giovanni:
	jumptextfaceplayer CitrineMayorOfficeAttendee1GiovanniText

CitrineMayorOfficeAttendee2:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .Tanoby
	ifequal WEDNESDAY, .Tanoby
	ifequal SATURDAY, .Tanoby
	ifequal FRIDAY, .Giovanni
	jumptextfaceplayer CitrineMayorOfficeAttendee2GenesisText

.Tanoby:
	jumptextfaceplayer CitrineMayorOfficeAttendee2Text

.Giovanni:
	jumptextfaceplayer CitrineMayorOfficeAttendee2GiovanniText


PresentationTVScript:
	checktime MORN
	iffalse .Screensaver

	readvar VAR_WEEKDAY
	ifequal MONDAY, .Tanoby
	ifequal WEDNESDAY, .Tanoby
	ifequal SATURDAY, .Tanoby
	ifequal FRIDAY, .Giovanni
	jumptext PresentationTVGenesisText

.Tanoby:
	jumptext PresentationTVTanobyText

.Giovanni:
	jumptext PresentationTVGiovanniText

.Screensaver:
	jumptext PresentationTVScreensaverText


CitrineMayorOfficeAdminSign:
	jumptext CitrineMayorOfficeAdminSignText

CitrineMayorOfficeMeetingSign:
	jumptext CitrineMayorOfficeMeetingSignText

CitrineMayorOfficeDirectorySign:
	jumptext CitrineMayorOfficeDirectorySignText

CitrineMayorOfficeBookshelf:
	jumptext CitrineMayorOfficeBookshelfText

CitrineMayorOfficeReceptionMonitor:
	jumptext PresentationTVScreensaverText

CitrineMayorOfficeAdminMonitor:
	jumptext CitrineMayorOfficeAdminMonitorText

CitrineMayorOfficeAdminSignText:
	text "ADMINISTRATION"
	line "AUTHORIZED STAFF"
	cont "ONLY"
	done

CitrineMayorOfficeMeetingSignText:
	text "MEETING ROOM"
	line "PLEASE KNOCK"
	done

CitrineMayorOfficeDirectorySignText:
	text "SENIOR ADMIN"
	line "MEETING ROOM"
	cont "MAYOR'S OFFICE"
	done

CitrineMayorOfficeBookshelfText:
	text "SEVII REGION"
	line "HISTORY AND"
	cont "PUBLIC RECORDS."

	para "TAXATION, TRADE,"
	line "AND DEVELOPMENT."
	done

CitrineMayorOfficeAdminMonitorText:
	text "A SPREADSHEET"
	line "FULL OF NUMBERS."

	para "TAX REVENUE,"
	line "EXPENDITURE,"
	cont "AND FORECASTS."
	done

PresentationTVScreensaverText:
	text "BOUNCE! BOUNCE!"
	line "Gotta catch 'em"
	cont "all!"
	done

PresentationTVTanobyText:
	text "TANOBY RUINS"
	line "EXCAVATION PLAN"

	para "Preserving our"
	line "past, uncovering"
	cont "our history."
	done

PresentationTVGiovanniText:
	text "MAYOR GIOVANNI"
	line "RETURNING TODAY"

	para "Arrival expected"
	line "this afternoon."
	done

PresentationTVGenesisText:
	text "BIOMEDICAL"
	line "RESEARCH FACILITY"

	para "PROJECT GENESIS"
	line "Restart progress"
	cont "on schedule."
	done

CitrineMayorOfficePresenterGiovanniText:
	text "Our MAYOR,"
	line "GIOVANNI, returns"
	cont "this afternoon."

	para "We should have"
	line "everything ready"
	cont "for his arrival."

	para "There are several"
	line "matters awaiting"
	cont "his attention."
	done

CitrineMayorOfficeAttendee1GiovanniText:
	text "It's good to have"
	line "the MAYOR back."

	para "I'm sure he'll"
	line "want to hear how"
	cont "things have been"
	cont "going here."
	done

CitrineMayorOfficeAttendee2GiovanniText:
	text "I hope the MAYOR"
	line "has a little time"
	cont "for our concerns."

	para "We've got quite"
	line "a few things to"
	cont "bring up with him."
	done

CitrineMayorOfficePresenterGenesisText:
	text "The new biomedical"
	line "research facility"
	cont "is progressing"
	cont "according to plan."

	para "Its work could"
	line "bring great"
	cont "benefits to the"
	cont "SEVII REGION."
	done

CitrineMayorOfficeAttendee1GenesisText:
	text "I heard they're"
	line "making excellent"
	cont "progress with"
	cont "PROJECT GENESIS."

	para "They're well on"
	line "track to restart"
	cont "the project."
	done

CitrineMayorOfficeAttendee2GenesisText:
	text "I still have"
	line "questions about"
	cont "the facility's"
	cont "funding."

	para "It's a sizeable"
	line "investment, but"
	cont "the department"
	cont "seems confident."
	done

CitrineMayorOfficeAttendee2Text:
	text "Research is all"
	line "well and good, but"
	cont "we can't ignore"
	cont "the cost of"
	cont "another dig."

	para "The guards, the"
	line "equipment, the"
	cont "supplies… It all"
	cont "adds up."
	done

CitrineMayorOfficeAttendee1Text:
	text "The TANOBY RUINS"
	line "are one of the"
	cont "most fascinating"
	cont "historical sites"
	cont "in the region."

	para "I believe we"
	line "should do whatever"
	cont "we can to learn"
	cont "more about them."
	done

CitrineMayorOfficePresenterText:
	text "As you can see,"
	line "the TANOBY RUINS"
	cont "remain important"
	cont "to our region's"
	cont "heritage."

	para "Further excavation"
	line "could help us"
	cont "learn more about"
	cont "the people who"
	cont "lived there."

	para "Of course, we must"
	line "balance research"
	cont "with preservation."
	done

CitrineMayorOfficeClerk2Text:
	text "There's a sizeable"
	line "budget allocated"
	cont "to the biomedical"
	cont "research facility."

	para "I don't know much"
	line "about what they"
	cont "actually do there."

	para "That's handled by"
	line "a different"
	cont "department."
	done

CitrineMayorOfficeClerk1Text:
	text "I'm working on"
	line "the budget for"
	cont "the TANOBY RUINS."

	para "Excavations are"
	line "expensive enough,"
	cont "but we also need"
	cont "to make sure the"
	cont "site is properly"
	cont "guarded."

	para "It's not easy"
	line "getting everything"
	cont "approved."
	done

CitrineMayorOfficeReceptionistText:
	text "Welcome to the"
	line "SEVII REGIONAL"
	cont "GOVERNMENT OFFICE."

	para "How may I direct"
	line "you today?"

	para "If you have an"
	line "appointment, the"
	cont "right office will"
	cont "be happy to"
	cont "assist you."
	done

CitrineMayorF1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 12, CITRINE_CITY, 19
	warp_event  3, 12, CITRINE_CITY, 19
	warp_event  4,  0, CITRINE_MAYOR_2F, 1

	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, PresentationTVScript
	bg_event  5,  8, BGEVENT_READ, CitrineMayorOfficeAdminSign
	bg_event 10,  8, BGEVENT_READ, CitrineMayorOfficeMeetingSign
	bg_event  5,  0, BGEVENT_READ, CitrineMayorOfficeDirectorySign
	bg_event  3,  1, BGEVENT_READ, CitrineMayorOfficeBookshelf
	bg_event  3,  9, BGEVENT_READ, CitrineMayorOfficeBookshelf
	bg_event 11,  9, BGEVENT_READ, CitrineMayorOfficeBookshelf
	bg_event  2,  9, BGEVENT_READ, CitrineMayorOfficeReceptionMonitor
	bg_event  2,  1, BGEVENT_READ, CitrineMayorOfficeAdminMonitor
	bg_event  3,  4, BGEVENT_READ, CitrineMayorOfficeAdminMonitor

	def_object_events
	object_event  1, 10, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CitrineMayorOfficeReceptionist, -1
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CitrineMayorOfficeClerk1, -1
	object_event  2,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CitrineMayorOfficeClerk2, -1
	object_event 10,  1, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, MORN, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CitrineMayorOfficePresenter, -1
	object_event  9,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, MORN, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CitrineMayorOfficeAttendee1, -1
	object_event 11,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CitrineMayorOfficeAttendee2, -1
