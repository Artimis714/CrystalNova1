	object_const_def
	const ROUTE7_OFFICER1
	const ROUTE7_OFFICER2

Route7_MapScripts:
	def_scene_scripts

	def_callbacks

Route7OfficerScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iftrue .OurMistake
	playmusic MUSIC_OFFICER_ENCOUNTER
	farwritetext KantoOfficerStopRightThere
	waitbutton
	showemote EMOTE_SHOCK, PLAYER, 15
	farwritetext KantoOfficerSpendNextMonth
	setevent EVENT_SAFFRON_ALERT
	setevent EVENT_CELADON_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_CELADON
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp NEW_BARK_TOWN, 13, 6
	end

.OurMistake:
	farwritetext MyMistakeText
	waitbutton
	closetext
	setevent EVENT_CLEARED_SAFFRON_GUARDS
	clearevent EVENT_SAFFRON_ALERT
	clearevent EVENT_CELADON_ALERT
	setevent EVENT_BEAT_CITY_POLICE_CELADON
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	disappear ROUTE7_OFFICER1
	disappear ROUTE7_OFFICER2
	waitsfx
	reloadmap
	end

Route7UndergroundPathSign:
	jumptext Route7UndergroundPathSignText

Route7LockedDoor:
	jumptext Route7LockedDoorText

Route7UndergroundPathSignText:
	text "What's this flyer?"

	para "… Uncouth trainers"
	line "have been holding"

	para "battles in the"
	line "UNDERGROUND PATH."

	para "Because of rising"
	line "complaints by lo-"
	cont "cal residents, the"
	cont "UNDERGROUND PATH"
	cont "has been sealed"
	cont "indefinitely."

	para "KANTO IMPERIAL"
	line "POLICE"
	done

Route7LockedDoorText:
	text "It's locked…"

	para "Someone has spray"
	line "painted a dick"
	cont "on the door."

	para "Good to see KANTO"
	line "is keeping it"
	cont "classy."
	done

Route7_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  6, ROUTE_7_SAFFRON_GATE, 1
	warp_event 15,  7, ROUTE_7_SAFFRON_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  5, 11, BGEVENT_READ, Route7UndergroundPathSign
	bg_event  6,  9, BGEVENT_READ, Route7LockedDoor

	def_object_events
	object_event  15,  6, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route7OfficerScript, EVENT_CLEARED_SAFFRON_GUARDS
	object_event  15,  7, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route7OfficerScript, EVENT_CLEARED_SAFFRON_GUARDS