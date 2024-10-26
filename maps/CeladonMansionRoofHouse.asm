	object_const_def
	const CELADONMANSIONROOFHOUSE_PHARMACIST

CeladonMansionRoofHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionRoofHousePharmacistScript:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext CeladonMansionRoofHousePharmacistText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext CeladonMansionRoofHousePharmacistText_ReturnedMachinePart
	promptbutton
	getstring STRING_BUFFER_4, .expncardname
	scall .receiveitem
	setflag ENGINE_EXPN_CARD
	writetext CeladonMansionRoofHousePharmacistText_nowyouhaveKantoRadio
	waitbutton
	closetext
	end

.GotExpnCard:
	writetext CeladonMansionRoofHousePharmacistText_GotExpnCard
	waitbutton
	closetext
	end

.receiveitem:
	jumpstd ReceiveItemScript
	end

.expncardname
	db "EXPN APP@"

CeladonMansionRoofHousePharmacistText:
	text "Yo Yo Kiddo!"
	line "You lost?"

	para "..."
	line "..."

	para "Wicked. You're"
	line "from JOHTO?"

	para "Sweet #GEAR"
	line "kid, I'd bet it"

	para "doesn't pick up"
	line "KANTO stations."

	para "..."
	line "..."

	para "Yeah, I can help"
	line "but broadcasts"

	para "are on hold"
	line "until the POWER"
	cont "PLANT is fixed."

	para "Come see me if"
	line "that comes back"
	cont "online."
	done

CeladonMansionRoofHousePharmacistText_ReturnedMachinePart:
	text "Yo Yo Kiddo!"
	line "I've been jamming"
	cont "to my radio!"

	para "..."
	line "..."

	para "Bummer Kid."
	line "let me see the"

	para "settings on your"
	line "#GEAR."

	para "(muttering)"
	done

CeladonMansionRoofHousePharmacistText_nowyouhaveKantoRadio:
	text "Right, I've down"
	line "loaded the EXPN"
	cont "APP."

	para "Students from"
	line "the SEVII Islands"

	para "use it to listen"
	line "to KANTO stations."

	para "It should work for"
	line "you too!"
	done

CeladonMansionRoofHousePharmacistText_GotExpnCard:
	text "Gotta love"
	line "jammin' to songs"
	cont "on the Radio!"
	done

CeladonMansionRoofHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_MANSION_ROOF, 3
	warp_event  3,  7, CELADON_MANSION_ROOF, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofHousePharmacistScript, -1
