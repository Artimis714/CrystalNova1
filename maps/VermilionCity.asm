	object_const_def
	const VERMILIONCITY_TEACHER
	const VERMILIONCITY_GRAMPS
	const VERMILIONCITY_MACHOP
	const VERMILIONCITY_SUPER_NERD
	const VERMILIONCITY_BIG_SNORLAX
	const VERMILIONCITY_POKEFAN_M
	const VERMILIONCITY_OFFICER
	const VERMILIONCITY_OFFICER2
	const VERMILIONCITY_OFFICER3

VermilionCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionCityFlypointCallback

VermilionCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionPrisonGuard:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iftrue .NoFight
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext OfficerJerichoSeenText
	waitbutton
	closetext
	winlosstext OfficerJerichoWinText, 0
	loadtrainer OFFICER, JERICHO
	startbattle
	reloadmapafterbattle
	opentext
	writetext OfficerJerichoAfterText
	waitbutton
	closetext
	applymovement VERMILIONCITY_OFFICER, VermilionCityovementData_OfficertoSide
	end

.NoFight:
	writetext OfficerJerichoDaytimeText
	yesorno
	iftrue .ChallengeOfficer
	writetext ThatsWhatIThoughtVermilionText
	waitbutton
	closetext
	end

.ChallengeOfficer:
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext OfficerJerichoSeen2Text
	waitbutton
	closetext
	winlosstext OfficerJerichoWinText, 0
	loadtrainer OFFICER, JERICHO
	startbattle
	reloadmapafterbattle
	opentext
	writetext OfficerJerichoAfterText
	waitbutton
	closetext
	applymovement VERMILIONCITY_OFFICER, VermilionCityovementData_OfficertoSide
	end

VermilionCityovementData_OfficertoSide:
	step LEFT
	turn_head RIGHT
	step_end

VermilionCityTeacherScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .Alert
	checkevent EVENT_VERMILION_ALERT
	iftrue .GetAwayfromMe
	writetext VermilionCityTeacherText
	waitbutton
	closetext
	end

.Alert:
	farwritetext OhHeyDerKiddoText
	showemote EMOTE_SHOCK, VERMILIONCITY_TEACHER, 15
	farwritetext ImCallingtheCopsDerEh
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	setevent EVENT_VERMILION_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_VERMILION
	end

.GetAwayfromMe:
	farwritetext GetAwayFromMeEhText
	waitbutton
	closetext
	end

VermilionMachopOwner:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .Alert
	checkevent EVENT_VERMILION_ALERT
	iftrue .GetAwayfromMe
	writetext VermilionMachopOwnerText
	waitbutton
	closetext
	end

.Alert:
	farwritetext OhHeyDerKiddoText
	showemote EMOTE_SHOCK, VERMILIONCITY_GRAMPS, 15
	farwritetext ImCallingtheCopsDerEh
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	setevent EVENT_VERMILION_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_VERMILION
	end

.GetAwayfromMe:
	farwritetext GetAwayFromMeEhText
	waitbutton
	closetext
	end

VermilionMachop:
	opentext
	writetext VermilionMachopText1
	cry MACHOP
	setval MACHOP
	special ShowPokedexEntry
	waitbutton
	closetext
	earthquake 30
	opentext
	writetext VermilionMachopText2
	waitbutton
	closetext
	end

VermilionCitySuperNerdScript:
	jumptextfaceplayer VermilionCitySuperNerdText

VermilionSnorlax:
	opentext
	special SnorlaxAwake
	iftrue .Awake
	setval SNORLAX
	special ShowPokedexEntry
	writetext VermilionCitySnorlaxSleepingText
	waitbutton
	closetext
	end

.Awake:
	writetext VermilionCityRadioNearSnorlaxText
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 50
	startbattle
	disappear VERMILIONCITY_BIG_SNORLAX
	setevent EVENT_FOUGHT_SNORLAX
	reloadmapafterbattle
	end

VermilionGymBadgeGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
	iftrue .AlreadyGotItem
	readvar VAR_BADGES
	ifequal NUM_BADGES, .AllBadges
	ifgreater 13, .MostBadges
	ifgreater 9, .SomeBadges
	writetext VermilionCityBadgeGuyTrainerText
	waitbutton
	closetext
	end

.SomeBadges:
	writetext VermilionCityBadgeGuySomeBadgesText
	waitbutton
	closetext
	end

.MostBadges:
	writetext VermilionCityBadgeGuyMostBadgesText
	waitbutton
	closetext
	end

.AllBadges:
	writetext VermilionCityBadgeGuyAllBadgesText
	promptbutton
	verbosegiveitem HP_UP
	iffalse .Done
	setevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
.AlreadyGotItem:
	writetext VermilionCityBadgeGuyBattleEdgeText
	waitbutton
.Done:
	closetext
	end

VermilionCitySign:
	jumptext VermilionCitySignText

VermilionGymSign:
	jumptext VermilionGymSignText

PokemonFanClubSign:
	jumptext PokemonFanClubSignText

VermilionCityDiglettsCaveSign:
	jumptext VermilionCityDiglettsCaveSignText

VermilionCityPortSign:
	jumptext VermilionCityPortSignText

VermilionCityPokecenterSign:
	jumpstd PokecenterSignScript

VermilionCityMartSign:
	jumpstd MartSignScript

VermilionCityHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VERMILION_CITY_HIDDEN_FULL_HEAL

VermilionTownCityPolice2Script:
	trainer OFFICER, RAXIL, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6, VermilionPoliceSeenText, VermilionPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VermilionPoliceAfterBattleText
	waitbutton
	closetext
	end

VermilionTownCityPolice1Script:
	trainer OFFICER, CITYPOLICE, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5, VermilionPoliceSeenText, VermilionPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VermilionPoliceAfterBattleText
	waitbutton
	closetext
	end

VermilionPoliceSeenText:
	text "HEY! YOU!!!"

	para "STOP RIGHT THERE!"

	para "..."
	line "..."

	para "You're wanted by"
	line "the VERMILION"
	cont "POLICE!"

	para "..."
	line "..."

	para "You're under"
	line "arrest!"
	done

VermilionPoliceAfterBattleText:
	text "..."
	line "..."

	para "Well, you don't"
	line "have KANTO PAPERS"

	para "so I should call"
	line "for backup, but"
	cont "I'm impressed."

	para "Try to stay out of"
	line "trouble."
	done

VermilionPoliceWinText:
	text "On behalf of the"
	line "VERMILION POLICE"

	para "You're free to"
	line "go."
	done

ThatsWhatIThoughtVermilionText:
	text "That's what I"
	line "thought."

	para "Now get lost before"
	line "I arrest you for"

	para "disturbing the"
	line "peace!"
	done

VermilionCityTeacherText:
	text "VERMILION PORT is"
	line "KANTO's seaside"
	cont "gateway."

	para "Luxury liners from"
	line "around the world"
	cont "dock here."

	para "Business has been"
	line "booming after the"
	cont "war!"
	done

VermilionMachopOwnerText:
	text "Damn rebels dest-"
	line "royed half the"

	para "town during the"
	line "war!"

	para "I bought the land"
	line "for peanuts."

	para "But my funding's"
	line "running a little"
	cont "dry."

	para "I was going to"
	line "make high-rise"

	para "apartments over-"
	line "looking the sea!"
	done

VermilionMachopText1:
	text "MACHOP: Guooh"
	line "gogogoh!"
	done

VermilionMachopText2:
	text "A MACHOP is growl-"
	line "ing while stomping"
	cont "the ground flat."
	done

VermilionCitySuperNerdText:
	text "There are eight"
	line "GYMS in KANTO."

	para "That big building"
	line "is VERMILION's"
	cont "#MON GYM."
	done

VermilionCitySnorlaxSleepingText:
	text "SNORLAX is snoring"
	line "peacefully…"
	done

VermilionCityRadioNearSnorlaxText:
	text "The #GEAR was"
	line "placed near the"
	cont "sleeping SNORLAX…"

	para "..."

	para "SNORLAX woke up!"
	done

VermilionCityBadgeGuyTrainerText:
	text "Skilled trainers"
	line "gather in KANTO."

	para "GYM LEADERS are"
	line "especially strong."

	para "They won't be easy"
	line "to defeat."
	done

VermilionCityBadgeGuySomeBadgesText:
	text "You've started to"
	line "collect KANTO GYM"
	cont "BADGES?"

	para "Don't you agree"
	line "that the trainers"
	cont "here are tough?"
	done

VermilionCityBadgeGuyMostBadgesText:
	text "I guess you'll be"
	line "finished with your"

	para "conquest of KANTO"
	line "GYMS soon."

	para "Let me know if"
	line "you get all eight"
	cont "BADGES."
	done

VermilionCityBadgeGuyAllBadgesText:
	text "Congratulations!"

	para "You got all the"
	line "KANTO GYM BADGES."

	para "I've got a reward"
	line "for your efforts."
	done

VermilionCityBadgeGuyBattleEdgeText:
	text "Having a variety"
	line "of #MON types"

	para "should give you an"
	line "edge in battle."

	para "I'm sure the KANTO"
	line "GYM BADGES will"
	cont "help you."
	done

VermilionCitySignText:
	text "VERMILION CITY"

	para "The Port of"
	line "Exquisite Sunsets"
	done

VermilionGymSignText:
	text "VERMILION CITY"
	line "#MON GYM"
	cont "LEADER: LT.SURGE"

	para "The Lightning"
	line "American"

	para "HERO of the"
	line "GREAT WAR!"
	done

PokemonFanClubSignText:
	text "KANTO AUTHORITY"
	line "MAXIMUM SECURITY"
	cont "PRISON"
	done

VermilionCityDiglettsCaveSignText:
	text "REBEL'S PASS"
	done

VermilionCityPortSignText:
	text "VERMILION PORT"
	line "ENTRANCE"
	done

OfficerJerichoSeenText:
	text "HALT!"

	para "..."
	line "..."

	para "What do you think"
	line "you're doing,"

	para "loitering in front"
	line "of KANTO's prison!"

	para "..."
	line "..."

	para "Excuses excuses!"
	line "lets see proof of"

	para "Your KANTO"
	line "CITIZENSHIP!"
	
	para "..."
	line "..."

	para "You're coming"
	line "with me."
	done

OfficerJerichoSeen2Text:
	text "I'm not letting"
	line "you in here."

	para "It's MAXIMUM"
	line "SECURITY!"

	para "..."
	line "..."

	para "Fine, if you're"
	line "determined to get"

	para "in you'll have to"
	line "get through me!"
	done

OfficerJerichoWinText:
	text "..."
	line "I didn't see you."
	done

OfficerJerichoAfterText:
	text "Look kid, if you"
	line "really want to get"

	para "into the prison so"
	line "bad, then I'll step"
	cont "aside."

	para "Just don't tell"
	line "anybody I did."
	done

OfficerJerichoDaytimeText:
	text "HALT!"

	para "..."
	line "..."

	para "What do you think"
	line "you're doing,"

	para "loitering in front"
	line "of KANTO's prison!"

	para "..."
	line "..."

	para "Excuses excuses!"
	line "lets see proof of"

	para "Your KANTO"
	line "CITIZENSHIP!"

	para "..."
	line "..."

	para "You're trying to"
	line "get into the"
	cont "prison?"
	done


VermilionCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, VERMILION_FISHING_SPEECH_HOUSE, 1
	warp_event  9,  5, VERMILION_POKECENTER_1F, 1
	warp_event  7, 13, POKEMON_FAN_CLUB, 1
	warp_event 13, 13, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 1
	warp_event 21, 13, VERMILION_MART, 2
	warp_event 21, 17, VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE, 1
	warp_event 10, 19, VERMILION_GYM, 1
	warp_event 19, 31, VERMILION_PORT_PASSAGE, 1
	warp_event 20, 31, VERMILION_PORT_PASSAGE, 2
	warp_event 34,  7, DIGLETTS_CAVE, 1

	def_coord_events

	def_bg_events
	bg_event 25,  3, BGEVENT_READ, VermilionCitySign
	bg_event  5, 19, BGEVENT_READ, VermilionGymSign
	bg_event  5, 13, BGEVENT_READ, PokemonFanClubSign
	bg_event 33,  9, BGEVENT_READ, VermilionCityDiglettsCaveSign
	bg_event 27, 15, BGEVENT_READ, VermilionCityPortSign
	bg_event 10,  5, BGEVENT_READ, VermilionCityPokecenterSign
	bg_event 22, 13, BGEVENT_READ, VermilionCityMartSign
	bg_event 12, 19, BGEVENT_ITEM, VermilionCityHiddenFullHeal

	def_object_events
	object_event 18,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCityTeacherScript, -1
	object_event 23,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMachopOwner, -1
	object_event 26,  7, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, VermilionMachop, EVENT_VERMILION_ALERT
	object_event 14, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionCitySuperNerdScript, -1
	object_event 34,  8, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionSnorlax, EVENT_VERMILION_CITY_SNORLAX
	object_event 31, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionGymBadgeGuy, -1
	object_event  7, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionPrisonGuard, -1
	object_event 19, 27, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, VermilionTownCityPolice2Script, EVENT_BEAT_CITY_POLICE_VERMILION
	object_event 17,  6, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, VermilionTownCityPolice1Script, EVENT_BEAT_CITY_POLICE_VERMILION