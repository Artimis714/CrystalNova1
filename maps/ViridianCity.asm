	object_const_def
	const VIRIDIANCITY_GRAMPS1
	const VIRIDIANCITY_GRAMPS2
	const VIRIDIANCITY_FISHER
	const VIRIDIANCITY_YOUNGSTER
	const VIRIDIANCITY_OFFICER1
	const VIRIDIANCITY_OFFICER2
	const VIRIDIANCITY_OFFICER3

ViridianCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ViridianCityFlypointCallback

ViridianCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	endcallback

ViridianCityCoffeeGramps:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .Alert
	checkevent EVENT_VIRIDIAN_ALERT
	iftrue .GetAwayfromMe
	writetext ViridianCityCoffeeGrampsQuestionText
	yesorno
	iffalse .no
	writetext ViridianCityCoffeeGrampsBelievedText
	waitbutton
	closetext
	end

.no:
	writetext ViridianCityCoffeeGrampsDoubtedText
	waitbutton
	closetext
	end

.Alert:
	farwritetext OhHeyDerKiddoText
	showemote EMOTE_SHOCK, VIRIDIANCITY_GRAMPS1, 15
	farwritetext ImCallingtheCopsDerEh
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	setevent EVENT_VIRIDIAN_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_VIRIDIAN
	end

.GetAwayfromMe:
	farwritetext GetAwayFromMeEhText
	waitbutton
	closetext
	end

ViridianCityGrampsNearGym:
	faceplayer
	opentext
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue .BlueReturned
	writetext ViridianCityGrampsNearGymText
	waitbutton
	closetext
	end

.BlueReturned:
	writetext ViridianCityGrampsNearGymBlueReturnedText
	waitbutton
	closetext
	end

ViridianCityDreamEaterFisher:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .GotDreamEater
	writetext ViridianCityDreamEaterFisherText
	promptbutton
	verbosegiveitem TM_DREAM_EATER
	iffalse .NoRoomForDreamEater
	setevent EVENT_GOT_TM42_DREAM_EATER
.GotDreamEater:
	writetext ViridianCityDreamEaterFisherGotDreamEaterText
	waitbutton
.NoRoomForDreamEater:
	closetext
	end

ViridianCityYoungsterScript:
	jumptextfaceplayer ViridianCityYoungsterText

ViridianCitySign:
	jumptext ViridianCitySignText

ViridianGymSign:
	jumptext ViridianGymSignText

ViridianCityWelcomeSign:
	jumptext ViridianCityWelcomeSignText

TrainerHouseSign:
	jumptext TrainerHouseSignText

ViridianCityPokecenterSign:
	jumpstd PokecenterSignScript

ViridianCityMartSign:
	jumpstd MartSignScript

ViridianTownCityPolice3Script:
	trainer OFFICER, GUARD, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7, ViridianPoliceSeenText, ViridianPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ViridianPoliceAfterBattleText
	waitbutton
	closetext
	end

ViridianTownCityPolice2Script:
	trainer OFFICER, RAXIL, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6, ViridianPoliceSeenText, ViridianPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ViridianPoliceAfterBattleText
	waitbutton
	closetext
	end

ViridianTownCityPolice1Script:
	trainer OFFICER, CITYPOLICE, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5, ViridianPoliceSeenText, ViridianPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ViridianPoliceAfterBattleText
	waitbutton
	closetext
	end

ViridianPoliceSeenText:
	text "HEY! YOU!!!"

	para "STOP RIGHT THERE!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You're wanted by"
	line "the VIRIDIAN"
	cont "POLICE!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You're under"
	line "arrest!"
	done

ViridianPoliceAfterBattleText:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Well, you don't"
	line "have KANTO PAPERS"

	para "so I should call"
	line "for backup, but"
	cont "I'm impressed."

	para "Try to stay out of"
	line "trouble."
	done

ViridianPoliceWinText:
	text "On behalf of the"
	line "VIRIDIAN POLICE"

	para "You're free to"
	line "go."
	done

ViridianCityCoffeeGrampsQuestionText:
	text "Hey, kid! I just"
	line "had a double shot"

	para "of espresso, and"
	line "I am wired!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I need to talk to"
	line "someone, so you'll"
	cont "have to do!"

	para "I might not look"
	line "like much now, but"

	para "I was an expert at"
	line "catching #MON."
	cont "Do you believe me?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "No, I didn't fight"
	line "in the war."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You're one of them"
	line "JOHTO savages?"

	para "Hope you're having"
	line "a rough time in"
	cont "KANTO!!!"
	done

ViridianCityCoffeeGrampsBelievedText:
	text "Good, good. Yes, I"
	line "was something out"

	para "of the ordinary,"
	line "let me tell you!"

	para "During the war I"
	line "slaughtered JOHTO"

	para "scum, left right"
	line "and center!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You're from JOHTO?"
	line "We should've built"

	para "a damn wall and"
	line "and made JOHTO pay"
	cont "for it!"
	done

ViridianCityCoffeeGrampsDoubtedText:
	text "What? You little"
	line "bastard!"

	para "If I were just a"
	line "bit younger, I'd"

	para "show you a thing"
	line "or two. Humph!"
	done

ViridianCityGrampsNearGymText:
	text "This GYM didn't"
	line "have a LEADER"
	cont "until recently."

	para "A young man from"
	line "PALLET became the"

	para "LEADER, but he's"
	line "often away."

	para "I hear he often"
	line "opposed RED's"

	para "leadership in the"
	line "war."
	done

ViridianCityGrampsNearGymBlueReturnedText:
	text "Are you going to"
	line "battle the LEADER?"

	para "Good luck to you."
	line "You'll need it."
	done

ViridianCityDreamEaterFisherText:
	text "Yawn!"

	para "I must have dozed"
	line "off in the sun."

	para "…I had this dream"
	line "about a HYPNO"

	para "eating my dream."
	line "Weird, huh?"

	para "Huh?"
	line "What's this?"

	para "Where did this TM"
	line "come from?"

	para "This is spooky!"
	line "Here, you can have"
	cont "this TM."
	done

ViridianCityDreamEaterFisherGotDreamEaterText:
	text "TM42 contains"
	line "DREAM EATER…"

	para "…Zzzzz…"
	done

ViridianCityYoungsterText:
	text "I heard that there"
	line "are many items on"

	para "the ground in"
	line "VIRIDIAN FOREST."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Yeah the forest"
	line "was burned down"
	cont "during the war."

	para "So there's not"
	line "much left."
	done

ViridianCitySignText:
	text "VIRIDIAN CITY"

	para "The Eternally"
	line "Green Paradise"
	done

ViridianGymSignText:
	text "VIRIDIAN CITY"
	line "#MON GYM"
	cont "LEADER: …"

	para "The rest of the"
	line "text is illegible…"
	done

ViridianCityWelcomeSignText:
	text "WELCOME TO"
	line "VIRIDIAN CITY,"

	para "THE GATEWAY TO"
	line "INDIGO PLATEAU"
	done

TrainerHouseSignText:
	text "TRAINER HOUSE"

	para "The Club for Top"
	line "Trainer Battles"
	done

ViridianCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 32,  7, VIRIDIAN_GYM, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 23, 15, TRAINER_HOUSE_1F, 1
	warp_event 29, 19, VIRIDIAN_MART, 2
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1

	def_coord_events

	def_bg_events
	bg_event 17, 17, BGEVENT_READ, ViridianCitySign
	bg_event 27,  7, BGEVENT_READ, ViridianGymSign
	bg_event 19,  1, BGEVENT_READ, ViridianCityWelcomeSign
	bg_event 21, 15, BGEVENT_READ, TrainerHouseSign
	bg_event 24, 25, BGEVENT_READ, ViridianCityPokecenterSign
	bg_event 30, 19, BGEVENT_READ, ViridianCityMartSign

	def_object_events
	object_event 18,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityCoffeeGramps, -1
	object_event 30,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianCityGrampsNearGym, EVENT_VIRIDIAN_ALERT
	object_event  6, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianCityDreamEaterFisher, -1
	object_event 17, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityYoungsterScript, -1
	object_event 19,  3, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, ViridianTownCityPolice1Script, EVENT_BEAT_CITY_POLICE_VIRIDIAN
	object_event  6, 18, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, ViridianTownCityPolice2Script, EVENT_BEAT_CITY_POLICE_VIRIDIAN
	object_event 28, 32, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, ViridianTownCityPolice3Script, EVENT_BEAT_CITY_POLICE_VIRIDIAN
