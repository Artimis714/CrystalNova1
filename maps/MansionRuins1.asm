	object_const_def

MansionRuins1_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MansionRuins1FirstVisitCallback
	callback MAPCALLBACK_TILES, MansionRuins1StairsCallback

MansionRuins1FirstVisitCallback:
	setevent EVENT_CLEAR_VOLCANO_SMASH
	setevent EVENT_MANSION_PORYGON
	setevent EVENT_MANSION_PORYGON2
	endcallback

MansionRuins1StairsCallback:
	checkevent EVENT_MANSION_SWITCH_1
	iffalse .StairsHidden
	checkevent EVENT_MANSION_SWITCH_2
	iffalse .StairsHidden
	changeblock 2, 20, $52 ; visible stairs
	endcallback

.StairsHidden:
	changeblock 2, 20, $40 ; hidden stairs
	endcallback

MansionRuins1CheckStairs:
	checkevent EVENT_MANSION_SWITCH_1
	iffalse .StairsHidden
	checkevent EVENT_MANSION_SWITCH_2
	iffalse .StairsHidden
	changeblock 2, 20, $52 ; visible stairs
	sjump .Reload

.StairsHidden:
	changeblock 2, 20, $40 ; hidden stairs

.Reload:
	reloadmappart
	end

SecretSwitch1Script:
	opentext
	writetext SecretSwitchText
	yesorno
	iffalse .Done
	writetext SecretSwitchPressedText
	waitbutton
	checkevent EVENT_MANSION_SWITCH_1
	iftrue .TurnOff
	setevent EVENT_MANSION_SWITCH_1
	sjump MansionRuins1CheckStairs
.TurnOff:
	clearevent EVENT_MANSION_SWITCH_1
	sjump MansionRuins1CheckStairs
.Done:
	closetext
	end

SecretSwitch2Script:
	opentext
	writetext SecretSwitchText
	yesorno
	iffalse .Done
	writetext SecretSwitchPressedText
	waitbutton
	checkevent EVENT_MANSION_SWITCH_2
	iftrue .TurnOff
	setevent EVENT_MANSION_SWITCH_2
	sjump MansionRuins1CheckStairs
.TurnOff:
	clearevent EVENT_MANSION_SWITCH_2
	sjump MansionRuins1CheckStairs
.Done:
	closetext
	end

BulbasaurtwoScript:
	jumptext Bulbasaurtwotext

CharmandertwoScript:
	jumptext Charmandertwotext

SquirtletwoScript:
	jumptext Squirtletwotext

AmberTwoScript:
	jumptext Ambertwotext

BrokenTombstoneScript:
	jumptext BrokenTombstoneText

SecretSwitchText:
	text "It's a secret"
	line "switch! Press it?"
	done

SecretSwitchPressedText:
	text "Who wouldn't?"
	done

Bulbasaurtwotext:
	text "BULBASURTWO"
	line "1993 - 1993"

	para "An experimental"
	line "clone of a"
	cont "BULBASAUR."

	para "It did not survive"
	line "the procedure."
	done

Charmandertwotext:
	text "CHARMANDERTWO"
	line "1993 - 1993"

	para "An experimental"
	line "clone of a"
	cont "CHARMANDER."

	para "It did not survive"
	line "the procedure."
	done

Squirtletwotext:
	text "SQUIRTLETWO"
	line "1993 - 1993"

	para "An experimental"
	line "clone of a"
	cont "SQUIRTLE."

	para "It did not survive"
	line "the procedure."
	done

Ambertwotext:
	text "AMBERTWO FUJI"
	line "1994 - 1994"

	para "may the FOREST"
	line "PROTECTOR guide"
	cont "her spirit."
	done

BrokenTombstoneText:
	text "The tombstone"
	line "has been smashed."

	para "There is no name"
	line "or inscription."

	para "Only a few letters"
	line "remain…"

	para "…TWO."
	done

MansionRuins1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 16, CINNABAR_VOLCANO_1F, 5
	warp_event  2, 20, MANSION_RUINS_2, 1

	def_coord_events

	def_bg_events
	bg_event  2,  4, BGEVENT_READ, BulbasaurtwoScript
	bg_event  3,  4, BGEVENT_READ, CharmandertwoScript
	bg_event  4,  4, BGEVENT_READ, SquirtletwoScript
	bg_event  2,  2, BGEVENT_READ, AmberTwoScript
	bg_event  4,  2, BGEVENT_READ, BrokenTombstoneScript
	bg_event 19,  2, BGEVENT_READ, SecretSwitch1Script
	bg_event  2, 27, BGEVENT_READ, SecretSwitch2Script

	def_object_events
