	object_const_def
	const LANCESROOM_LANCE
	const LANCESROOM_MARY
	const LANCESROOM_OAK

LancesRoom_MapScripts:
	def_scene_scripts
	scene_script LancesRoomLockDoorScene, SCENE_LANCESROOM_LOCK_DOOR
	scene_script LancesRoomNoopScene,     SCENE_LANCESROOM_APPROACH_LANCE

	def_callbacks
	callback MAPCALLBACK_TILES, LancesRoomDoorsCallback

LancesRoomLockDoorScene:
	sdefer LancesRoomDoorLocksBehindYouScript
	end

LancesRoomNoopScene:
	end

LancesRoomDoorsCallback:
	checkevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 22, $34 ; wall
.KeepEntranceOpen:
	checkevent EVENT_LANCES_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 0, $0b ; open door
.KeepExitClosed:
	endcallback

LancesRoomDoorLocksBehindYouScript:
	applymovement PLAYER, LancesRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 22, $34 ; wall
	reloadmappart
	closetext
	setscene SCENE_LANCESROOM_APPROACH_LANCE
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	end

Script_ApproachLanceFromLeft:
	special FadeOutMusic
	applymovement PLAYER, MovementData_ApproachLanceFromLeft
	sjump LancesRoomLanceScript

Script_ApproachLanceFromRight:
	special FadeOutMusic
	applymovement PLAYER, MovementData_ApproachLanceFromRight
LancesRoomLanceScript:
	turnobject LANCESROOM_LANCE, LEFT
	opentext
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue .Lance2
	sjump .Lance1

.Lance1:
	writetext LanceBattleIntroText
	waitbutton
	closetext
	winlosstext LanceBattleWinText, 0
	setlasttalked LANCESROOM_LANCE
	loadtrainer CHAMPION, LANCE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_BEAT_CHAMPION_LANCE
	opentext
	writetext LanceBattleAfterText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0b ; open door
	reloadmappart
	closetext
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	musicfadeout MUSIC_BEAUTY_ENCOUNTER, 16
	pause 30
	showemote EMOTE_SHOCK, LANCESROOM_LANCE, 15
	turnobject LANCESROOM_LANCE, DOWN
	pause 10
	turnobject PLAYER, DOWN
	appear LANCESROOM_MARY
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryRushesIn
	opentext
	writetext LancesRoomMaryOhNoOakText
	waitbutton
	closetext
	appear LANCESROOM_OAK
	applymovement LANCESROOM_OAK, LancesRoomMovementData_OakWalksIn
	follow LANCESROOM_MARY, LANCESROOM_OAK
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryYieldsToOak
	stopfollow
	turnobject LANCESROOM_OAK, UP
	turnobject LANCESROOM_LANCE, LEFT
	opentext
	writetext LancesRoomOakCongratulationsText
	promptbutton
	verbosegiveitem NORMAL_BOX
	waitbutton
	closetext
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryInterviewChampion
	turnobject PLAYER, LEFT
	opentext
	writetext LancesRoomMaryInterviewText
	waitbutton
	closetext
	applymovement LANCESROOM_LANCE, LancesRoomMovementData_LancePositionsSelfToGuidePlayerAway
	turnobject PLAYER, UP
	opentext
	writetext LancesRoomNoisyText
	waitbutton
	closetext
	follow LANCESROOM_LANCE, PLAYER
	turnobject LANCESROOM_MARY, UP
	turnobject LANCESROOM_OAK, UP
	applymovement LANCESROOM_LANCE, LancesRoomMovementData_LanceLeadsPlayerToHallOfFame
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear LANCESROOM_LANCE
	applymovement PLAYER, LancesRoomMovementData_PlayerExits
	playsound SFX_EXIT_BUILDING
	disappear PLAYER
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryTriesToFollow
	showemote EMOTE_SHOCK, LANCESROOM_MARY, 15
	opentext
	writetext LancesRoomMaryNoInterviewText
	pause 30
	closetext
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryRunsBackAndForth
	special FadeOutPalettes
	pause 15
	warpfacing UP, HALL_OF_FAME, 4, 13
	end

.Lance2:
	writetext LanceBattleIntroText2
	waitbutton
	closetext
	winlosstext LanceBattleWinText2, 0
	setlasttalked LANCESROOM_LANCE
	loadtrainer CHAMPION, LANCE2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_BEAT_CHAMPION_LANCE
	opentext
	writetext LanceBattleAfterText2
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0b ; open door
	reloadmappart
	closetext
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	musicfadeout MUSIC_BEAUTY_ENCOUNTER, 16
	pause 30
	showemote EMOTE_SHOCK, LANCESROOM_LANCE, 15
	turnobject LANCESROOM_LANCE, DOWN
	pause 10
	turnobject PLAYER, DOWN
	appear LANCESROOM_MARY
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryRushesIn
	opentext
	writetext LancesRoomMaryOhNoOakText2
	waitbutton
	closetext
	appear LANCESROOM_OAK
	applymovement LANCESROOM_OAK, LancesRoomMovementData_OakWalksIn
	follow LANCESROOM_MARY, LANCESROOM_OAK
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryYieldsToOak
	stopfollow
	turnobject LANCESROOM_OAK, UP
	turnobject LANCESROOM_LANCE, LEFT
	opentext
	writetext LancesRoomOakCongratulationsText2
	promptbutton
	verbosegiveitem GORGEOUS_BOX
	waitbutton
	closetext
	setevent EVENT_OPENED_MT_SILVER
	setevent EVENT_ASK_YOUR_MOM_ABOUT_RED
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryInterviewChampion
	turnobject PLAYER, LEFT
	opentext
	writetext LancesRoomMaryInterviewText2
	waitbutton
	closetext
	applymovement LANCESROOM_LANCE, LancesRoomMovementData_LancePositionsSelfToGuidePlayerAway
	turnobject PLAYER, UP
	opentext
	writetext LancesRoomNoisyText2
	waitbutton
	closetext
	follow LANCESROOM_LANCE, PLAYER
	turnobject LANCESROOM_MARY, UP
	turnobject LANCESROOM_OAK, UP
	applymovement LANCESROOM_LANCE, LancesRoomMovementData_LanceLeadsPlayerToHallOfFame
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear LANCESROOM_LANCE
	applymovement PLAYER, LancesRoomMovementData_PlayerExits
	playsound SFX_EXIT_BUILDING
	disappear PLAYER
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryTriesToFollow
	showemote EMOTE_SHOCK, LANCESROOM_MARY, 15
	opentext
	writetext LancesRoomMaryNoInterviewText2
	pause 30
	closetext
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryRunsBackAndForth
	special FadeOutPalettes
	pause 15
	warpfacing UP, HALL_OF_FAME, 4, 13
	end

LancesRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

MovementData_ApproachLanceFromLeft:
	step UP
	step UP
	turn_head RIGHT
	step_end

MovementData_ApproachLanceFromRight:
	step UP
	step LEFT
	step UP
	turn_head RIGHT
	step_end

LancesRoomMovementData_MaryRushesIn:
	big_step UP
	big_step UP
	big_step UP
	turn_head DOWN
	step_end

LancesRoomMovementData_OakWalksIn:
	step UP
	step UP
	step_end

LancesRoomMovementData_MaryYieldsToOak:
	step LEFT
	turn_head RIGHT
	step_end

LancesRoomMovementData_MaryInterviewChampion:
	big_step UP
	turn_head RIGHT
	step_end

LancesRoomMovementData_LancePositionsSelfToGuidePlayerAway:
	step UP
	step LEFT
	turn_head DOWN
	step_end

LancesRoomMovementData_LanceLeadsPlayerToHallOfFame:
	step UP
	step_end

LancesRoomMovementData_PlayerExits:
	step UP
	step_end

LancesRoomMovementData_MaryTriesToFollow:
	step UP
	step RIGHT
	turn_head UP
	step_end

LancesRoomMovementData_MaryRunsBackAndForth:
	big_step RIGHT
	big_step RIGHT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end

LanceBattleIntroText:
	text "LANCE: I've been"
	line "waiting for you."

	para "<PLAY_G>!"

	para "I knew that you,"
	line "with your skills,"

	para "would eventually"
	line "reach me here."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Yes, Perhaps I"
	line "should answer for"
	cont "my crimes."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You battled the"
	line "shades who died"

	para "when the ARCHIVES"
	line "burned!?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I owe a great"
	line "debt to them and"
	cont "their families."

	para "Have you come to"
	line "to collect that"
	cont "debt?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I see, <PLAY_G>!"
	line "Very well."

	para "There's no need"
	line "for words now."

	para "We will battle to"
	line "determine who is"

	para "the stronger of"
	line "the two of us."

	para "As the BUTCHER of"
	line "GOLDENROD, and as"

	para "the #MON LEAGUE"
	line "CHAMPION…"

	para "I, LANCE the drag-"
	line "on master, accept"
	cont "your challenge!"
	done

LanceBattleIntroText2:
	text "LANCE: So you've"
	line "returned."

	para "<PLAY_G>, good"
	line "of you to come."

	para "I've trained hard"
	line "since we last"
	cont "fought."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "So the others"
	line "have told you my"
	cont "other secret?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Yes, I know where"
	line "your father is."

	para "Defeat me, and I"
	line "will tell you."

	para "But be warned,"
	line "<PLAY_G>, you're"

	para "no longer dealing"
	line "with the average"
	cont "DRAGON MASTER."

	para "NO, I have ascen-"
	line "ded to a level"
	cont "beyond!"

	para "That's right I am"
	line "a DRAGON DOCTOR!"
	done

LanceBattleWinText:
	text "…It's over."

	para "I hope my defeat"
	line "today can give"

	para "some rest to the"
	line "shades, that a"

	para "child of JHOTO has"
	line "brought peace."
	done

LanceBattleWinText2:
	text "It seems your skill"
	line "still surpasses my"
	cont "own."

	para "Very well, I will"
	line "tell you about"
	cont "Your father."
	done

LanceBattleAfterText:
	text "…Whew."

	para "You have become"
	line "truly powerful,"
	cont "<PLAY_G>."

	para "By the power"
	line "vested in me, as"

	para "the #MON LEAGUE"
	line "CHAMPION, I grant"

	para "you full KANTO"
	line "CITIZENSHIP!"

	para "We both know my"
	line "hands are stained"

	para "but you can help"
	line "to forge a new"
	cont "peace!"
	done

LanceBattleAfterText2:
	text "Your father has"
	line "gone to train in"

	para "the Sacred SILVER"
	line "MOUNTAINS."

	para "Only elite"
	line "trainers are"
	cont "allowed to enter."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Perhaps you"
	line "should ask your"

	para "mother who your"
	line "father really is."

	para "All I can say,"
	line "is that you're"

	para "everything I"
	line "would expect"
	cont "from his child."
	done

LancesRoomMaryOhNoOakText:
	text "MARY: Oh, no!"
	line "It's all over!"

	para "PROF.OAK, if you"
	line "weren't so slow…"
	done

LancesRoomMaryOhNoOakText2:
	text "MARY: Oh, no!"
	line "It's all over!"
	cont "Not AGAIN!!!"

	para "PROF.OAK, if you"
	line "weren't so slow…"

	para "I swear I need"
	line "to re-negotiate"
	cont "my contract!"
	done

LancesRoomOakCongratulationsText:
	text "PROF.OAK: Ah,"
	line "<PLAY_G>!"

	para "It's been a long"
	line "while."

	para "Why, I haven't"
	line "seen you since the"

	para "day I gave you my"
	line "old #DEX!"

	para "You certainly look"
	line "more impressive."

	para "Your conquest of"
	line "the LEAGUE is just"
	cont "fantastic!"

	para "Ahh you remind me"
	line "of your father,"

	para "when he was your"
	line "age."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Oh my, yes, I knew"
	line "your father. A"

	para "story for another"
	line "time perhaps."

	para "For now, we have"
	line "official business"
	cont "to attend to."

	para "Congratulations,"
	line "<PLAY_G>!"

	para "Please accept"
	line "this gift on"

	para "behalf of the"
	line "KANTO Government!"
	done

LancesRoomOakCongratulationsText2:
	text "PROF.OAK: Ah,"
	line "<PLAY_G>!"

	para "Well done again!"
	line "You're a chip off"

	para "the old block, as"
	line "they say!"

	para "The bond you share"
	line "with your #MON"

	para "is truly something"
	line "incredible!"

	para "Congratulations,"
	line "again <PLAY_G>!"

	para "Please accept"
	line "this gift on"

	para "behalf of the"
	line "KANTO Government!"
	done

LancesRoomMaryInterviewText:
	text "MARY: Let's inter-"
	line "view the brand new"
	cont "CHAMPION!"

	para "<PLAY_G> How does"
	line "it feel to be the"

	para "first JHOTO"
	line "resident to gain"

	para "full KANTO"
	line "CITIZENSHIP!?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I see, and How-"
	done

LancesRoomMaryInterviewText2:
	text "MARY: <PLAY_G>!"
	line "Do you have time"

	para "to stay for the"
	line "interview!?"

	para "<……> <……> <……>"
	done

LancesRoomNoisyText:
	text "LANCE: This is"
	line "getting to be a"
	cont "bit too noisy…"

	para "<PLAY_G>, could you"
	line "come with me?"
	done

LancesRoomNoisyText2:
	text "LANCE: Maybe"
	line "another time MARY."

	para "<PLAY_G>, has some"
	line "urgent business to"

	para "attend to at the"
	line "sacred SILVER"
	cont "MOUNTAINS."

	para "<PLAY_G>, could you"
	line "come with me?"
	done

LancesRoomMaryNoInterviewText:
	text "MARY: Oh, wait!"
	line "We haven't finish-"
	cont "ed the interview!"
	done

LancesRoomMaryNoInterviewText2:
	text "MARY: <PLAY_G>!"
	line "can you please"

	cont "stay for one"
	line "question!?"
	done

LancesRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 23, KARENS_ROOM, 3
	warp_event  5, 23, KARENS_ROOM, 4
	warp_event  4,  1, HALL_OF_FAME, 1
	warp_event  5,  1, HALL_OF_FAME, 2

	def_coord_events
	coord_event  4,  5, SCENE_LANCESROOM_APPROACH_LANCE, Script_ApproachLanceFromLeft
	coord_event  5,  5, SCENE_LANCESROOM_APPROACH_LANCE, Script_ApproachLanceFromRight

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LancesRoomLanceScript, -1
	object_event  4,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANCES_ROOM_OAK_AND_MARY
	object_event  4,  7, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANCES_ROOM_OAK_AND_MARY
