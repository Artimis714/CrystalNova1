	object_const_def

CitrineLab_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineLabTankScript:
	jumptext CitrineLabTankText

CitrineLabServerScript:
	jumptext CitrineLabServerText

CitrineLabBookshelfScript:
	jumptext CitrineLabBookshelfText

CitrineLabComputerScript:
	jumptext CitrineLabComputerText

CitrineLabComputerText:
	text "The monitor has"
	line "a screensaver of"

	para "EKANS coiling"
	line "across the screen."
	done

CitrineLabBookshelfText:
	text "Research journals"
	line "from the excava-"
	cont "tions at ALPH."

	para "Forced evolution."
	line "Code for the UP-"
	cont "GRADE prototype."
	done

CitrineLabTankText:
	text "This tank gleams"
	line "in the florescent"
	cont "lights."

	para "It appears to be"
	line "newly installed."
	done

CitrineLabServerText:
	text "These servers are"
	line "hot to the touch."

	para "The fans whirr"
	line "inside, struggling"
	cont "to cool them."
	done
	

CitrineLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0, 11, CITRINE_CITY, 17
	warp_event  1, 11, CITRINE_CITY, 17

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, CitrineLabTankScript
	bg_event  7,  1, BGEVENT_READ, CitrineLabTankScript
	bg_event  6,  4, BGEVENT_READ, CitrineLabServerScript
	bg_event  7,  4, BGEVENT_READ, CitrineLabServerScript
	bg_event  0,  1, BGEVENT_READ, CitrineLabServerScript
	bg_event  1,  1, BGEVENT_READ, CitrineLabServerScript
	bg_event  2,  1, BGEVENT_READ, CitrineLabServerScript
	bg_event  3,  1, BGEVENT_READ, CitrineLabServerScript
	bg_event 10,  1, BGEVENT_READ, CitrineLabServerScript
	bg_event 11,  1, BGEVENT_READ, CitrineLabServerScript
	bg_event 12,  1, BGEVENT_READ, CitrineLabServerScript
	bg_event 13,  1, BGEVENT_READ, CitrineLabServerScript
	bg_event  2,  4, BGEVENT_READ, CitrineLabBookshelfScript
	bg_event  3,  4, BGEVENT_READ, CitrineLabBookshelfScript
	bg_event  5,  4, BGEVENT_READ, CitrineLabComputerScript
	bg_event  9,  4, BGEVENT_READ, CitrineLabComputerScript

	def_object_events
