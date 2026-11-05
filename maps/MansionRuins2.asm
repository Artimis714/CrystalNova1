	object_const_def
	const MANSION2_PORYGON
	const MANSION2_PORYGON2

MansionRuins2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MansionRuins2FirstVisitCallback

MansionRuins2FirstVisitCallback:
	setevent EVENT_VISITED_RUINED_LAB
	endcallback

MansionBookCaseScript:
	jumptext MansionbookText

MansionCloneChamberScript:
	jumptext MansionCloneChamberText

DeadTreeScript:
	jumptext DeadTreeText

MansionPrinterScript:
	jumptext MansionPrinterText

MansionComputerScript:
	opentext
	checkevent EVENT_DATA_FROM_CINNABAR_MANSION
	iftrue .DataGathered
	setval PORYGON
	special FindPartyMonThatSpecies
	iffalse .CheckPorygon2
	sjump .HavePorytext


.CheckPorygon2
	setval PORYGON2
	special FindPartyMonThatSpecies
	iffalse .FlickerText
	sjump .HavePorytext
	
.HavePorytext
	writetext TheComputerBootedUptext
	playsound SFX_BOOT_PC
	pause 15
	waitbutton
	closetext
	end

.FlickerText
	writetext MansionPrinterText
	waitbutton
	closetext
	end

.DataGathered
	writetext MansionComputerDownloadedText
	waitbutton
	closetext
	end

PorygonScript:
	jumptext PorygonText


MansionKeyboardScript:
	opentext
	checkevent EVENT_DATA_FROM_CINNABAR_MANSION
	iftrue .DataAlreadyDownloaded

	setval PORYGON2
	special FindPartyMonThatSpecies
	iftrue .HavePorygon2

	setval PORYGON
	special FindPartyMonThatSpecies
	iftrue .HavePorygon

	writetext MansionComputerNoPokemonText
	waitbutton
	closetext
	end

.HavePorygon:
	writetext MansionComputerPorygonText1
	waitbutton
	appear MANSION2_PORYGON
	cry PORYGON
	pause 15
	writetext MansionComputerPorygonText2
	waitbutton
	playsound SFX_SHUT_DOWN_PC
	pause 15
	disappear MANSION2_PORYGON
	closetext
	end

.HavePorygon2:
	writetext MansionComputerPorygon2Text1
	waitbutton
	appear MANSION2_PORYGON2
	cry PORYGON2
	pause 15
	writetext MansionComputerPorygon2Text2
	waitbutton
	playsound SFX_SHUT_DOWN_PC
	pause 15
	disappear MANSION2_PORYGON2
	setevent EVENT_DATA_FROM_CINNABAR_MANSION
	closetext
	end

.DataAlreadyDownloaded:
	writetext MansionComputerDownloadedText
	waitbutton
	closetext
	end

MansionMewScript:
	opentext
	writetext MansionMewText1
	waitbutton
	special DisplayMewPuzzleImage
	writetext MansionMewText2
	waitbutton
	closetext
	end


MansionComputerNoPokemonText:
	text "The screen"
	line "flickers to life."
	
	para "Static fills"
	line "the display."
	
	para "You can't make"
	line "anything out."
	done

MansionComputerPorygonText1:
	text "The screen"
	line "flickers to life!"
	
	para "PORYGON, I choose"
	line "you!"
	done

MansionComputerPorygonText2:
	text "PORYGON booted"
	line "up the PC!"
	
	para "But the files"
	line "are encrypted."
	
	para "It can't access"
	line "the data."
	done

MansionComputerPorygon2Text1:
	text "The screen"
	line "flickers to life!"
	
	para "PORYGON2, I choose"
	line "you!"
	done

MansionComputerPorygon2Text2:
	text "PORYGON2 opened"
	line "encrypted files!"
	
	para "DOWNLOADING..."
	
	para "DOWNLOADING..."
	
	para "PORYGON2 absorbed"
	line "the PC's data!"
	done

MansionComputerDownloadedText:
	text "The computer"
	line "is inactive."
	
	para "Its data has"
	line "already been"
	cont "retrieved."
	done


PorygonText:
	text "Pory-gone!"
	done

TheComputerBootedUptext:
	text "The screen woke"
	line "up! Data! Files!"

	para "Gotta check the"
	line "keyboard!"
	done
	

MansionPrinterText:	
	text "A small indicator"
	line "light flickers"
	cont "intermittently."
	
	para "The power supply"
	line "seems unstable."
	done


DeadTreeText:
	text "A dead potted tree"
	
	para "Its branches are"
	line "brittle and bare."
	done


MansionbookText:
	text "A collection of"
	line "research books."
	
	para "TANOBY CULTURE..."
	
	para "GENETIC THEORY..."
	
	para "DNA EXTRACTION..."
	
	para "#MON CLONING..."

	para "They are too badly"
	line "damaged to read."
	done


MansionCloneChamberText:
	text "A large glass tank"
	
	para "The glass is"
	line "shattered, and"
	cont "the surrounding"
	cont "floor is littered"
	cont "with fragments."
	
	para "A dark residue"
	line "clings to the"
	cont "inside of the"
	cont "glass."
	
	para "Whatever was kept"
	line "inside... is long"
	cont "gone."
	done

MansionMewText1:
	text "Scattered across"
	line "the desk are"
	cont "several research"
	cont "documents."
	
	para "They detail"
	line "an extensive"
	cont "excavation of the"
	cont "TANOBY RUINS."
	
	para "The researchers"
	line "describe a series"
	cont "of unusual stone"
	cont "inscriptions."
	
	para "A sliding puzzle"
	line "was discovered"
	cont "among the ruins."
	
	para "After numerous"
	line "attempts, they"
	cont "managed to solve"
	cont "the mechanism."
	
	para "What they found"
	line "inside appears to"
	cont "have changed the"
	cont "course of their"
	cont "research..."
	done

MansionMewText2:
	text "One document bears"
	line "the heading:"
	
	para "AMARANTH RIB"
	
	para "The specimen was"
	line "recovered from a"
	cont "cavity beneath the"
	cont "ancient mechanism."
	
	para "DNA extraction"
	line "has proven viable."
	
	para "The genetic"
	line "material appears"
	cont "sufficiently intact"
	cont "to attempt a full"
	cont "reconstruction."
	
	para "A final annotation"
	line "has been scrawled"
	cont "across the page:"
	
	para "WE CAN BRING IT"
	line "BACK."
	done

MansionRuins2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  9, MANSION_RUINS_1, 2

	def_coord_events

	def_bg_events
	bg_event 11,  4, BGEVENT_READ, MansionBookCaseScript
	bg_event 12,  4, BGEVENT_READ, MansionBookCaseScript
	bg_event 13,  4, BGEVENT_READ, MansionBookCaseScript
	bg_event  6,  1, BGEVENT_READ, MansionCloneChamberScript
	bg_event  7,  1, BGEVENT_READ, MansionCloneChamberScript
	bg_event 13,  9, BGEVENT_READ, DeadTreeScript
	bg_event  0,  6, BGEVENT_READ, DeadTreeScript
	bg_event  0,  7, BGEVENT_READ, DeadTreeScript
	bg_event  4,  4, BGEVENT_READ, MansionComputerScript
	bg_event  3,  4, BGEVENT_READ, MansionKeyboardScript
	bg_event  2,  4, BGEVENT_READ, MansionPrinterScript
	bg_event  2,  5, BGEVENT_READ, MansionPrinterScript
	bg_event  9,  4, BGEVENT_READ, MansionMewScript
	bg_event 10,  4, BGEVENT_READ, MansionMewScript

	def_object_events
	object_event  3,  4, SPRITE_PORYGON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PorygonScript, EVENT_MANSION_PORYGON
	object_event  3,  4, SPRITE_PORYGON2, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PorygonScript, EVENT_MANSION_PORYGON2