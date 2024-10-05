	object_const_def
	const DRAGONSHRINE_ELDER1
	const DRAGONSHRINE_ELDER2
	const DRAGONSHRINE_ELDER3
	const DRAGONSHRINE_CLAIR

DragonShrine_MapScripts:
	def_scene_scripts
	scene_script DragonShrineTakeTestScene, SCENE_DRAGONSHRINE_TAKE_TEST
	scene_script DragonShrineNoopScene,     SCENE_DRAGONSHRINE_NOOP

	def_callbacks

DragonShrineTakeTestScene:
	sdefer DragonShrineTakeTestScript
	end

DragonShrineNoopScene:
	end

DragonShrineTakeTestScript:
	applymovement PLAYER, DragonShrinePlayerWalkInMovement
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderStepDownMovement
	opentext
	writetext DragonShrineElderGreetingText
	promptbutton
.Question1:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	writetext DragonShrineQuestion1Text
	promptbutton
	loadmenu DragonShrineQuestion1_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .RightAnswer
	end

.Question2:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	writetext DragonShrineQuestion2Text
	promptbutton
	loadmenu DragonShrineQuestion2_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .WrongAnswer
.Question3:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	writetext DragonShrineQuestion3Text
	promptbutton
	loadmenu DragonShrineQuestion3_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WrongAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .RightAnswer
.Question4:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	writetext DragonShrineQuestion4Text
	promptbutton
	loadmenu DragonShrineQuestion4_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RightAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .RightAnswer
.Question5:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	writetext DragonShrineQuestion5Text
	promptbutton
	loadmenu DragonShrineQuestion5_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WrongAnswer
	ifequal 2, .RightAnswer
	ifequal 3, .WrongAnswer
.RightAnswer:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iftrue .PassedTheTest
	writetext DragonShrineRightAnswerText
	promptbutton
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .Question5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .Question4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .Question3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .Question2
.WrongAnswer:
	closetext
	turnobject DRAGONSHRINE_ELDER1, LEFT
	opentext
	writetext DragonShrineWrongAnswerText1
	waitbutton
	closetext
	turnobject DRAGONSHRINE_ELDER1, DOWN
	opentext
	writetext DragonShrineWrongAnswerText2
	waitbutton
	closetext
	setevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iftrue .Question5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .Question4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .Question3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .Question2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .Question1
.PassedTheTest:
	writetext DragonShrinePassedTestText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_CLAIR
	appear DRAGONSHRINE_CLAIR
	waitsfx
	turnobject PLAYER, DOWN
	pause 30
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairWalkInMovement
	turnobject DRAGONSHRINE_CLAIR, RIGHT
	turnobject PLAYER, LEFT
	turnobject DRAGONSHRINE_ELDER1, LEFT
	opentext
	writetext DragonShrineClairYouPassedText
	waitbutton
	closetext
	special FadeOutMusic
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairBigStepLeftMovement
	opentext
	writetext DragonShrineClairThatCantBeText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairSlowStepLeftMovement
	opentext
	writetext DragonShrineClairYoureLyingText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkToClairMovement
	turnobject DRAGONSHRINE_CLAIR, UP
	opentext
	writetext DragonShrineMustIInformLanceText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, DRAGONSHRINE_CLAIR, 15
	opentext
	writetext DragonShrineIUnderstandText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairTwoSlowStepsRightMovement
	opentext
	writetext DragonShrineHereRisingBadgeText
	waitbutton
	setflag ENGINE_RISINGBADGE
	playsound SFX_GET_BADGE
	waitsfx
	special RestartMapMusic
	specialphonecall SPECIALCALL_MASTERBALL
	setscene SCENE_DRAGONSHRINE_NOOP
	writetext DragonShrinePlayerReceivedRisingBadgeText
	promptbutton
	writetext DragonShrineRisingBadgeExplanationText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkAway1Movement
	turnobject DRAGONSHRINE_CLAIR, UP
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkAway2Movement
	turnobject PLAYER, UP
	opentext
	writetext DragonShrineElderScoldsClairText
	waitbutton
	closetext
	opentext
	writetext DragonShrineSpeechlessText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairWalkOutMovement
	playsound SFX_ENTER_DOOR
	disappear DRAGONSHRINE_CLAIR
	waitsfx
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

DragonShrineElder1Script:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .DontGiveDratiniYet
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	iftrue .ReceivedDratini
	checkevent EVENT_GOT_DRATINI
	iffalse .GiveDratini
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue .BeatRivalInMtMoon
	writetext DragonShrineClairsGrandfatherText
	waitbutton
	closetext
	end

.GiveDratini:
	writetext DragonShrineTakeThisDratiniText
	waitbutton
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	writetext DragonShrinePlayerReceivedDratiniText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke DRATINI, 15
	checkevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	special GiveDratini
	setevent EVENT_GOT_DRATINI
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	writetext DragonShrineSymbolicDragonText
	waitbutton
	closetext
	end

.PartyFull:
	writetext DragonShrinePartyFullText
	waitbutton
	closetext
	end

.BeatRivalInMtMoon:
	writetext DragonShrineRivalIsInTrainingText
	waitbutton
	closetext
	end

.DontGiveDratiniYet:
	writetext DragonShrineComeAgainText
	waitbutton
	closetext
	end

.ReceivedDratini:
	writetext DragonShrineSymbolicDragonText
	waitbutton
	closetext
	end

DragonShrineElder2Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	iftrue .hasGSBall
	setval SUICUNE
	special FindPartyMonThatSpecies
	iftrue .gsball
	writetext DragonShrineElder2Text
	waitbutton
	closetext
	end

.hasGSBall
	writetext DragonShrineElder2HasGSBall
	waitbutton
	closetext
	end

.gsball
	writetext DragonShrineElder2GivesGSBall
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext DragonShrineElder2GSBallExplain
	waitbutton
	closetext
	end

DragonShrineElder3Script:
	faceplayer
	opentext
	writetext DragonShrineElder3Text
	waitbutton
	closetext
	end

DragonShrineQuestion1_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Pal@"
	db "Underling@"
	db "Friend@"

DragonShrineQuestion2_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 9, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Strategy@"
	db "Raising@"
	db "Cheating@"

DragonShrineQuestion3_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 5, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Weak person@"
	db "Tough person@"
	db "Anybody@"

DragonShrineQuestion4_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Love@"
	db "Violence@"
	db "Knowledge@"

DragonShrineQuestion5_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 12, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "Tough@"
	db "Both@"
	db "Weak@"

DragonShrinePlayerWalkInMovement:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step RIGHT
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

DragonShrineElderStepDownMovement:
	slow_step DOWN
	step_end

DragonShrineElderWalkToClairMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	turn_head DOWN
	step_end

DragonShrineElderWalkAway1Movement:
	slow_step RIGHT
	slow_step RIGHT
	step_end

DragonShrineElderWalkAway2Movement:
	slow_step RIGHT
	turn_head DOWN
	step_end

DragonShrineClairWalkInMovement:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

DragonShrineClairBigStepLeftMovement:
	fix_facing
	big_step LEFT
	step_end

DragonShrineClairSlowStepLeftMovement:
	slow_step LEFT
	remove_fixed_facing
	step_end

DragonShrineClairTwoSlowStepsRightMovement:
	slow_step RIGHT
	slow_step RIGHT
	step_end

DragonShrineClairWalkOutMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

DragonShrineElderGreetingText:
	text "Hm… Good to see"
	line "you here."

	para "No need to explain"
	line "why you came."

	para "CLAIR sent you"
	line "here, didn't she?"

	para "That girl is a"
	line "handful…"

	para "I am sorry, but I"
	line "must test you."

	para "Not to worry, you"
	line "are to answer only"
	cont "a few questions."

	para "Ready?"
	done

DragonShrineQuestion1Text:
	text "What are #MON"
	line "to you?"
	done

DragonShrineQuestion2Text:
	text "What helps you to"
	line "win battles?"
	done

DragonShrineQuestion3Text:
	text "What kind of"
	line "trainer do you"
	cont "wish to battle?"
	done

DragonShrineQuestion4Text:
	text "What is most"
	line "important for"
	cont "raising #MON?"
	done

DragonShrineQuestion5Text:
	text "Strong #MON."
	line "Weak #MON."

	para "Which is more"
	line "important?"
	done

DragonShrinePassedTestText:
	text "Hm… I see…"

	para "You care deeply"
	line "for #MON."

	para "Very commendable."

	para "That conviction is"
	line "what is important!"

	para "<PLAYER>, don't"
	line "lose that belief."

	para "It will see you"
	line "through at the"
	cont "#MON LEAGUE."

	para "You will make"
	line "JOHTO proud!"
	done

DragonShrineMustIInformLanceText:
	text "CLAIR! ENOUGH!"

	para "This child is"
	line "impeccable, in"
	cont "skill and spirit!"

	para "Admit defeat and"
	line "confer the RISING-"
	cont "BADGE!"

	para "…Or must I inform"
	line "LANCE of this?"
	done

DragonShrineElderScoldsClairText:
	text "CLAIR…"

	para "Reflect upon what"
	line "it is that you"

	para "lack and this"
	line "child has."
	done

DragonShrineComeAgainText:
	text "Come again, if you"
	line "so desire."
	done

DragonShrineTakeThisDratiniText:
	text "Hm… Good to see"
	line "you here."

	para "Your arrival is"
	line "most fortunate."

	para "I have something"
	line "for you."

	para "Take this DRATINI"
	line "as proof that I"

	para "have recognized"
	line "your worth."
	done

DragonShrinePlayerReceivedDratiniText:
	text "<PLAYER> received"
	line "DRATINI!"
	done

DragonShrinePartyFullText:
	text "Hm? Your #MON"
	line "party is full."
	done

DragonShrineSymbolicDragonText:
	text "Dragon #MON are"
	line "symbolic of our"
	cont "clan."

	para "You have shown"
	line "that you can be"

	para "entrusted with"
	line "one."
	done

DragonShrineClairsGrandfatherText:
	text "CLAIR appears to"
	line "have learned an"

	para "invaluable lesson"
	line "from you."

	para "I thank you as her"
	line "grandfather."
	done

DragonShrineRivalIsInTrainingText:
	text "A boy close to"
	line "your age is in"
	cont "training here."

	para "He is much like"
	line "CLAIR when she was"

	para "younger. It is a"
	line "little worrisome…"
	done

DragonShrineWrongAnswerText1:
	text "Try again you"
	line "little shit."
	done

DragonShrineWrongAnswerText2:
	text "Child, I've seen"
	line "the good in you."

	para "Quit playing"
	line "around, and give"
	cont "me real answers."
	done

DragonShrineRightAnswerText:
	text "Oh, I understand…"
	done

DragonShrineElder2Text:
	text "In my youth, bef-"
	line "ore the war."

	para "I once saw a blue"
	line "flash. Brilliant,"
	cont "racing across the"
	cont "water."

	para "Such a #MON"
	line "I think I would"

	para "like to see again"
	line "before the FOREST"
	cont "PROTECTOR takes my"

	para "spirit to the next"
	line "life."
	done

DragonShrineElder2GivesGSBall:
	text "You managed to"
	line "catch SUICUNE!"

	para "Master was indeed"
	line "right about you!"

	para "All I can say is"
	line "that you have made"

	para "this old man very"
	line "happy. I've wanted"

	para "to see SUICUNE"
	line "again, since I was"
	cont "a boy."

	para "As a thank you, I"
	line "would like to give"
	cont "you a gift."
	done

DragonShrineElder2GSBallExplain:
	text "During the war,"
	line "those of us living"

	para "in the DRAGON"
	line "SHRINE, hid away"

	para "from the violence"
	line "above. Right or"
	cont "wrong, the JOHTO."

	para "Government gave us"
	line "a small cache of"
	cont "rare artifacts."

	para "For safe keeping."
	line "This strange ball"

	para "was among those"
	line "treasures."

	para "I suspect there"
	line "are other secrets"
	cont "hidden within."
	done

DragonShrineElder2HasGSBall:
	text "There were other"
	line "treasures, but"

	para "that ball is all"
	line "which remains."

	para "If you look at"
	line "the craftsmanship"

	para "The ball is clear-"
	line "ly ancient. It is"
	
	para "carved from stone"
	line "yet modeled after" 

	para "an old-fashioned"
	line "APRICORN ball."

	para "Such a mystery."
	done

DragonShrineElder3Text:
	text "It's been quite"
	line "some time since a"

	para "trainer has gained"
	line "our MASTER's rare"
	cont "approval."

	para "In fact, not since"
	line "Master LANCE."

	para "What a pity that"
	line "Master LANCE did"

	para "such harm to his"
	line "own people."

	para "He is now our"
	cont "greatest shame."

	para "Though his grand-"
	line "father refuses"

	para "to see the damage"
	line "that boy caused"
	cont "our people."

	para "Not the people of"
	line "the DRAGON DEN."

	para "But the people of"
	line "all JOHTO!"
	done

DragonShrineClairYouPassedText:
	text "So how did it go?"

	para "I guess there's no"
	line "point in asking."
	cont "You failed."

	para "..."
	line "..."

	para "…What? You passed?"
	done

DragonShrineClairThatCantBeText:
	text "That can't be!"
	done

DragonShrineClairYoureLyingText:
	text "You're lying!"

	para "Even I haven't"
	line "been approved!"

	para "..."

	para "What do you mean"
	line "the questions"
	cont "were easy?"

	para "..."
	line "..."

	para "I'm not willfully"
	line "ignorant and"
	cont "borderline evil!"

	para "..."

	para "You a miserable"
	line "rotten traitor!"
	done

DragonShrineIUnderstandText:
	text "Y-you wouldn't"
	line "You would dare"

	para "invite the butcher"
	line "of GOLDENROD"
	cont "Here to our home?"

	para "..."
	line "..."

	para "Of course you"
	line "would..."

	para "No humiliation"
	line "is worth that."
	done

DragonShrineHereRisingBadgeText:
	text "Here, this is the"
	line "RISINGBADGE…"

	para "Hurry up! Take it!"
	done

DragonShrinePlayerReceivedRisingBadgeText:
	text "<PLAYER> received"
	line "RISINGBADGE."
	done

DragonShrineRisingBadgeExplanationText:
	text "RISINGBADGE will"
	line "enable your"

	para "#MON to use the"
	line "move for climbing"
	cont "waterfalls."

	para "Also, all #MON"
	line "will recognize you"

	para "as a trainer and"
	line "obey your every"

	para "command without"
	line "question."
	done

DragonShrineSpeechlessText:
	text "<……><……><……><……><……><……>"
	done

DragonShrine_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, DRAGONS_DEN_B1F, 2
	warp_event  5,  9, DRAGONS_DEN_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder1Script, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  2,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder2Script, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonShrineElder3Script, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  4,  8, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGON_SHRINE_CLAIR
