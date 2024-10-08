	object_const_def
	const INDIGOPLATEAUPOKECENTER1F_NURSE
	const INDIGOPLATEAUPOKECENTER1F_CLERK
	const INDIGOPLATEAUPOKECENTER1F_COOLTRAINER_M
	const INDIGOPLATEAUPOKECENTER1F_RIVAL

IndigoPlateauPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script IndigoPlateauPokecenter1FNoopScene, SCENE_INDIGOPLATEAUPOKECENTER1F_RIVAL_BATTLE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, IndigoPlateauPokecenter1FPrepareElite4Callback

IndigoPlateauPokecenter1FNoopScene:
	end

IndigoPlateauPokecenter1FPrepareElite4Callback:
	setmapscene WILLS_ROOM, SCENE_WILLSROOM_LOCK_DOOR
	setmapscene KOGAS_ROOM, SCENE_KOGASROOM_LOCK_DOOR
	setmapscene BRUNOS_ROOM, SCENE_BRUNOSROOM_LOCK_DOOR
	setmapscene KARENS_ROOM, SCENE_KARENSROOM_LOCK_DOOR
	setmapscene LANCES_ROOM, SCENE_LANCESROOM_LOCK_DOOR
	setmapscene HALL_OF_FAME, SCENE_HALLOFFAME_ENTER
	clearevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_WILLS_ROOM_EXIT_OPEN
	clearevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_KOGAS_ROOM_EXIT_OPEN
	clearevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	clearevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_KARENS_ROOM_EXIT_OPEN
	clearevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_LANCES_ROOM_EXIT_OPEN
	clearevent EVENT_BEAT_ELITE_4_WILL
	clearevent EVENT_BEAT_ELITE_4_KOGA
	clearevent EVENT_BEAT_ELITE_4_BRUNO
	clearevent EVENT_BEAT_ELITE_4_KAREN
	clearevent EVENT_BEAT_CHAMPION_LANCE
	setevent EVENT_LANCES_ROOM_OAK_AND_MARY
	endcallback

PlateauRivalBattle1:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iffalse PlateauRivalScriptDone
	checkflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
	iftrue PlateauRivalScriptDone
	readvar VAR_WEEKDAY
	ifequal SUNDAY, PlateauRivalScriptDone
	ifequal TUESDAY, PlateauRivalScriptDone
	ifequal THURSDAY, PlateauRivalScriptDone
	ifequal FRIDAY, PlateauRivalScriptDone
	ifequal SATURDAY, PlateauRivalScriptDone
	moveobject INDIGOPLATEAUPOKECENTER1F_RIVAL, 17, 9
	appear INDIGOPLATEAUPOKECENTER1F_RIVAL
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement INDIGOPLATEAUPOKECENTER1F_RIVAL, PlateauRivalMovement1
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject PLAYER, RIGHT
	sjump PlateauRivalBattleCommon

PlateauRivalBattle2:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iffalse PlateauRivalScriptDone
	checkflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
	iftrue PlateauRivalScriptDone
	readvar VAR_WEEKDAY
	ifequal SUNDAY, PlateauRivalScriptDone
	ifequal TUESDAY, PlateauRivalScriptDone
	ifequal THURSDAY, PlateauRivalScriptDone
	ifequal FRIDAY, PlateauRivalScriptDone
	ifequal SATURDAY, PlateauRivalScriptDone
	appear INDIGOPLATEAUPOKECENTER1F_RIVAL
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement INDIGOPLATEAUPOKECENTER1F_RIVAL, PlateauRivalMovement2
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject PLAYER, LEFT
PlateauRivalBattleCommon:
	opentext
	writetext PlateauRivalText1
	waitbutton
	closetext
	setevent EVENT_INDIGO_PLATEAU_POKECENTER_RIVAL
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	; Cyndaquil
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump PlateauRivalPostBattle

.Totodile:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump PlateauRivalPostBattle

.Chikorita:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump PlateauRivalPostBattle

PlateauRivalPostBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext PlateauRivalText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement INDIGOPLATEAUPOKECENTER1F_RIVAL, PlateauRivalLeavesMovement
	disappear INDIGOPLATEAUPOKECENTER1F_RIVAL
	setscene SCENE_INDIGOPLATEAUPOKECENTER1F_RIVAL_BATTLE
	playmapmusic
	setflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
PlateauRivalScriptDone:
	end

IndigoPlateauPokecenter1FNurseScript:
	checkevent EVENT_KANTO_PAPERS_STOLEN
	iftrue .NoCanHeal
	jumpstd PokecenterNurseScript

.NoCanHeal:
	checkitem KANTO_PAPERS
	iftrue .ProceedNormally
	opentext
	writetext IndigoNoNoText
	waitbutton
	closetext
	end

.ProceedNormally:
	jumpstd PokecenterNurseScript

IndigoPlateauPokecenter1FClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_INDIGO_PLATEAU
	closetext
	end

IndigoPlateauPokecenter1FCooltrainerMScript:
	jumptextfaceplayer IndigoPlateauPokecenter1FCooltrainerMText

PlateauRivalMovement1:
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

PlateauRivalMovement2:
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

PlateauRivalLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

IndigoPlateauPokecenter1FCooltrainerMText:
	text "At the #MON"
	line "LEAGUE, you'll get"

	para "tested by the"
	line "ELITE FOUR."

	para "You have to beat"
	line "them all. If you"

	para "lose, you have to"
	line "start all over!"
	done

PlateauRivalWinText:
	text "…"

	para "OK--I lost…"
	done

IndigoNoNoText:
	text "Welcome to the"
	line "#MON LEAGUE."

	para "May I see your"
	line "proof of KANTO"
	cont "CITIZENSHIP."

	para "..."
	line "..."

	para "I'm sorry, but"
	line "due to a security"

	para "breach, we're"
	line "unable to offer"

	para "#MON CENTER"
	line "services to any"

	para "trainer who is"
	line "unable to show"

	para "proof of KANTO"
	line "CITIZENSHIP."

	para "..."
	line "..."

	para "Yes as a JOHTO"
	line "resident you're"

	para "still allowed"
	line "to compete in"

	para "the league as"
	line "you have all 8"
	cont "JOHTO BADGES."
	done

PlateauRivalText2:
	text "…Darn… I still"
	line "can't win…"

	para "I… I have to think"
	line "more about my"
	cont "#MON…"

	para "Humph! Try not to"
	line "lose!"
	done

PlateauRivalText1:
	text "Hold it."

	para "You're going to"
	line "take the #MON"

	para "LEAGUE challenge"
	line "now?"

	para "That's not going"
	line "to happen."

	para "My super-well-"
	line "trained #MON"

	para "are going to pound"
	line "you."

	para "<PLAYER>!"
	line "I challenge you!"
	done

PlateauRivalLoseText:
	text "…"

	para "Whew…"
	line "With my partners,"

	para "I'm going to be"
	line "the CHAMPION!"
	done

IndigoPlateauPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, ROUTE_23, 1
	warp_event  6, 13, ROUTE_23, 2
	warp_event  0, 13, POKECENTER_2F, 1
	warp_event 14,  3, WILLS_ROOM, 1

	def_coord_events
	coord_event 16,  4, SCENE_INDIGOPLATEAUPOKECENTER1F_RIVAL_BATTLE, PlateauRivalBattle1
	coord_event 17,  4, SCENE_INDIGOPLATEAUPOKECENTER1F_RIVAL_BATTLE, PlateauRivalBattle2

	def_bg_events

	def_object_events
	object_event  3,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FNurseScript, -1
	object_event 11,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FClerkScript, -1
	object_event 11, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FCooltrainerMScript, -1
	object_event 16,  9, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INDIGO_PLATEAU_POKECENTER_RIVAL
