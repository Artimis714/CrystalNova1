	object_const_def
	const PEWTERCITY_COOLTRAINER_F
	const PEWTERCITY_BUG_CATCHER
	const PEWTERCITY_GRAMPS
	const PEWTERCITY_FRUIT_TREE1
	const PEWTERCITY_FRUIT_TREE2
	const PEWTERCITY_OFFICER1
	const PEWTERCITY_OFFICER2
	const PEWTERCITY_OFFICER3

PewterCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PewterCityFlypointCallback

PewterCityFlypointCallback:
	setflag ENGINE_FLYPOINT_PEWTER
	endcallback

PewterCityCooltrainerFScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .Alert
	checkevent EVENT_PEWTER_ALERT
	iftrue .GetAwayfromMe
	writetext PewterCityCooltrainerFText
	waitbutton
	closetext
	end

.Alert:
	farwritetext OhHeyDerKiddoText
	showemote EMOTE_SHOCK, PEWTERCITY_COOLTRAINER_F, 15
	farwritetext ImCallingtheCopsDerEh
	showemote EMOTE_SHOCK, PLAYER, 15
	waitbutton
	closetext
	setevent EVENT_PEWTER_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_PEWTER
	end

.GetAwayfromMe:
	farwritetext GetAwayFromMeEhText
	waitbutton
	closetext
	end

PewterCityBugCatcherScript:
	jumptextfaceplayer PewterCityBugCatcherText

PewterCityGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SILVER_WING
	iftrue .GotSilverWing
	checkevent EVENT_GHOST_RACHAEL
	iftrue .YouMetHerGhost
	writetext FromJhotoEHText
	closetext
	end

.YouMetHerGhost:
	writetext PewterCityGrampsText
	promptbutton
	verbosegiveitem SILVER_WING
	setevent EVENT_GOT_SILVER_WING
	setevent EVENT_BURNEDTOWER_GHOST3
	writetext PewterCityGrampsText2
	closetext
	end

.GotSilverWing:
	writetext PewterCityGrampsText_GotSilverWing
	waitbutton
	closetext
	end

PewterCitySign:
	jumptext PewterCitySignText

PewterGymSign:
	jumptext PewterGymSignText

PewterMuseumSign:
	jumptext PewterMuseumSignText

PewterCityMtMoonGiftShopSign:
	jumptext PewterCityMtMoonGiftShopSignText

PewterCityWelcomeSign:
	jumptext PewterCityWelcomeSignText

PewterCityPokecenterSign:
	jumpstd PokecenterSignScript

PewterCityMartSign:
	jumpstd MartSignScript

PewterCityFruitTree1:
	fruittree FRUITTREE_PEWTER_CITY_1

PewterCityFruitTree2:
	fruittree FRUITTREE_PEWTER_CITY_2

PewterTownCityPolice3Script:
	trainer OFFICER, GUARD, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7, PewterPoliceSeenText, PewterPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PewterPoliceAfterBattleText
	waitbutton
	closetext
	end

PewterTownCityPolice2Script:
	trainer OFFICER, RAXIL, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6, PewterPoliceSeenText, PewterPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PewterPoliceAfterBattleText
	waitbutton
	closetext
	end

PewterTownCityPolice1Script:
	trainer OFFICER, CITYPOLICE, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5, PewterPoliceSeenText, PewterPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PewterPoliceAfterBattleText
	waitbutton
	closetext
	end

PewterPoliceSeenText:
	text "HEY! YOU!!!"

	para "STOP RIGHT THERE!"

	para "..."
	line "..."

	para "You're wanted by"
	line "the PEWTER"
	cont "POLICE!"

	para "..."
	line "..."

	para "You're under"
	line "arrest!"
	done

PewterPoliceAfterBattleText:
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

PewterPoliceWinText:
	text "On behalf of the"
	line "PEWTER POLICE"

	para "You're free to"
	line "go."
	done

PewterCityCooltrainerFText:
	text "Have you visited"
	line "PEWTER GYM?"

	para "The LEADER uses"
	line "rock-type #MON."
	done

PewterCityBugCatcherText:
	text "At night, CLEFAIRY"
	line "come out to play"
	cont "at MT.MOON."

	para "But not every"
	line "night."
	done

FromJhotoEHText:
	text "..."
	
	para "Ah, you came all"
	line "the way out here"
	cont "from JOHTO?"

	para "And a Champion?"
	line "At your age?"
	cont "That's incredible."

	para "Me? I used to be"
	line "skilled enough."

	para "Such a shame, the"
	line "things I was asked"

	para "to do in the name"
	line "of the great WAR."

	para "I fell in love"
	line "with a girl from"

	para "ECRUTEAK in the"
	line "early days of the"
	cont "WAR."

	para "She died in the"
	line "fires that"

	para "consumed the"
	line "BRASS TOWER."

	para "It's been decades"
	line "but I miss her"
	cont "every day."
	done

PewterCityGrampsText:
	text "..."
	line "..."

	para "Yes? Hello there"
	line "You've met my"
	cont "MIRA!"

	para "..."

	para "Really!? Ahaha!"
	line "Kiddo that's"
	cont "Incredible!"

	para "All these years,"
	line "I've lived with"

	para "the guilt of what"
	line "my commanding off-"
	cont "icer did to her."

	para "I don't know how"
	line "they got wind of"
	cont "the SILVER WING."

	para "But they did horr-"
	line "ible things to my"
	cont "MIRA."

	para "She was right, I"
	line "hid it from them."

	para "Thank you for"
	line "coming to find me."

	para "I believe MIRA"
	line "would've wanted"

	para "me to entrust you"
	line "with this."
	done

PewterCityGrampsText2:
	text "Yes, that's the"
	line "SILVER WING."

	para "They tortured my"
	line "MIRA for it, and"

	para "then they stormed"
	line "the BRASS TOWER."

	para "The Priestesses of"
	line "LUGIA fought back."

	para "In the chaos, I"
	line "killed my officer."

	para "But the fight got"
	line "out of hand."

	para "Sacred LUGIA fled"
	line "as the tower was"
	cont "set a blaze."

	para "I was one of the"
	line "few who got out."

	para "I told my other"
	line "officers that it"
	
	para "burned with the"
	line "tower."

	para "We left ECRUTEAK"
	line "soon after."

	para "It was a small"
	line "rebellion, but I've"

	para "kept it safe all"
	line "these years."

	para "Anyway, it should be"
	line "returned to JHOTO."

	para "I'm sorry kiddo, for"
	line "everything that"
	cont "happened to your"
	cont "people."
	done

PewterCityGrampsText_GotSilverWing:
	text "I hope more of my"
	line "people work to"

	para "make things right"
	line "with yours."

	para "Ahh, but young"
	line "people like you"
	cont "give me hope!"

	para "And I know my"
	line "MIRA waits for"

	para "me in the next"
	line "life. That too"
	cont "gives me hope!"
	done

PewterCitySignText:
	text "PEWTER CITY"
	line "A Stone Gray City"
	done

PewterGymSignText:
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"

	para "The Rock Solid"
	line "#MON Trainer"
	done

PewterMuseumSignText:
	text "There's a notice"
	line "here…"

	para "PEWTER MUSEUM OF"
	line "SCIENCE is closed."
	cont "Indefinitely."

	para "Looking inside the"
	line "window, the museum"
	
	para "appears to have"
	line "been ransacked."

	para "the displays are"
	line "all broken."
	done

PewterCityMtMoonGiftShopSignText:
	text "There's a notice"
	line "here…"

	para "MT.MOON GIFT SHOP"
	line "NOW OPEN!"
	done

PewterCityWelcomeSignText:
	text "WELCOME TO"
	line "PEWTER CITY!"
	done

PewterCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29, 13, PEWTER_NIDORAN_SPEECH_HOUSE, 1
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 23, 17, PEWTER_MART, 2
	warp_event 13, 25, PEWTER_POKECENTER_1F, 1
	warp_event  7, 29, PEWTER_SNOOZE_SPEECH_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 25, 23, BGEVENT_READ, PewterCitySign
	bg_event 11, 17, BGEVENT_READ, PewterGymSign
	bg_event 15,  9, BGEVENT_READ, PewterMuseumSign
	bg_event 33, 19, BGEVENT_READ, PewterCityMtMoonGiftShopSign
	bg_event 19, 29, BGEVENT_READ, PewterCityWelcomeSign
	bg_event 14, 25, BGEVENT_READ, PewterCityPokecenterSign
	bg_event 24, 17, BGEVENT_READ, PewterCityMartSign

	def_object_events
	object_event 19, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerFScript, -1
	object_event 14, 29, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PewterCityBugCatcherScript, -1
	object_event 29, 17, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityGrampsScript, EVENT_PEWTER_ALERT
	object_event 32,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityFruitTree1, -1
	object_event 30,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityFruitTree2, -1
	object_event 18, 30, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, PewterTownCityPolice1Script, EVENT_BEAT_CITY_POLICE_PEWTER
	object_event 33, 17, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, PewterTownCityPolice2Script, EVENT_BEAT_CITY_POLICE_PEWTER
	object_event 12, 26, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, PewterTownCityPolice3Script, EVENT_BEAT_CITY_POLICE_PEWTER
