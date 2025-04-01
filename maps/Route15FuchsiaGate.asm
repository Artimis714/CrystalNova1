	object_const_def
	const ROUTE15FUCHSIAGATE_OFFICER

Route15FuchsiaGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route15FuchsiaGateOfficerScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iftrue .NoFight
	checkevent EVENT_BEAT_GATE_GUARD15
	iftrue .AfterScript
	playmusic MUSIC_OFFICER_ENCOUNTER
	farwritetext KantoOfficerStopRightThere
	waitbutton
	closetext
	winlosstext OfficerGuard15WinText, 0
	loadtrainer OFFICER, GUARD
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GATE_GUARD15
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

OfficerGuard15WinText:
	text "Fine, if anyone"
	line "asks, I didn't"
	cont "see you."
	done

Route15FuchsiaGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, FUCHSIA_CITY, 8
	warp_event  0,  5, FUCHSIA_CITY, 9
	warp_event  9,  4, ROUTE_15, 1
	warp_event  9,  5, ROUTE_15, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route15FuchsiaGateOfficerScript, -1
