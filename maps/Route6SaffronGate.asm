	object_const_def
	const ROUTE6SAFFRONGATE_OFFICER

Route6SaffronGate_MapScripts:
	def_scene_scripts
	scene_script Route6SaffronGateNoopScene ; unusable

	def_callbacks

Route6SaffronGateNoopScene:
	end

Route6SaffronGuardScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iftrue .NoFight
	checkevent EVENT_BEAT_GATE_GUARD6
	iftrue .AfterScript
	playmusic MUSIC_OFFICER_ENCOUNTER
	farwritetext KantoOfficerStopRightThere
	waitbutton
	closetext
	winlosstext OfficerGuard6WinText, 0
	loadtrainer OFFICER, GUARD
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GATE_GUARD6
	closetext
	end

.AfterScript:
	farwritetext KantoOfficerDontTellAnybody
	waitbutton
	closetext
	end

.NoFight:
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedPart
	farwritetext KantoOfficerHaveaNiceDay
	waitbutton
	closetext
	end

.ReturnedPart:
	writetext Route6SaffronGuardMagnetTrainText
	waitbutton
	closetext
	end

OfficerGuard6WinText:
	text "Fine, if anyone"
	line "asks, I didn't"
	cont "see you."
	done

Route6SaffronGuardMagnetTrainText:
	text "It's good that"
	line "the MAGNET TRAIN"

	para "is up and running"
	line "again."

	para "We need to keep on"
	line "our toes because"

	para "those JHOTO scum"
	line "are always trying"
	cont "to get revenge."

	para "..."
	line "..."

	para "Yes, I know you're"
	line "from JHOTO."

	para "Like I said, we"
	line "REAL CITIZENS"

	para "need to keep on"
	line "our toes."
	done

Route6SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, SAFFRON_CITY, 12
	warp_event  5,  0, SAFFRON_CITY, 13
	warp_event  4,  7, ROUTE_6, 2
	warp_event  5,  7, ROUTE_6, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route6SaffronGuardScript, -1
