	object_const_def
	const TRAINERHOUSE1F_RECEPTIONIST
	const TRAINERHOUSE1F_COOLTRAINER_M
	const TRAINERHOUSE1F_COOLTRAINER_F
	const TRAINERHOUSE1F_YOUNGSTER
	const TRAINERHOUSE1F_GENTLEMAN

TrainerHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHouse1FReceptionistScript:
	jumptextfaceplayer TrainerHouse1FReceptionistText

TrainerHouse1FCooltrainerMScript:
	jumptextfaceplayer TrainerHouse1FCooltrainerMText

TrainerHouse1FCooltrainerFScript:
	jumptextfaceplayer TrainerHouse1FCooltrainerFText

TrainerHouse1FYoungsterScript:
	jumptextfaceplayer TrainerHouse1FYoungsterText

TrainerHouse1FGentlemanScript:
	faceplayer
	opentext
	checkevent EVENT_LAVTOWER_GHOST_SWIMMER_LOLITA
	iftrue .YouMetSugarBaby
	writetext TrainerHouse1FGentlemanText
	waitbutton
	closetext
	end

.YouMetSugarBaby:
	checkevent EVENT_GOT_SMERGLE_FROM_DADDY
	iftrue .PaintLikeAFrenchGirl
	writetext TrainerHouse1FGentlemanText
	waitbutton
	writetext LolitaWasSoHotText
	yesorno
	iffalse .RefusedSmergle
	writetext SmergleSpecialisesInArtText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoomSmergle
	writetext ReceivedSmergleText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke SMEARGLE, 5
	setevent EVENT_GOT_SMERGLE_FROM_DADDY
	writetext LolitaWouldveBeenSoSexyText
	waitbutton
	closetext
	end

.PaintLikeAFrenchGirl:
	writetext LolitaWouldveBeenSoSexyText
	waitbutton
	closetext
	end

.RefusedSmergle:
	writetext WhatAShameText
	waitbutton
	closetext
	end

.NoRoomSmergle:
	writetext NoRoomForSmergleText
	waitbutton
	closetext
	end

TrainerHouseSign1:
	jumptext TrainerHouseSign1Text

TrainerHouseSign2:
	jumptext TrainerHouseSign2Text

TrainerHouseIllegibleBook:
	jumptext TrainerHouseIllegibleText

TrainerHouse1FReceptionistText:
	text "Welcome to TRAINER"
	line "HOUSE, the newest"

	para "and most happening"
	line "place in VIRIDIAN."

	para "We're open to"
	line "all trainers!"

	para "We've recently"
	line "programmed our"

	para "CREATIVE, ATTACK"
	line "LEARNER: CAL"

	para "To mimic the"
	line "Party you had at"

	para "Your last save"
	line "state!"
	done

TrainerHouse1FCooltrainerMText:
	text "VIRIDIAN is the"
	line "town closest to"
	cont "INDIGO PLATEAU."

	para "They built this"
	line "place because so"

	para "many trainers pass"
	line "through on their"

	para "way up to INDIGO"
	line "PLATEAU."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "WOAH You've beat"
	line "LEAGUE?"

	para "So cool!"
	done

TrainerHouse1FCooltrainerFText:
	text "They hold practice"
	line "battles downstairs"
	cont "here."

	para "I would love to"
	line "see how well a"

	para "trainer from JOHTO"
	line "battles."

	para "I've heard you"
	line "guys still use"

	para "APRICORNS for"
	line "#BALLS!"

	para "<……> <……> <……>"	
	line "<……> <……> <……>"

	para "Sounds like some-"
	line "thing that JOHTO"
	cont "trash would say."
	done

TrainerHouse1FYoungsterText:
	text "I guess you can't"
	line "become the CHAMP"

	para "unless you go all"
	line "over the place and"

	para "battle all kinds"
	line "of people."

	para "The CHAMPION from"
	line "PALLET traveled to"

	para "all the cities and"
	line "towns in KANTO."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Yeah, that's RED."
	line "He's a local hero!"
	done

TrainerHouse1FGentlemanText:
	text "Whew… I'm taking a"
	line "rest from #MON"
	cont "battles."
	done

LolitaWasSoHotText:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Why yes my name is"
	line "Humbert Humbert."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You knew LOLITA!?"
	
	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Hmm... I see. So"
	line "she passed during"

	para "the CINNABAR VOL-"
	line "CANO. I'd always"

	para "believed she stood"
	line "me up."

	para "We were going to"
	line "run away together."

	para "I'd just divorced"
	line "my ex wife, and"

	para "We were going to"
	line "move to IV Island."

	para "My LOLITA was so"
	line "hot! By MEW, I was"

	para "the luckiest man"
	line "in the world!"

	para "We had this thing"
	line "we'd like to do."

	para "Where I'd use my"
	line "SMEARGLE to sketch"
	cont "her."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "My SMEARGLE has"
	line "been so depressed"
	cont "since that day."

	para "LOLITA was its"
	line "muse!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Well if you think"
	line "you could do a"

	para "Better job raising"
	line "it, then you're"

	para "welcome to have my"
	line "SMEARGLE if you"
	cont "want."
	done

SmergleSpecialisesInArtText:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "SMEARGLE special-"
	line "izes in ART."

	para "It can draw just"
	line "about anybody."

	para "But that's not all"
	line "it can also sketch"
	cont "ANY movie it sees!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Yes, it is almost"
	line "like the Sharingan"
	cont "of the Uchiaha!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Yes, SMEARGLE are"
	line "basically Ninja!"
	done

ReceivedSmergleText:
	text "<PLAYER> received"
	line "a SMEARGLE!"
	done

LolitaWouldveBeenSoSexyText:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Yes, I do hope you"
	line "give my SMEARGLE a"
	cont "good home."

	para "My LOLITA may be"
	line "gone, but at least"

	para "I still have my"
	line "sketches of her!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You're very judgey!"
	done

WhatAShameText:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Hmmm... I see"
	line "So you're willing"

	para "to judge LOLITA's"
	line "and my LOVE."

	para "But unwilling to"
	line "look after my"

	para "SMEARGLE. You're a"
	line "snob."
	done

NoRoomForSmergleText:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Oh dear, it seems"
	line "you don't have"

	para "room in your party"
	line "for my SMEARGLE!"

	para "I recommend you"
	line "use one of those"

	para "fancy PC's to make"
	line "room!"
	done

TrainerHouseSign1Text:
	text "Practice battles"
	line "are held in the"

	para "TRAINING HALL"
	line "downstairs."

	para "Skilled trainers"
	line "are invited to"
	cont "participate."
	done

TrainerHouseSign2Text:
	text "There are no rules"
	line "or regulations for"

	para "practice matches."
	line "Just like in field"

	para "battles, anything"
	line "goes!"
	done

TrainerHouseIllegibleText:
	text "…What's this?"
	line "A strategy memo?"

	para "This writing looks"
	line "like ONIX tracks…"

	para "It's completely"
	line "illegible…"
	done

TrainerHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 13, VIRIDIAN_CITY, 3
	warp_event  3, 13, VIRIDIAN_CITY, 3
	warp_event  8,  2, TRAINER_HOUSE_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, TrainerHouseSign1
	bg_event  7,  0, BGEVENT_READ, TrainerHouseSign2
	bg_event  7, 10, BGEVENT_READ, TrainerHouseIllegibleBook

	def_object_events
	object_event  0, 11, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FReceptionistScript, -1
	object_event  7, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FCooltrainerMScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FCooltrainerFScript, -1
	object_event  4,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FYoungsterScript, -1
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FGentlemanScript, -1
