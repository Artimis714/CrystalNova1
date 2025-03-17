	object_const_def
	const CELADONCITY_FISHER
	const CELADONCITY_POLIWAG
	const CELADONCITY_TEACHER1
	const CELADONCITY_GRAMPS1
	const CELADONCITY_GRAMPS2
	const CELADONCITY_YOUNGSTER1
	const CELADONCITY_YOUNGSTER2
	const CELADONCITY_TEACHER2
	const CELADONCITY_LASS
	const CELADONCITY_OFFICER1
	const CELADONCITY_OFFICER2
	const CELADONCITY_OFFICER3
	const CELADONCITY_OFFICER4

CeladonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CeladonCityFlypointCallback

CeladonCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CELADON
	endcallback

CeladonCityFisherScript:
	jumptextfaceplayer CeladonCityFisherText

CeladonCityPoliwrath:
	opentext
	writetext CeladonCityPoliwrathText
	cry POLIWRATH
	setval POLIWRATH
	special ShowPokedexEntry
	waitbutton
	closetext
	end

CeladonCityTeacher1Script:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .Alert
	checkevent EVENT_CELADON_ALERT
	iftrue .GetAwayfromMe
	writetext CeladonCityTeacher1Text
	waitbutton
	closetext
	end

.Alert:
	farwritetext OhHeyDerKiddoText
	showemote EMOTE_SHOCK, CELADONCITY_TEACHER1, 15
	farwritetext ImCallingtheCopsDerEh
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	setevent EVENT_CELADON_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_CELADON
	end

.GetAwayfromMe:
	farwritetext GetAwayFromMeEhText
	waitbutton
	closetext
	end

CeladonCityGramps1Script:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .Alert
	checkevent EVENT_CELADON_ALERT
	iftrue .GetAwayfromMe
	writetext CeladonCityGramps1Text
	waitbutton
	closetext
	end

.Alert:
	farwritetext OhHeyDerKiddoText
	showemote EMOTE_SHOCK, CELADONCITY_GRAMPS1, 15
	farwritetext ImCallingtheCopsDerEh
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	setevent EVENT_CELADON_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_CELADON
	end

.GetAwayfromMe:
	farwritetext GetAwayFromMeEhText
	waitbutton
	closetext
	end

CeladonCityGramps2Script:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .Alert
	checkevent EVENT_CELADON_ALERT
	iftrue .GetAwayfromMe
	writetext CeladonCityGramps2Text
	waitbutton
	closetext
	end

.Alert:
	farwritetext OhHeyDerKiddoText
	showemote EMOTE_SHOCK, CELADONCITY_GRAMPS2, 15
	farwritetext ImCallingtheCopsDerEh
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	setevent EVENT_CELADON_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_CELADON
	end

.GetAwayfromMe:
	farwritetext GetAwayFromMeEhText
	waitbutton
	closetext
	end

CeladonCityYoungster1Script:
	jumptextfaceplayer CeladonCityYoungster1Text

CeladonCityYoungster2Script:
	jumptextfaceplayer CeladonCityYoungster2Text

CeladonCityTeacher2Script:
	jumptextfaceplayer CeladonCityTeacher2Text

CeladonCityLassScript:
	jumptextfaceplayer CeladonCityLassText

CeladonCitySign:
	jumptext CeladonCitySignText

CeladonGymSign:
	jumptext CeladonGymSignText

CeladonCityDeptStoreSign:
	jumptext CeladonCityDeptStoreSignText

CeladonCityMansionSign:
	jumptext CeladonCityMansionSignText

CeladonCityGameCornerSign:
	jumptext CeladonCityGameCornerSignText

CeladonCityTrainerTips:
	jumptext CeladonCityTrainerTipsText

CeladonCityPokecenterSign:
	jumpstd PokecenterSignScript

CeladonCityHiddenPpUp:
	hiddenitem PP_UP, EVENT_CELADON_CITY_HIDDEN_PP_UP

CeladonTownCityPolice4Script:
	trainer OFFICER, GUARD, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8, CeladonPoliceSeenText, CeladonPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CeladonPoliceAfterBattleText
	waitbutton
	closetext
	end

CeladonTownCityPolice3Script:
	trainer OFFICER, JERICHO, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7, CeladonPoliceSeenText, CeladonPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CeladonPoliceAfterBattleText
	waitbutton
	closetext
	end

CeladonTownCityPolice2Script:
	trainer OFFICER, RAXIL, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6, CeladonPoliceSeenText, CeladonPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CeladonPoliceAfterBattleText
	waitbutton
	closetext
	end

CeladonTownCityPolice1Script:
	trainer OFFICER, CITYPOLICE, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5, CeladonPoliceSeenText, CeladonPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CeladonPoliceAfterBattleText
	waitbutton
	closetext
	end

CeladonPoliceSeenText:
	text "HEY! YOU!!!"

	para "STOP RIGHT THERE!"

	para "..."
	line "..."

	para "You're wanted by"
	line "the CELADON"
	cont "POLICE!"

	para "..."
	line "..."

	para "You're under"
	line "arrest!"
	done

CeladonPoliceAfterBattleText:
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

CeladonPoliceWinText:
	text "On behalf of the"
	line "CELADON POLICE"

	para "You're free to"
	line "go."
	done

CeladonCityFisherText:
	text "This POLIWRATH is"
	line "my partner."

	para "I wonder if it'll"
	line "ever evolve into a"
	cont "frog #MON."
	done

CeladonCityPoliwrathText:
	text "POLIWRATH: Croak!"
	done

CeladonCityTeacher1Text:
if DEF(_CRYSTAL_AU)
	text "I lost at the"
	line "machines."
	done
else
	text "I lost at the slot"
	line "machines again…"

	para "We girls also play"
	line "the slots now."

	para "You should check"
	line "them out too."
	done
endc

CeladonCityGramps1Text:
	text "GRIMER have been"
	line "appearing lately."

	para "See that pond out"
	line "in front of the"

	para "house? GRIMER live"
	line "there now."

	para "Where did they"
	line "come from? This is"
	cont "a serious problem…"

	para "We've urbanized"
	line "too much after"
	cont "the war!"
	done

CeladonCityGramps2Text:
	text "Nihihi! This GYM"
	line "is great! Only"

	para "girls are allowed"
	line "here!"
	done

CeladonCityYoungster1Text:
	text "Want to know a"
	line "secret?"

	para "CELADON MANSION"
	line "has a hidden back"
	cont "door."

	para "I've heard a guy"
	line "who lives on the"

	para "roof does #-"
	line "GEAR upgrades."
	done

CeladonCityYoungster2Text:
	text "They're holding an"
	line "eating contest at"
	cont "the restaurant."

	para "Just watching them"
	line "go at it makes me"
	cont "feel bloated…"
	done

CeladonCityTeacher2Text:
	text "CELADON DEPT.STORE"
	line "has the biggest"

	para "and best selection"
	line "of merchandise."

	para "If you can't get"
	line "it there, you"

	para "can't get it any-"
	line "where."

	para "Gee… I sound like"
	line "a sales clerk."
	done

CeladonCityLassText:
	text "Looking at the"
	line "ground while I was"

	para "walking made me"
	line "dizzy."
	done

CeladonCitySignText:
	text "CELADON CITY"

	para "The City of"
	line "Rainbow Dreams"
	done

CeladonGymSignText:
	text "CELADON CITY"
	line "#MON GYM"
	cont "LEADER: ERIKA"

	para "The Nature-Loving"
	line "Princess"
	done

CeladonCityDeptStoreSignText:
	text "Find What You"
	line "Need at CELADON"
	cont "DEPT.STORE!"
	done

CeladonCityMansionSignText:
	text "CELADON MANSION"
	done

CeladonCityGameCornerSignText:
if DEF(_CRYSTAL_AU)
	text "The Game Area for"
	line "Grown-ups--CELADON"
	cont "GAME CORNER"
	done
else
	text "The Playground for"
	line "Everybody--CELADON"
	cont "GAME CORNER"
	done
endc

CeladonCityTrainerTipsText:
	text "TRAINER TIPS"

	para "The Legendary"
	line "Birds: ARTICUNO"

	para "MOLTRES &"
	line "ZAPDOS can only"

	para "Be found at a"
	line "single time of"
	cont "day."

	para "The Weather will"
	line "indicate which"
	cont "can be found."
	done

CeladonCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, CELADON_DEPT_STORE_1F, 1
	warp_event 16,  9, CELADON_MANSION_1F, 1
	warp_event 16,  3, CELADON_MANSION_1F, 3
	warp_event 17,  3, CELADON_MANSION_1F, 3
	warp_event 29,  9, CELADON_POKECENTER_1F, 1
	warp_event 18, 19, CELADON_GAME_CORNER, 1
	warp_event 23, 19, CELADON_GAME_CORNER_PRIZE_ROOM, 1
	warp_event 10, 29, CELADON_GYM, 1
	warp_event 25, 29, CELADON_CAFE, 1

	def_coord_events

	def_bg_events
	bg_event 23, 21, BGEVENT_READ, CeladonCitySign
	bg_event 11, 31, BGEVENT_READ, CeladonGymSign
	bg_event  6,  9, BGEVENT_READ, CeladonCityDeptStoreSign
	bg_event 13,  9, BGEVENT_READ, CeladonCityMansionSign
	bg_event 19, 21, BGEVENT_READ, CeladonCityGameCornerSign
	bg_event 29, 21, BGEVENT_READ, CeladonCityTrainerTips
	bg_event 30,  9, BGEVENT_READ, CeladonCityPokecenterSign
	bg_event 37, 21, BGEVENT_ITEM, CeladonCityHiddenPpUp

	def_object_events
	object_event 26, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityFisherScript, -1
	object_event 27, 11, SPRITE_POLIWRATH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityPoliwrath, -1
	object_event 20, 24, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityTeacher1Script, -1
	object_event 14, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps1Script, -1
	object_event  8, 31, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps2Script, -1
	object_event 18, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityYoungster1Script, -1
	object_event 24, 33, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityYoungster2Script, -1
	object_event  6, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityTeacher2Script, -1
	object_event  7, 22, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityLassScript, -1
	object_event 31, 11, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, CeladonTownCityPolice1Script, EVENT_BEAT_CITY_POLICE_CELADON
	object_event  4, 22, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, CeladonTownCityPolice2Script, EVENT_BEAT_CITY_POLICE_CELADON
	object_event 26, 20, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, CeladonTownCityPolice3Script, EVENT_BEAT_CITY_POLICE_CELADON
	object_event  6, 13, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, CeladonTownCityPolice4Script, EVENT_BEAT_CITY_POLICE_CELADON
