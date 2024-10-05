	object_const_def
	const ROUTE19FUCHSIAGATE_OFFICER

Route19FuchsiaGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route19FuchsiaGateOfficerScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iftrue .NoFight
	checkevent EVENT_BEAT_GATE_GUARD19
	iftrue .AfterScript
	playmusic MUSIC_OFFICER_ENCOUNTER
	farwritetext KantoOfficerStopRightThere
	waitbutton
	closetext
	winlosstext OfficerGuard19WinText, 0
	loadtrainer OFFICER, GUARD
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GATE_GUARD19
	closetext
	end

.AfterScript:
	farwritetext KantoOfficerDontTellAnybody
	waitbutton
	closetext
	end

.NoFight:
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .RocksCleared
	farwritetext KantoOfficerHaveaNiceDay
	waitbutton
	closetext
	end

.RocksCleared:
	writetext Route19FuchsiaGateOfficerText_RocksCleared
	waitbutton
	closetext
	end

OfficerGuard19WinText:
	text "Fine, if anyone"
	line "asks, I didn't"
	cont "see you."
	done

Route19FuchsiaGateOfficerText_RocksCleared:
	text "Damn JOHTO rebels"
	line "somehow found a"

	para "way to set off"
	line "the CINNABAR vol-"
	cont "cano!"

	para "Bastards deserve"
	line "everything they"

	para "got in the war,"
	line "after what they"
	cont "did to us!"
	done

Route19FuchsiaGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, FUCHSIA_CITY, 10
	warp_event  5,  0, FUCHSIA_CITY, 11
	warp_event  4,  7, ROUTE_19, 1
	warp_event  5,  7, ROUTE_19, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route19FuchsiaGateOfficerScript, -1
