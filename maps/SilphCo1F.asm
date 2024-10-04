	object_const_def
	const SILPHCO1F_RECEPTIONIST
	const SILPHCO1F_OFFICER

SilphCo1F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCoReceptionistScript:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SilphCoReceptionistText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SilphCoReceptionistText_ReturnedMachinePart
	promptbutton
	getstring STRING_BUFFER_4, .expncardname
	scall .receiveitem
	setflag ENGINE_EXPN_CARD
	writetext SilphCoReceptionistText_nowyouhaveKantoRadio
	waitbutton
	closetext
	end

.GotExpnCard:
	writetext SilphCoReceptionistText_GotExpnCard
	waitbutton
	closetext
	end

.receiveitem:
	jumpstd ReceiveItemScript
	end

.expncardname
	db "EXPN CARD@"


SilphCoOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_PROTOTYPE_UPGRADE
	iffalse .NicetoMeetYou
	checkevent EVENT_GOT_UP_GRADE
	iftrue .GotUpGrade
	writetext SilphCoOfficerText
	promptbutton
	verbosegiveitem UP_GRADE
	iffalse .NoRoom
	setevent EVENT_GOT_UP_GRADE
.GotUpGrade:
	writetext SilphCoOfficerText_GotUpGrade
	waitbutton
.NoRoom:
	closetext
	end

.NicetoMeetYou:
	writetext SilphCoOfficerNicetoMeetText
	waitbutton
	closetext
	end

SilphCoReceptionistText:
	text "Welcome. This is"
	line "SILPH CO.'s HEAD"
	cont "OFFICE BUILDING."

	para "We're the home"
	line "of 104.3 KANTO FM"

	para "..."
	line "..."

	para "Yes, KANTO has a"
	line "RADIO Station, but"
	
	para "It's not functional"
	line "right now."

	para "We hope to resume"
	line "our broadcasts when"

	para "problems with the"
	line "POWER PLANT are"
	cont "resolved."
	done

SilphCoReceptionistText_ReturnedMachinePart:
	text "Welcome. This is"
	line "SILPH CO.'s HEAD"
	cont "OFFICE BUILDING."

	para "We're the home"
	line "of 104.3 KANTO FM!"

	para "..."
	line "..."

	para "Yes, you have a"
	line "SILPH CO #GEAR."
	cont "with a RADIO CARD."

	para "..."
	line "..."

	para "Oh I see, your"
	line "device is set for"
	cont "the JHOTO network."

	para "Here, let us get"
	line "your device set up"

	para "for international"
	line "broadcast!"

	para "You need an EXPN"
	line "card!"
	done

SilphCoReceptionistText_nowyouhaveKantoRadio:
	text "There! now your"
	line "#GEAR can tune"

	para "into KANTO radio!"
	line "Be sure to listen"
	cont "to 104.3 KANTO FM!"
	done

SilphCoReceptionistText_GotExpnCard:
	text "Welcome. This is"
	line "SILPH CO.'s HEAD"
	cont "OFFICE BUILDING."

	para "We're the home"
	line "of 104.3 KANTO FM!"
	done

SilphCoOfficerNicetoMeetText:
	text "Only employees are"
	line "permitted to go"
	cont "upstairs."

	para "..."
	line "..."

	para "Oh, really, You're"
	line "<PLAY_G>?"

	para "It's an honor to"
	line "meet the JHOTO"
	cont "CHAMPION!"

	para "I'm sorry but I"
	line "can't let you"
	cont "upstairs!"
	done

SilphCoOfficerText:
	text "Only employees are"
	line "permitted to go"
	cont "upstairs."

	para "..."
	line "..."

	para "Oh, really, You're"
	line "<PLAY_G>?"

	para "It's an honor to"
	line "meet the JHOTO"
	cont "CHAMPION!"

	para "I still can't let"
	line "you upstairs, but"

	para "since you came"
	line "such a long way,"

	para "have this neat"
	line "little souvenir."
	done

SilphCoOfficerText_GotUpGrade:
	text "It's SILPH CO.'s"
	line "latest product."

	para "..."
	line "..."

	para "You've seen one"
	line "of these before?"

	para "It's not for sale"
	line "anywhere yet!"

	para "When we defeated"
	line "JHOTO, we found"

	para "some old research"
	line "notes in GOLDEN-"
	cont "ROD."

	para "..."
	line "..."

	para "Yes, the research"
	line "was from a guy"
	cont "named GREGG."

	para "How did you know?"

	para "..."
	line "..."

	para "I had no idea he"
	line "had any surviving"
	cont "family."

	para "..."
	line "..."

	para "Yes, you're right"
	line "it'd be shitty of"

	para "us to profit on"
	line "the invention of"

	para "a victim of a war"
	line "we both funded,"
	cont "& profited from."

	para "I take it, you'll"
	line "make this info"
	cont "public?"

	para "..."
	line "..."

	para "That would be"
	line "bad for optics."

	para "I'll see too it"
	line "that the proceeds"

	para "will go to this"
	line "TIMMY."
	done

SilphCo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 7
	warp_event  3,  7, SAFFRON_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
