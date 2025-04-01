	object_const_def
	const PLAYERSHOUSE1F_MOM1
	const PLAYERSHOUSE1F_MOM2
	const PLAYERSHOUSE1F_MOM3
	const PLAYERSHOUSE1F_MOM4
	const PLAYERSHOUSE1F_POKEFAN_F

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script PlayersHouse1FNoop1Scene, SCENE_PLAYERSHOUSE1F_MEET_MOM
	scene_script PlayersHouse1FNoop2Scene, SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks

PlayersHouse1FNoop1Scene:
	end

PlayersHouse1FNoop2Scene:
	end

MeetMomLeftScript:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

MeetMomRightScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .OnRight
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsTowardPlayerMovement
	sjump MeetMomScript

.OnRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovement
MeetMomScript:
	scall MomScriptPasswordCheck
	opentext
	writetext ElmsLookingForYouText
	promptbutton
	getstring STRING_BUFFER_4, PokegearName
	scall PlayersHouse1FReceiveItemStd
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	setscene SCENE_PLAYERSHOUSE1F_NOOP
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	writetext MomGivesPokegearText
	promptbutton
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	sjump .DayOfWeekDone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	writetext ComeHomeForDSTText
	yesorno
	iffalse .ExplainPhone
	sjump .KnowPhone

.KnowPhone:
	writetext KnowTheInstructionsText
	promptbutton
	sjump .FinishPhone

.ExplainPhone:
	writetext DontKnowTheInstructionsText
	promptbutton
	sjump .FinishPhone

.FinishPhone:
	writetext InstructionsNextText
	waitbutton
	closetext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .FromRight
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .FromLeft
	sjump .Finish

.FromRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsBackMovement
	sjump .Finish

.FromLeft:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	sjump .Finish

.Finish:
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	end

MeetMomTalkedScript:
	playmusic MUSIC_MOM
	sjump MeetMomScript

PokegearName:
	db "#GEAR@"

PlayersHouse1FReceiveItemStd:
	jumpstd ReceiveItemScript
	end

MomScriptPasswordCheck:
	checkevent EVENT_STARTERSET_CHOSEN
	iftrue .stop
	setevent EVENT_STARTERSET_CHOSEN
	callasm .kanto
	iftrue .kanto2
.stop
	end

.kanto
	xor a
	ld [wScriptVar], a
	ld de, KantoPassword
	ld hl, wGreensName ; check inputted password
	ld c, 4
	call CompareBytes
	ret nz
	ld a, 1
	ld [wScriptVar], a
	ret

.kanto2
	setevent EVENT_PASSWORD_KANTO
	end
	
KantoPassword:
    db "KANTO"


MomScript:
	faceplayer
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetMomTalkedScript ; SCENE_PLAYERSHOUSE1F_MEET_MOM
	opentext
	checkevent EVENT_ASK_YOUR_MOM_ABOUT_RED
	iftrue .RedWasYourFather
	checkevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	iftrue .FirstTimeBanking
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .BankOfMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .GaveMysteryEgg
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .GotAPokemon
	writetext HurryUpElmIsWaitingText
	waitbutton
	closetext
	end

.GotAPokemon:
	writetext SoWhatWasProfElmsErrandText
	waitbutton
	closetext
	end

.FirstTimeBanking:
	writetext ImBehindYouText
	waitbutton
	closetext
	end

.GaveMysteryEgg:
	setevent EVENT_FIRST_TIME_BANKING_WITH_MOM
.BankOfMom:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special BankOfMom
	waitbutton
	closetext
	end

.RedWasYourFather:
	writetext RedWasYourFatherText
	waitbutton
	closetext
	end

NeighborScript:
	faceplayer
	opentext
	checktime MORN
	iftrue .MornScript
	checktime DAY
	iftrue .DayScript
	checktime NITE
	iftrue .NiteScript

.MornScript:
	writetext NeighborMornIntroText
	promptbutton
	sjump .Main

.DayScript:
	writetext NeighborDayIntroText
	promptbutton
	sjump .Main

.NiteScript:
	writetext NeighborNiteIntroText
	promptbutton
	sjump .SexyMomma

.Main:
	writetext NeighborText
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_POKEFAN_F, RIGHT
	end

.SexyMomma:
	writetext MommaNewLoverText
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_POKEFAN_F, RIGHT
	end

PlayersHouse1FTVScript:
	jumptext PlayersHouse1FTVText

PlayersHouse1FStoveScript:
	jumptext PlayersHouse1FStoveText

PlayersHouse1FSinkScript:
	jumptext PlayersHouse1FSinkText

PlayersHouse1FFridgeScript:
	jumptext PlayersHouse1FFridgeText

MomTurnsTowardPlayerMovement:
	turn_head RIGHT
	step_end

MomWalksToPlayerMovement:
	slow_step RIGHT
	step_end

MomTurnsBackMovement:
	turn_head LEFT
	step_end

MomWalksBackMovement:
	slow_step LEFT
	step_end

ElmsLookingForYouText:
	text "Oh, <PLAYER>…! Our"
	line "neighbor, PROF."

	para "ELM, was looking"
	line "for you."

	para "We've got a big"
	line "surprise for you!"

	para "Well two surprises"
	line "I also got you"

	para "a brand new #-"
	line "GEAR!"

	para "It's the latest"
	line "model from SILPH!"
	done

MomGivesPokegearText:
	text "It's a phone, but"
	line "it's also like"

	para "able to do other"
	line "non-phone things."

	para "Like give you map"
	line "directions and"
	cont "play music."

	para "..."
	line "..."

	para "What's a smart"
	line "phone?"

	para "..."
	line "..."

	para "Huh... yeah kinda"
	line "like that."

	para "Anyway we'll need"
	line "to set the date."
	done

IsItDSTText:
	text "Is it Daylight"
	line "Saving Time now?"
	done

ComeHomeForDSTText:
	text "Come home to"
	line "adjust your clock"

	para "for Daylight"
	line "Saving Time."

	para "By the way, do you"
	line "know how to use"
	cont "the PHONE?"
	done

KnowTheInstructionsText:
	text "Of course you do."
	line "It's not the 90s!"
	done

DontKnowTheInstructionsText:
	text "I'll read the"
	line "instructions."

	para "Turn the #GEAR"
	line "on and select the"
	cont "PHONE icon."

	para "Phone numbers are"
	line "stored in memory."

	para "Just choose a name"
	line "you want to call."

	para "Gee, isn't that"
	line "convenient?"
	done

InstructionsNextText:
	text "See you later"
	line "sweetie!"
	done

HurryUpElmIsWaitingText:
	text "PROF.ELM is wait-"
	line "ing for you."

	para "I told him you'd"
	line "be right over."

	para "Hurry up, baby!"
	done

SoWhatWasProfElmsErrandText:
	text "So, what did you"
	line "think of our"
	cont "surprise!?"

	para "..."
	line "..."

	para "Oh, that's such a"
	line "wonderful #MON!"

	para "I'm so proud. I"
	line "wish your dad"

	para "could be here to"
	line "see you now!"

	para "All grown up, a"
	line "real #MON"
	cont "trainer!"

	para "..."
	line "..."

	para "That does sound"
	line "challenging."

	para "But, you should be"
	line "proud that people"
	cont "rely on you."
	done

ImBehindYouText:
	text "<PLAYER>, do it!"

	para "I'm behind you all"
	line "the way!"
	done

NeighborMornIntroText:
	text "Good morning,"
	line "<PLAY_G>!"

	para "I'm visiting!"
	done

NeighborDayIntroText:
	text "Hello, <PLAY_G>!"
	line "I'm visiting!"
	done

NeighborNiteIntroText:
	text "Good evening,"
	line "<PLAY_G>!"

	para "..."
	line "..."

	para "Yes, I know it's"
	line "late. But your"

	para "mom and I have a"
	line "lot to talk"
	
	para "about, over a"
	line "glass of wine."
	done

MommaNewLoverText:
	text "<PLAY_G>, your mom"
	line "has needs."

	para "..."
	line "..."

	para "To be honest, the"
	line "less you know the"
	cont "better."

	para "You weren't gonna"
	line "stay here tonight"
	cont "were you?"

	para "..."
	line "..."

	para "That's probably"
	line "for the best."

	para "Have a good night"
	line "<PLAY_G>!"
	done

NeighborText:
	text "<PLAY_G>, have you"
	line "heard?"

	para "My daughter is"
	line "adamant about"

	para "becoming PROF."
	line "ELM's assistant."

	para "He's trying to"
	line "secure additional"

	para "funding from his"
	line "boss out in KANTO."

	para "But between you"
	line "and me, I don't"

	para "think he wants her"
	line "to work for him."

	para "He's keen to get"
	line "her a scholarship"

	para "so she can go"
	line "study at the"
	cont "NORWOOD COLLEGIUM."
	done

PlayersHouse1FStoveText:
	text "Mom's specialty!"

	para "CINNABAR VOLCANO"
	line "BURGER!"

	para "Just the way dad"
	line "used to make it."
	done

PlayersHouse1FSinkText:
	text "The sink is spot-"
	line "less. Mom likes it"
	cont "clean."
	done

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "FRESH WATER and"
	line "tasty LEMONADE!"

	para "I didn't realize"
	line "she went to"
	cont "GOLDENROD!"
	done

PlayersHouse1FTVText:
	text "There's a movie on"
	line "TV: A collection"

	para "of resourceful"
	line "appliances are"

	para "trying to escape"
	line "a junk yard."

	para "Wow, that toaster"
	line "is both brave and"
	cont "little."
	done

RedWasYourFatherText:
	text "Hi Sweetie!"
	line "..What's Wrong?"

	para "..."
	line "..."

	para "So you've met"
	line "LANCE?"

	para "..."
	line "..."

	para "I'm sorry you had"
	line "to run into that"
	cont "horrible man."

	para "Yes, he knew..."
	line "knows... your"
	cont "father."

	para "<PLAY_G>, how"
	line "much do you know"
	cont "about the war?"

	para "..."
	line "..."

	para "Your father was"
	line "from KANTO."

	para "A little town"
	line "called PALLET."

	para "..."
	line "..."

	para "Of course, you"
	line "already know"
	cont "PROF.OAK."

	para "Your dad was"
	line "his very best"
	cont "trainer."

	para "Like no one"
	line "ever was."

	para "..."
	line "..."

	para "<PLAY_G>, I"
	line "know you've"

	para "already figured"
	line "it out."

	para "..."
	line "..."

	para "Yes, your father"
	line "is RED."

	para "We didn't tell"
	line "you because, we"

	para "wanted you to"
	line "have a normal"
	cont "life."

	para "Your father and I"
	line "divorced after"

	para "the war. He did"
	line "terrible things"
	cont "to protect KANTO."

	para "..."
	line "..."

	para "No, sweetie, your"
	line "skill as a #MON"

	para "trainer, comes"
	line "from your heart."

	para "not your father."
	line "Don't let his"

	para "awful legacy ruin"
	line "everything you've"
	cont "accomplished!"

	para "..."
	line "..."

	para "I love you too"
	line "<PLAY_G>."
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, NEW_BARK_TOWN, 2
	warp_event  7,  7, NEW_BARK_TOWN, 2
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events
	coord_event  8,  4, SCENE_PLAYERSHOUSE1F_MEET_MOM, MeetMomLeftScript
	coord_event  9,  4, SCENE_PLAYERSHOUSE1F_MEET_MOM, MeetMomRightScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FFridgeScript
	bg_event  4,  1, BGEVENT_READ, PlayersHouse1FTVScript

	def_object_events
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  2,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  0,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  4,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NeighborScript, EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
