	object_const_def
	const ROUTE2GATE_SCIENTIST

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateScientistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POCKET_PC
	iftrue .ProfOakWillbeHappy
	readvar VAR_DEXCAUGHT
	ifgreater 245, .Aide100Caught
	writetext GuideIntroText
	waitbutton
	writetext YoureAFailuretext
	waitbutton
	closetext
	end

.Aide100Caught:
	writetext GuideIntroText
	waitbutton
	writetext ThisisExcellentText
	verbosegiveitem POCKET_PC
	waitbutton
	writetext OakWillBeHappyText
	waitbutton
	closetext
	setevent EVENT_GOT_POCKET_PC
	end

.ProfOakWillbeHappy:
	writetext OakWillBeHappyText
	waitbutton
	closetext
	end

GuideIntroText:
	text "Oh, you must be"
	line "<PLAY_G>."

	para "I am one of PROF."
	line "OAK's AIDs."

	para "I was told to give"
	line "you something if"

	para "your #DEX was"
	line "far enough along."
	cont "Let's take a look."
	done

YoureAFailuretext:
	text "Ahh... I see. So"
	line "You're a failure!"

	para "..."
	line "..."

	para "#LEAGUE CHAMP?"
	line "That title means"

	para "nothing compared"
	line "to research!!!"

	para "..."
	line "..."

	para "At your level, it"
	line "is a disgrace that"

	para "you haven't caught"
	line "at least 245 #-"
	cont "MON!"

	para "Come back to see"
	line "me when you learn"

	para "to take research"
	line "seriously."
	done

ThisisExcellentText:
	text "Hmm... this is"
	line "acceptable."

	para "I will give you"
	line "this."
	done

OakWillBeHappyText:
	text "That's a POCKET PC"
	line "It's a new product"
	cont "that SILPH made."

	para "Can you imagine, a"
	line "portable computer!"

	para "..."
	line "..."

	para "Yes, revolutionary"
	line "this will change"
	cont "the #WORLD."

	para "Anyway, PROF.OAK"
	line "will be pleased to"

	para "hear of your prog-"
	line "ress. Be sure to"
	cont "stop by."
	done

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 3
	warp_event  5,  0, ROUTE_2, 4
	warp_event  4,  7, ROUTE_2, 2
	warp_event  5,  7, ROUTE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateScientistScript, -1
