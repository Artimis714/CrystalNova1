	object_const_def
	const GOLDENRODDEPTSTORE4F_CLERK
	const GOLDENRODDEPTSTORE4F_COOLTRAINER_M
	const GOLDENRODDEPTSTORE4F_BUG_CATCHER
	const GOLDENRODDEPTSTORE4F_GAMEBOY_KID

GoldenrodDeptStore4F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore4FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_4F
	closetext
	end

GoldenrodDeptStore4FCooltrainerMScript:
	jumptextfaceplayer GoldenrodDeptStore4FCooltrainerMText

GoldenrodDeptStore4FBugCatcherScript:
	jumptextfaceplayer GoldenrodDeptStore4FBugCatcherText

GoldenrodDeptStore4FGameboyKidScript:
	faceplayer
	opentext
	checkevent EVENT_GHOST_GREGG
	iftrue .BrofromBeyond
	writetext GoldenrodDeptStore4FGameboyKidText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTORE4F_GAMEBOY_KID, DOWN
	end

.BrofromBeyond
	checkevent EVENT_GOT_PROTOTYPE_UPGRADE
	iftrue .BrowouldbeProud
	writetext GreggSecretProject
	verbosegiveitem UP_GRADE
	iffalse .NoRoom
	setevent EVENT_GOT_PROTOTYPE_UPGRADE
	waitbutton
	closetext
	end

.BrowouldbeProud
	writetext BrowouldbeProudText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTORE4F_GAMEBOY_KID, DOWN
	end

.NoRoom
	writetext BroWouldWanttext
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTORE4F_GAMEBOY_KID, DOWN
	end

GoldenrodDeptStore4FDirectory:
	jumptext GoldenrodDeptStore4FDirectoryText

GoldenrodDeptStore4FElevatorButton:
	jumpstd ElevatorButtonScript

GreggSecretProject:
	text "Uh... yeah? I'm"
	line "TIMMY. Why who's"
	cont "asking?"

	para "..."
	line "..."

	para "Woah."

	para "..."

	para "You're serious?"
	line "You battled my"
	cont "Bro's GHOST!?"

	para "That's so cool."
	line "Shit, I miss him."
	cont "All the time."

	para "Things were hard"
	line "for everyone dur-"
	cont "ing the war."

	para "But.. we lost our"
	line "parents when I"
	cont "was three."

	para "GREGG was my fam-"
	line "ily."

	para "I'm doing okay."
	line "As okay, as I can"
	cont "be anyway."

	para "Lots of people in"
	line "the city support"

	para "anyone who lost a"
	line "relative in the"
	cont "ARCHIVES."

	para "Anyway, I wanted"
	line "to give you this."

	para "It's a prototype"
	line "that GREGG was"
	para "working on."

	para "Something to do"
	line "with enhancing an"
	cont "artificial #-"
	cont "MON."
	done

BrowouldbeProudText:
	text "GREGG made sure I"
	line "was safe during"

	para "the darkest days"
	line "of the war."

	para "And through it"
	line "all he kept learn-"
	cont "ing."

	para "Even taking some"
	line "remote classes at"

	para "a University in"
	line "a place called"
	cont "NORWOOD."

	para "I'm going to"
	line "follow in his"
	cont "footsteps."

	para "I'm going to"
	line "make him proud!"
	done

BroWouldWanttext:
	text "Doesn't look like"
	line "you've got room."

	para "But come back,"
	line "when you do."

	para "I'm sure GREGG"
	line "would've wanted you"
	cont "to have it!"
	done

GoldenrodDeptStore4FCooltrainerMText:
	text "Hey. I love strong"
	line "#MON."

	para "I feed them PRO-"
	line "TEIN to crank up"
	cont "their ATTACK."
	done

GoldenrodDeptStore4FBugCatcherText:
	text "IRON adds to your"
	line "#MON's DEFENSE."
	done

GoldenrodDeptStore4FGameboyKidText:
	text "My big bro used to"
	line "love coming here."

	para "He worked in the"
	line "GOLDENROD ARCHIVES"

	para "but... We're not"
	line "really allowed to"

	para "talk about that in"
	line "in the city."

	para "too many KANTO"
	line "cops." 

	para "I've already said"
	line "too much."
	done

GoldenrodDeptStore4FDirectoryText:
	text "Let Us Pump Up"
	line "Your #MON!"

	para "4F MEDICINE BOX"
	done

GoldenrodDeptStore4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_5F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_3F, 2
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore4FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore4FElevatorButton

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FClerkScript, -1
	object_event 11,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FCooltrainerMScript, -1
	object_event  7,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FBugCatcherScript, -1
	object_event  5,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore4FGameboyKidScript, EVENT_GOT_UP_GRADE
