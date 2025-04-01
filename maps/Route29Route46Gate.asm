	object_const_def
	const ROUTE29ROUTE46GATE_OFFICER
	const ROUTE29ROUTE46GATE_YOUNGSTER

Route29Route46Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route29Route46GateOfficerScript:
	jumptextfaceplayer Route29Route46GateOfficerText

Route29Route46GateYoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BONE_CLUB
	iftrue .AlreadyGotItem
	setval CUBONE
	special FindPartyMonThatSpecies
	iftrue .Throw_the_Player_a_Bone
	writetext Route29Route46GateYoungsterText
	waitbutton
	closetext
	end

.AlreadyGotItem:
	writetext OneDayCuboneText
	waitbutton
	closetext
	end

.Throw_the_Player_a_Bone
	writetext YOUCAUGHTCUBONE
	giveitem THICK_CLUB
	iffalse .NoRoom
	setevent EVENT_GOT_BONE_CLUB
	waitbutton
	closetext
	end

.NoRoom:
	writetext KidNoRoom
	waitbutton
	closetext
	end


YOUCAUGHTCUBONE:
	text "No Way! You found"
	line "a CUBONE!"
	cont "That's so cool!"

	para "Last time I went"
	line "out there, all I"
	cont "found was this"
	cont "dumb bone."

	para "It's yours if you"
	line "want it."
	done


Route29Route46GateOfficerText:
	text "The road ahead is"
	line "closed. Has been"
	cont "for years now."

	para "..."

	para "Why am I here?"
	line "This is MY house."
	
	para "Look kid, I don't"
	line "come into your"
	cont "home and judge"
	cont "your lifestyle."

	para "Times are tough"
	line "after the war."

	para "Go on then, choke"
	line "on the SANDSTORM"
	cont "for all I care!"
	done

Route29Route46GateYoungsterText:
	text "I've heard that"
	line "CUBONE appear"
	cont "late at night"
	cont "on Route 46."

	para "But that wicked"
	line "SANDSTORM coming"

	para "off of Mt Silver"
	line "makes going out"
	cont "there rough."

	para "My #MON never"
	line "last long enough"
	cont "to find one."
	done


KidNoRoom:
	text "Bummer. Your bag"
	line "is full."

	para "come back if you"
	line "want it."
	done


OneDayCuboneText:
	text "Maybe I'll try"
	line "again tomorrow"
	cont "night."

	para "One of these days"
	line "I'll catch a"
	cont "CUBONE!"
	done

Route29Route46Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_46, 1
	warp_event  5,  0, ROUTE_46, 2
	warp_event  4,  7, ROUTE_29, 1
	warp_event  5,  7, ROUTE_29, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route29Route46GateOfficerScript, -1
	object_event  6,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29Route46GateYoungsterScript, -1
