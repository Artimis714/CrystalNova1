	object_const_def
	const ROUTE5_OFFICER1
	const ROUTE5_OFFICER2

Route5_MapScripts:
	def_scene_scripts

	def_callbacks

Route5OfficerScript:
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
	setevent EVENT_CERULEAN_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_CERULEAN
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
	clearevent EVENT_CERULEAN_ALERT
	setevent EVENT_BEAT_CITY_POLICE_CERULEAN
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	disappear ROUTE5_OFFICER1
	disappear ROUTE5_OFFICER2
	waitsfx
	reloadmap
	end

Route5UndergroundPathSign:
	jumptext Route5UndergroundPathSignText

HouseForSaleSign:
	jumptext HouseForSaleSignText

Route5UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

HouseForSaleSignText:
	text "What's this?"

	para "House for Sale…"
	line "Nobody lives here."
	done

Route5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 15, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  8, 17, ROUTE_5_SAFFRON_GATE, 1
	warp_event  9, 17, ROUTE_5_SAFFRON_GATE, 2
	warp_event 10, 11, ROUTE_5_CLEANSE_TAG_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 17, 17, BGEVENT_READ, Route5UndergroundPathSign
	bg_event 10, 11, BGEVENT_READ, HouseForSaleSign

	def_object_events
	object_event  8, 16, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5OfficerScript, EVENT_CLEARED_SAFFRON_GUARDS
	object_event  9, 16, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5OfficerScript, EVENT_CLEARED_SAFFRON_GUARDS
