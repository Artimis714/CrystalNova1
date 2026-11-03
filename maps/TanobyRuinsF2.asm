	object_const_def
	const TANOBY_BLUE_ORB
	const TANOBY_RED_ORB
	const TANOBY_YELLOW_ORB

TanobyRuinsF2_MapScripts:
	def_scene_scripts
	scene_script TanobyRuinsF2CheckWallScene, SCENE_TANOBYRUINSF2_CHECK_WALL
	scene_script TanobyRuinsF2NoopScene, SCENE_TANOBYRUINSF2_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, TanobyRuinsF2HiddenDoorsCallback

TanobyRuinsF2CheckWallScene:
	checkevent EVENT_TANOBY_RUINS_WALL_OPENED
	iftrue .Done

	checkevent EVENT_TANOBY_BLUE_ORB
	iftrue .Done

	checkevent EVENT_TANOBY_RED_ORB
	iftrue .Done

	checkevent EVENT_TANOBY_YELLOW_ORB
	iftrue .Done

	sdefer TanobyRuinsF2WallOpenScript
.Done:
	end

TanobyRuinsF2NoopScene:
	end


TanobyRuinsF2HiddenDoorsCallback:
	checkevent EVENT_TANOBY_RUINS_WALL_OPENED
	iftrue .WallOpen

	changeblock 2, 0, $06 ; closed wall
	endcallback

.WallOpen:
	changeblock 2, 0, $30 ; open wall
	endcallback

TanobyRuinsF2CheckWall:
	checkevent EVENT_TANOBY_RUINS_WALL_OPENED
	iftrue .Done

	checkevent EVENT_TANOBY_BLUE_ORB
	iftrue .Done

	checkevent EVENT_TANOBY_RED_ORB
	iftrue .Done

	checkevent EVENT_TANOBY_YELLOW_ORB
	iftrue .Done

	jump TanobyRuinsF2WallOpenScript

.Done:
	end


TanobyRuinsF2WallOpenScript:
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock 2, 0, $30 ; open wall
	reloadmappart
	earthquake 50
	setevent EVENT_TANOBY_RUINS_WALL_OPENED
	setscene SCENE_TANOBYRUINSF2_NOOP
	closetext
	end

BlueOrbScript:
	opentext
	writetext BlueOrbRetrieveText
	yesorno
	iffalse .Cancel
	giveitem ICE_ORB
	iffalse .BagFull
	setevent EVENT_TANOBY_BLUE_ORB
	disappear TANOBY_BLUE_ORB
	writetext BlueOrbRetrievedText
	waitbutton
	closetext
	jump TanobyRuinsF2CheckWall

.Cancel:
	closetext
	end

.BagFull:
	writetext OrbBagFullText
	waitbutton
	closetext
	end


BlueOrbOfferScript:
	opentext
	checkitem ICE_ORB
	iffalse .NoOrb
	writetext BlueOrbOfferText
	yesorno
	iffalse .Cancel
	takeitem ICE_ORB
	clearevent EVENT_TANOBY_BLUE_ORB
	appear TANOBY_BLUE_ORB
	writetext BlueOrbPlacedText
	waitbutton
	closetext
	jump TanobyRuinsF2CheckWall

.Cancel:
	closetext
	end

.NoOrb:
	writetext BlueOrbNoItemText
	waitbutton
	closetext
	end


RedOrbScript:
	opentext
	writetext RedOrbRetrieveText
	yesorno
	iffalse .Cancel
	giveitem FIRE_ORB
	iffalse .BagFull
	setevent EVENT_TANOBY_RED_ORB
	disappear TANOBY_RED_ORB
	writetext RedOrbRetrievedText
	waitbutton
	closetext
	jump TanobyRuinsF2CheckWall

.Cancel:
	closetext
	end

.BagFull:
	writetext OrbBagFullText
	waitbutton
	closetext
	end


RedOrbOfferScript:
	opentext
	checkitem FIRE_ORB
	iffalse .NoOrb
	writetext RedOrbOfferText
	yesorno
	iffalse .Cancel
	takeitem FIRE_ORB
	clearevent EVENT_TANOBY_RED_ORB
	appear TANOBY_RED_ORB
	writetext RedOrbPlacedText
	waitbutton
	closetext
	jump TanobyRuinsF2CheckWall

.Cancel:
	closetext
	end

.NoOrb:
	writetext RedOrbNoItemText
	waitbutton
	closetext
	end

TanobyMewPic:
	opentext
	writetext TanobyMewPicText
	waitbutton
	special DisplayMewPuzzleImage
	closetext
	end

YellowOrbScript:
	opentext
	writetext YellowOrbRetrieveText
	yesorno
	iffalse .Cancel
	giveitem ELECTRIC_ORB
	iffalse .BagFull
	setevent EVENT_TANOBY_YELLOW_ORB
	disappear TANOBY_YELLOW_ORB
	writetext YellowOrbRetrievedText
	waitbutton
	closetext
	jump TanobyRuinsF2CheckWall

.Cancel:
	closetext
	end

.BagFull:
	writetext OrbBagFullText
	waitbutton
	closetext
	end

TanobyThreeUnown:
	opentext
	writetext strangmarkingstanoby2Text
	setval UNOWNWORDS_THREE
	special DisplayUnownWords
	closetext
	end

TanobyIsleUnown:
	opentext
	writetext strangmarkingstanoby2Text
	setval UNOWNWORDS_ISLES
	special DisplayUnownWords
	closetext
	end


YellowOrbOfferScript:
	opentext
	checkitem ELECTRIC_ORB
	iffalse .NoOrb
	writetext YellowOrbOfferText
	yesorno
	iffalse .Cancel
	takeitem ELECTRIC_ORB
	clearevent EVENT_TANOBY_YELLOW_ORB
	appear TANOBY_YELLOW_ORB
	writetext YellowOrbPlacedText
	waitbutton
	closetext
	jump TanobyRuinsF2CheckWall

.Cancel:
	closetext
	end

.NoOrb:
	writetext YellowOrbNoItemText
	waitbutton
	closetext
	end

BlueOrbRetrieveText:
	text "A FROST ORB rests"
	line "on the pedestal."
	para "Take it?"
	done

BlueOrbRetrievedText:
	text "You took the"
	line "FROST ORB."
	done

BlueOrbOfferText:
	text "The markings seem"
	line "to depict a"
	cont "snowflake."
	para "Place the FROST"
	line "ORB here?"
	done

BlueOrbPlacedText:
	text "You placed the"
	line "FROST ORB."
	done

BlueOrbNoItemText:
	text "There are strange"
	line "markings on this"
	cont "pedestal..."
	para "They resemble a"
	line "snowflake."
	done


RedOrbRetrieveText:
	text "A FLAME ORB rests"
	line "on the pedestal."
	para "Take it?"
	done

RedOrbRetrievedText:
	text "You took the"
	line "FLAME ORB."
	done

RedOrbOfferText:
	text "The markings seem"
	line "to depict a flame."
	para "Place the FLAME"
	line "ORB here?"
	done

RedOrbPlacedText:
	text "You placed the"
	line "FLAME ORB."
	done

RedOrbNoItemText:
	text "There are strange"
	line "markings on this"
	cont "pedestal..."
	para "They resemble a"
	line "flame."
	done

strangmarkingstanoby2Text:
	text "I've seen markings"
	line "like this before"
	cont "in Alph."
	done

TanobyMewPicText:
	text "This looks like a"
	line "puzzle from the"
	cont "Ruins of Alph."
	done

YellowOrbRetrieveText:
	text "An ELECTRIC ORB"
	line "rests on the"
	cont "pedestal."
	para "Take it?"
	done

YellowOrbRetrievedText:
	text "You took the"
	line "ELECTRIC ORB."
	done

YellowOrbOfferText:
	text "The markings seem"
	line "to depict a spark."
	para "Place the ELECTRIC"
	line "ORB here?"
	done

YellowOrbPlacedText:
	text "You placed the"
	line "ELECTRIC ORB."
	done

YellowOrbNoItemText:
	text "There are strange"
	line "markings on this"
	cont "pedestal..."
	para "They resemble a"
	line "spark."
	done


OrbBagFullText:
	text "Your PACK is full!"
	done

TanobyRuinsF2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  8, TANOBY_RUINS_1F, 2
	warp_event  2,  0, TANOBY_RUINS_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, BlueOrbOfferScript
	bg_event  6,  2, BGEVENT_READ, RedOrbOfferScript
	bg_event 10,  2, BGEVENT_READ, YellowOrbOfferScript
	bg_event  6,  6, BGEVENT_READ, TanobyMewPic
	bg_event  7,  0, BGEVENT_READ, TanobyThreeUnown
	bg_event  8,  0, BGEVENT_READ, TanobyIsleUnown

	def_object_events
	object_event  3,  2, SPRITE_ORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlueOrbScript, EVENT_TANOBY_BLUE_ORB
	object_event  6,  2, SPRITE_ORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RedOrbScript, EVENT_TANOBY_RED_ORB
	object_event 10,  2, SPRITE_ORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, YellowOrbScript, EVENT_TANOBY_YELLOW_ORB
