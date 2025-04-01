	object_const_def
	const VICTORYROADGATE_OFFICER
	const VICTORYROADGATE_BLACK_BELT1
	const VICTORYROADGATE_BLACK_BELT2

VictoryRoadGate_MapScripts:
	def_scene_scripts
	scene_script VictoryRoadGateNoop1Scene, SCENE_VICTORYROADGATE_BADGE_CHECK
	scene_script VictoryRoadGateNoop2Scene, SCENE_VICTORYROADGATE_NOOP

	def_callbacks

VictoryRoadGateNoop1Scene:
	end

VictoryRoadGateNoop2Scene:
	end

VictoryRoadGateBadgeCheckScript:
	turnobject PLAYER, LEFT
	sjump _VictoryRoadGateBadgeCheckScript

VictoryRoadGateOfficerScript:
	faceplayer
_VictoryRoadGateBadgeCheckScript:
	opentext
	writetext VictoryRoadGateOfficerText
	promptbutton
	readvar VAR_BADGES
	ifgreater NUM_JOHTO_BADGES - 1, .AllEightBadges
	writetext VictoryRoadGateNotEnoughBadgesText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp NEW_BARK_TOWN, 13, 6
	end

.AllEightBadges:
	writetext VictoryRoadGateEightBadgesText
	waitbutton
	closetext
	setscene SCENE_VICTORYROADGATE_NOOP
	end

VictoryRoadGateLeftBlackBeltScript:
	jumptextfaceplayer VictoryRoadGateLeftBlackBeltText

VictoryRoadGateRightBlackBeltScript:
	jumptextfaceplayer VictoryRoadGateRightBlackBeltText

VictoryRoadGateStepDownMovement:
	step DOWN
	step_end

VictoryRoadGateOfficerText:
	text "Hold it right"
	line "there!"

	para "only full KANTO"
	line "CITIZENS may"
	cont "pass."

	para "Please present"
	line "your papers."
	done

VictoryRoadGateNotEnoughBadgesText:
	text "You're from JOHTO"
	line "You have no"
	cont "business here."

	para "..."
	line "..."

	para "Yes, a JOHTO"
	line "resident who"

	para "somehow collects"
	line "all eight JOHTO"
	cont "badges is allowed"

	para "to challenge the"
	line "ELITE FOUR in a"

	para "bid to earn full"
	line "citizenship."

	para "But it looks like"
	line "you only have 7."

	para "Nice try kid."
	line "get lost."
	done

VictoryRoadGateEightBadgesText:
	text "You're from JOHTO"
	line "You have no"
	cont "business here."

	para "..."
	line "..."

	para "Hmmm... I see"
	line "You've somehow"

	para "collected all 8"
	line "of JOHTO's GYM"
	cont "BADGES."

	para "I don't want to"
	line "allow you entry"
	cont "to VICTORY ROAD."

	para "JOHTO scum like"
	line "you murdered my"
	cont "younger brother."

	para "But the cameras"
	line "in here will"

	para "prevent me from"
	line "turning you away."

	para "I hope you're"
	line "crushed."
	done

VictoryRoadGateLeftBlackBeltText:
	text "This way leads to"
	line "MT.SILVER."

	para "..."
	line "..."

	para "Yes superstitious"
	line "folk in JOHTO"

	para "call it the"
	line "sacred SILVER"
	cont "Mountains."

	para "But, we don't"
	line "believe in that"
	cont "nonsense."

	para "The area is off"
	line "limits to all but"
	cont "the KANTO ELITE."

	para "I'm not letting"
	line "you through."
	done

VictoryRoadGateRightBlackBeltText:
	text "You may have the"
	line "right to compete"

	para "against the ELITE"
	line "FOUR, but that"

	para "doesn't give you"
	line "the right to"

	para "travel through the"
	line "rest of KANTO."

	para "That right is"
	line "reserved for full"
	cont "KANTO CITIZENS."
	done

VictoryRoadGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  7, ROUTE_22, 1
	warp_event 18,  7, ROUTE_22, 1
	warp_event  9, 17, ROUTE_26, 1
	warp_event 10, 17, ROUTE_26, 1
	warp_event  9,  0, VICTORY_ROAD, 1
	warp_event 10,  0, VICTORY_ROAD, 1
	warp_event  1,  7, ROUTE_28, 2
	warp_event  2,  7, ROUTE_28, 2

	def_coord_events
	coord_event 10, 11, SCENE_VICTORYROADGATE_BADGE_CHECK, VictoryRoadGateBadgeCheckScript

	def_bg_events

	def_object_events
	object_event  8, 11, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
	object_event  7,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateLeftBlackBeltScript, EVENT_OPENED_MT_SILVER
	object_event 12,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateRightBlackBeltScript, EVENT_KANTO_PAPERS_STOLEN
