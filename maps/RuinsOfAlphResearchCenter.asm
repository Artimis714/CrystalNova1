	object_const_def
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST1
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST2
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST3

RuinsOfAlphResearchCenter_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphResearchCenterNoopScene,        SCENE_RUINSOFALPHRESEARCHCENTER_NOOP
	scene_script RuinsOfAlphResearchCenterGetUnownDexScene, SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RuinsOfAlphResearchCenterScientistCallback

RuinsOfAlphResearchCenterNoopScene:
	end

RuinsOfAlphResearchCenterGetUnownDexScene:
	sdefer RuinsOfAlphResearchCenterGetUnownDexScript
	end

RuinsOfAlphResearchCenterScientistCallback:
	checkscene
	ifequal SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX, .ShowScientist
	endcallback

.ShowScientist:
	moveobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 3, 7
	appear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	endcallback

RuinsOfAlphResearchCenterGetUnownDexScript:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesComputerMovement
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	turnobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, DOWN
	opentext
	writetext RuinsOfAlphResearchCenterModifiedDexText
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesPlayerMovement
	opentext
	writetext RuinsOfAlphResearchCenterDexUpgradedText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterLeavesPlayerMovement
	setscene SCENE_RUINSOFALPHRESEARCHCENTER_NOOP
	special RestartMapMusic
	end

RuinsOfAlphResearchCenterScientist3Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterScientist3_PrinterAvailable
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterScientist1Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkflag ENGINE_UNOWN_DEX
	iftrue .GotUnownDex
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist1Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist1Text_UnownAppeared
	waitbutton
	closetext
	end

.GotUnownDex:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotUnownDex
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotAllUnown
	waitbutton
	closetext
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	end

RuinsOfAlphResearchCenterScientist2Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist2Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist2Text_UnownAppeared
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist2Text_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterComputer:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
.SkipChecking:
	writetext RuinsOfAlphResearchCenterComputerText
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterComputerText_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterPrinter:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
.SkipChecking:
	writetext RuinsOfAlphResearchCenterPrinterText_DoesntWork
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterUnownPrinterText
	waitbutton
	special UnownPrinter
	closetext
	end

RuinsOfAlphResearchCenterBookshelf:
	jumptext RuinsOfAlphResearchCenterAcademicBooksText

RuinsOfAlphResearchCenterApproachesComputerMovement:
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

RuinsOfAlphResearchCenterApproachesPlayerMovement:
	step DOWN
	step_end

RuinsOfAlphResearchCenterLeavesPlayerMovement:
	step UP
	step_end

FossilScientistScript:
	faceplayer
	opentext
	checkflag ENGINE_REVIVE_FOSSIL
	iftrue .GaveScientistFossil
	checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	iftrue .GiveAerodactyl
	checkevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	iftrue .GiveKabuto
	checkevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	iftrue .GiveOmanyte
	checkevent EVENT_GAVE_SCIENTIST_AMARANTH_RIB
	iftrue .GiveMew
	writetext FossilScientistIntroText
	yesorno
	iffalse .MaybeAnotherTime
	checkitem BRICK_PIECE
	iffalse .NoAncientPottery
	writetext OkayIllReviveAFossilText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal REVIVE_OLD_AMBER, .OldAmber
	ifequal REVIVE_DOME_FOSSIL, .DomeFossil
	ifequal REVIVE_HELIX_FOSSIL, .HelixFossil
	ifequal REVIVE_AMARANTH_RIB, .AmaranthRib
	sjump .No

.OldAmber
	checkitem OLD_AMBER
	iffalse .No
	checkflag ENGINE_UNLOCKED_UNOWNS_S_TO_W
	iffalse .YoureNotReady
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistMonText
	promptbutton
	setflag ENGINE_REVIVE_FOSSIL
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	takeitem BRICK_PIECE
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .No
	checkflag ENGINE_UNLOCKED_UNOWNS_A_TO_K
	iffalse .YoureNotReady
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistMonText
	promptbutton
	setflag ENGINE_REVIVE_FOSSIL
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	takeitem BRICK_PIECE
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	checkflag ENGINE_UNLOCKED_UNOWNS_L_TO_R
	iffalse .YoureNotReady
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistMonText
	promptbutton
	setflag ENGINE_REVIVE_FOSSIL
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	takeitem BRICK_PIECE
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.AmaranthRib:
	checkitem AMARANTH_RIB
	iffalse .No
	checkflag ENGINE_UNLOCKED_UNOWNS_X_TO_Z
	iffalse .YoureNotReady
	getmonname STRING_BUFFER_3, MEW
	writetext FossilScientistMonText
	promptbutton
	setflag ENGINE_REVIVE_FOSSIL
	setevent EVENT_GAVE_SCIENTIST_AMARANTH_RIB
	takeitem AMARANTH_RIB
	takeitem BRICK_PIECE
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.No
	writetext FossilScientistNoText
	waitbutton
	closetext
	end

.YoureNotReady:
	writetext YourenotreadyText
	waitbutton
	closetext
	end

.GaveScientistFossil:
	writetext FossilScientistTimeText
	waitbutton
	closetext
	end 

.GiveAerodactyl:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke AERODACTYL, 1
	closetext
	end

.GiveKabuto:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke KABUTO, 1
	closetext
	end

.GiveOmanyte:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	givepoke OMANYTE, 1
	closetext
	end

.GiveMew:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_AMARANTH_RIB
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, MEW
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext FossilScientistMewText
	givepoke MEW, 1
	closetext
	end

.NoRoom:
	writetext FossilScientistPartyFullText
	waitbutton
	closetext
	end

.MaybeAnotherTime:
	writetext Comebackifyouwanttotradetext
	waitbutton
	closetext
	end

.NoAncientPottery:
	writetext Sorrybutyoudonttext
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "OLD AMBER@"
	db "DOME FOSSIL@"
	db "HELIX FOSSIL@"
	db "AMARANTH RIB@"
	db "CANCEL@"

FossilScientistIntroText:
	text "Hiya! I'm a"
	line "paleontologist &"
	cont "geneticist."

	para "I worked for the"
	line "KANTO government"

	para "as a fossil"
	line "resurrector!"

	para "I still do it as"
	line "a hobby now."

	para "I'd be willing"
	line "to bring a fossil"

	para "back to life for"
	line "you if you have"

	para "something to"
	line "trade."

	para "Do you have any"
	line "sherds of TANOBY"
	cont "WEAR that you'd"

	para "be willing to"
	line "trade?"
	done

Comebackifyouwanttotradetext:
	text "That's fine."
	line "research is on-"
	cont "going."

	para "We'll take any"
	line "sherds of TANOBY"
	cont "WEAR you find."

	para "Each piece is"
	line "further proof"

	para "KANTO always"
	line "ruled over JOHTO."
	done

Sorrybutyoudonttext:
	text "Sorry, but it"
	line "doesn't look like"

	para "you have any"
	line "TANOBY WEAR pot-"
	cont "tery."

	para "If you find some"
	line "come and see me."
	done

OkayIllReviveAFossilText:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Fantastic, this"
	line "is a great find!"

	para "If we agree on"
	line "a fossil to"

	para "revive, I'd love"
	line "to have it."

	para "What kind of"
	line "fossil were you"
	cont "hoping to revive?"
	done

FossilScientistNoText:
	text "That's fine. Come"
	line "back if you find"
	cont "something."

	para "Fossils are most"
	line "often found in"

	para "deposits of sedi-"
	line "mentary rocks. If"

	para "you could break"
	line "some rocks open,"
	
	para "You might find"
	line "something cool."
	done

FossilScientistPartyFullText:
	text "I've resurrected"
	line "your fossil, but"

	para "Your party is"
	line "already full."

	para "Come back when"
	line "you have room."
	done

FossilScientistTimeText:
	text "Sorry, this takes"
	line "some time."

	para "It was easier with"
	line "a full team."

	para "But my old lab"
	line "burned on"
	cont "CINNABAR ISLAND."

	para "We made some ama-"
	line "zing creatures."

	para "Anyway, go for a"
	line "walk. Explore the"
	cont "ruins."

	para "Come see me"
	line "tomorrow."
	done

FossilScientistDoneText:
	text "Oh good, you're"
	line "back!"

	para "The equipment in"
	line "this lab isn't"
	cont "as good, but..."

	para "I managed to"
	line "bring your fossil"
	cont "back to life!"
	done

FossilScientistMonText:
	text "Hey! that'll work"

	para "It's a fossil of"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "I doubt there are"
	line "many of them run-"
	cont "ing around."
	done

FossilScientistMewText:
	text "We used a fossil"
	line "like this to make"
	cont "MEWTWO."

	para "..."
	line "..."

	para "I worked for"
	line "PROJECT GENESIS."

	para "..."
	line "..."

	para "We built a living"
	line "weapon, and it"

	para "destroyed this"
	line "country."

	para "I'm the only one"
	line "who survived from"
	cont "my team."

	para "Well, me and DR"
	line "FUJI."

	para "No idea where he"
	line "ended up."
	
	para "I never felt good"
	line "about that work."

	para "I'm glad this is"
	line "a healthy regular"
	cont "MEW."
	done

FossilScientistGiveText:
	text "Give me that and"
	line "I'll get started"
	cont "on right away!"

	para "<PLAYER> handed"
	line "over the fossil,"

	para "and the sherd of"
	line "TANOBY WEAR."
	done

FossilScientistReceiveText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

YourenotreadyText:
	text "I don't quite"
	line "feel comfortable"

	para "resurrecting"
	line "this #MON."

	para "These RUINS have"
	line "secrets."

	para "I'll happily"
	line "resurrect this"

	para "#MON when you"
	line "if you can prove"

	para "to have unlocked"
	line "the secrets"

	para "associated with"
	line "it."
	done 

RuinsOfAlphResearchCenterModifiedDexText:
	text "Done!"

	para "I modified your"
	line "#DEX."

	para "I added an"
	line "optional #DEX"

	para "to store UNOWN"
	line "data."

	para "It records them in"
	line "the sequence that"
	cont "they were caught."
	done

RuinsOfAlphResearchCenterDexUpgradedText:
	text "<PLAYER>'s #DEX"
	line "was upgraded."
	done

RuinsOfAlphResearchCenterScientist3Text:
	text "The UNOWN you"
	line "catch will all be"
	cont "recorded."

	para "Check to see how"
	line "many kinds exist."
	done

RuinsOfAlphResearchCenterScientist3_PrinterAvailable:
	text "You caught all the"
	line "UNOWN variations?"

	para "That's a great"
	line "achievement!"

	para "I've set up the"
	line "printer here for"
	cont "handling UNOWN."

	para "Feel free to use"
	line "it anytime."
	done

RuinsOfAlphResearchCenterScientist1Text:
	text "The RUINS are"
	line "about 3500 years"
	cont "old."

	para "But it's not known"
	line "why they were"
	cont "built--or by whom."
	done

RuinsOfAlphResearchCenterScientist1Text_GotUnownDex:
	text "I wonder how many"
	line "kinds of #MON"
	cont "are in the RUINS?"
	done

RuinsOfAlphResearchCenterScientist1Text_UnownAppeared:
	text "#MON appeared"
	line "in the RUINS?"

	para "That's incredible"
	line "news!"

	para "We'll need to"
	line "investigate this."
	done

RuinsOfAlphResearchCenterScientist1Text_GotAllUnown:
	text "Our investigation,"
	line "with your help, is"

	para "giving us insight"
	line "into the RUINS."

	para "The RUINS appear"
	line "to have been built"

	para "as a habitat for"
	line "#MON."
	done

RuinsOfAlphResearchCenterScientist2Text:
	text "There are odd pat-"
	line "terns drawn on the"

	para "walls of the"
	line "RUINS."

	para "They must be the"
	line "keys for unravel-"
	cont "ing the mystery"
	cont "of the RUINS."
	done

RuinsOfAlphResearchCenterScientist2Text_UnownAppeared:
	text "The strange #-"
	line "MON you saw in the"
	cont "RUINS?"

	para "They appear to be"
	line "very much like the"

	para "drawings on the"
	line "walls there."

	para "Hmm…"

	para "That must mean"
	line "there are many"
	cont "kinds of them…"
	done

RuinsOfAlphResearchCenterScientist2Text_GotAllUnown:
	text "Why did those"
	line "ancient patterns"

	para "appear on the wall"
	line "now?"

	para "The mystery"
	line "deepens…"
	done

RuinsOfAlphResearchCenterComputerText:
	text "RUINS OF ALPH"

	para "Exploration"
	line "Year 10"

	para "Fragments of"
	line "parchment from"
	cont "burned ARCHIVES"

	para "hint at lost"
	line "treasure within"
	cont "the RUINS."

	para "The KANTO Gov"
	line "is optimistic"

	para "about making"
	line "a similar find"

	para "to those at the"
	line "TANOBY RUINS on"
	cont "VII Island."
	done

RuinsOfAlphResearchCenterComputerText_GotAllUnown:
	text "Mystery #MON"
	line "Name: UNOWN"

	para "A total of {d:NUM_UNOWN}"
	line "kinds found."
	done

RuinsOfAlphResearchCenterPrinterText_DoesntWork:
	text "This machine"
	line "appears to be"
	cont "witchcraft."
	done

RuinsOfAlphResearchCenterUnownPrinterText:
	text "UNOWN may be"
	line "printed out."
	done

RuinsOfAlphResearchCenterProfSilktreePhotoText:
	text "It's a photo of"
	line "the RESEARCH"

	para "CENTER'S founder,"
	line "PROF.SILKTREE."

	para "He's standing next"
	line "to a man named"
	cont "DR FUJI."

	para "He's standing by"
	line "unfamiliar ruins."

	para "The setting seems"
	line "tropical."
	done

RuinsOfAlphResearchCenterAcademicBooksText:
	text "There are many"
	line "academic books."

	para "Ancient Ruins…"
	line "Mysteries of the"
	cont "Ancients…"

	para "Myths about an"
	line "ancient sea peo-"
	cont "ple called KEPI."

	para "Lots of these"
	line "books reference"
	cont "the SEVII Islands."
	done

RuinsOfAlphResearchCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6

	def_coord_events

	def_bg_events
	bg_event  6,  5, BGEVENT_READ, RuinsOfAlphResearchCenterBookshelf
	bg_event  3,  4, BGEVENT_READ, RuinsOfAlphResearchCenterComputer
	bg_event  7,  1, BGEVENT_READ, RuinsOfAlphResearchCenterPrinter

	def_object_events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist1Script, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist2Script, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist3Script, EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	object_event  3,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FossilScientistScript, -1