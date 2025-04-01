	object_const_def
	const ROUTE5SAFFRONGATE_OFFICER

Route5SaffronGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route5SaffronGateOfficerScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iftrue .NoFight
	checkevent EVENT_BEAT_GATE_GUARD5
	iftrue .AfterScript
	playmusic MUSIC_OFFICER_ENCOUNTER
	farwritetext KantoOfficerStopRightThere
	waitbutton
	closetext
	winlosstext OfficerGuard5WinText, 0
	loadtrainer OFFICER, GUARD
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GATE_GUARD5
	closetext
	end

.AfterScript:
	farwritetext KantoOfficerDontTellAnybody
	waitbutton
	closetext
	end

.NoFight:
	farwritetext KantoOfficerHaveaNiceDay
	waitbutton
	closetext
	end

OfficerGuard5WinText:
	text "Fine, if anyone"
	line "asks, I didn't"
	cont "see you."
	done

Route5SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_5, 2
	warp_event  5,  0, ROUTE_5, 3
	warp_event  4,  7, SAFFRON_CITY, 9
	warp_event  5,  7, SAFFRON_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5SaffronGateOfficerScript, -1
