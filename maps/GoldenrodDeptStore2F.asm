	object_const_def
	const GOLDENRODDEPTSTORE2F_CLERK1
	const GOLDENRODDEPTSTORE2F_CLERK2
	const GOLDENRODDEPTSTORE2F_YOUNGSTER
	const GOLDENRODDEPTSTORE2F_COOLTRAINER_F
	const GOLDENRODDEPTSTORE2F_GENTLEMAN

GoldenrodDeptStore2F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore2FClerk1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_2F_1
	closetext
	end

GoldenrodDeptStore2FClerk2Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_2F_2
	closetext
	end

GoldenrodDeptStore2FYoungsterScript:
	jumptextfaceplayer GoldenrodDeptStore2FYoungsterText

GoldenrodDeptStore2FCooltrainerFScript:
	jumptextfaceplayer GoldenrodDeptStore2FCooltrainerFText

GoldenrodDeptStore2FGentlemanScript:
	jumptextfaceplayer GoldenrodDeptStore2FGentlemanText

GoldenrodDeptStore2FDirectory:
	jumptext GoldenrodDeptStore2FDirectoryText

GoldenrodDeptStore2FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore2FYoungsterText:
	text "#GEAR can store"
	line "up to ten phone"
	cont "numbers."

	para "It's hard to de-"
	line "cide which numbers"
	cont "to keep."

	para "Darn 90s Phone"
	line "tech."
	done

GoldenrodDeptStore2FCooltrainerFText:
	text "I got my PORYGON"
	line "at the GAME CORNER!"

	para "Now it's my best"
	line "partner."

	para "I heard a rumor"
	line "that SILPH was"

	para "working on an up-"
	line "grade for PORYGON."

	para "But I also heard,"
	line "that the software"

	para "was developed by"
	line "a coder who work-"
	cont "in the ARCHIVES."

	para "Who knows if it"
	line "survived, when"

	para "they burned down"
	line "the building."
	done

GoldenrodDeptStore2FGentlemanText:
	text "This DEPT.STORE"
	line "makes me realize"

	para "that GOLDENROD is"
	line "a big city."

	para "The selection here"
	line "is unmatched any-"
	cont "where else."
	done

GoldenrodDeptStore2FDirectoryText:
	text "Your Travel"
	line "Companion"

	para "2F TRAINER'S"
	line "   MARKET"
	done

GoldenrodDeptStore2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_3F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_1F, 3
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore2FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore2FElevatorButton

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FClerk1Script, -1
	object_event 13,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FClerk2Script, -1
	object_event  9,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FYoungsterScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FCooltrainerFScript, -1
	object_event  2,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FGentlemanScript, -1
