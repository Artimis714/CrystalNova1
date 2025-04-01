	object_const_def
	const KARENSROOM_KAREN

KarensRoom_MapScripts:
	def_scene_scripts
	scene_script KarensRoomLockDoorScene, SCENE_KARENSROOM_LOCK_DOOR
	scene_script KarensRoomNoopScene,     SCENE_KARENSROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, KarensRoomDoorsCallback

KarensRoomLockDoorScene:
	sdefer KarensRoomDoorLocksBehindYouScript
	end

KarensRoomNoopScene:
	end

KarensRoomDoorsCallback:
	checkevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_KARENS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

KarensRoomDoorLocksBehindYouScript:
	applymovement PLAYER, KarensRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_KARENSROOM_NOOP
	setevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

KarenScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue .Karen2
	sjump .Karen1

.Karen1:
	checkevent EVENT_BEAT_ELITE_4_KAREN
	iftrue KarenScript_AfterBattle
	writetext KarenScript_KarenBeforeText
	waitbutton
	closetext
	winlosstext KarenScript_KarenBeatenText, 0
	loadtrainer KAREN, KAREN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_KAREN
	opentext
	writetext KarenScript_KarenDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_KARENS_ROOM_EXIT_OPEN
	waitsfx
	end

.Karen2:
	checkevent EVENT_BEAT_ELITE_4_KAREN
	iftrue KarenScript_AfterBattle
	writetext KarenScript_KarenBeforeText2
	waitbutton
	closetext
	winlosstext KarenScript_KarenBeatenText2, 0
	loadtrainer KAREN, KAREN2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_KAREN
	opentext
	writetext KarenScript_KarenDefeatText2
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_KARENS_ROOM_EXIT_OPEN
	waitsfx
	end

KarenScript_AfterBattle:
	writetext KarenScript_KarenDefeatText
	waitbutton
	closetext
	end

KarensRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

KarenScript_KarenBeforeText:
	text "I am KAREN of the"
	line "ELITE FOUR."

	para "You're <PLAYER>?"
	line "How amusing."

	para "I love dark-type"
	line "#MON."

	para "I find their wild,"
	line "tough image to be"

	para "so appealing. And"
	line "they're so strong."

	para "Think you can take"
	line "them? Just try to"
	cont "entertain me."

	para "Let's go."
	done

KarenScript_KarenBeforeText2:
	text "Welcome back"
	line "<PLAYER>."

	para "Ya know, I'm the"
	line "only member of the"

	para "ELITE FOUR who"
	line "never fought in"
	cont "in the war."

	para "My predecessor"
	line "was this vile old"

	para "crone named AGATHA"
	line "who took great"

	para "pleasure in"
	line "torturing enemies."

	para "My DARK #MON"
	line "eviscerated her"
	cont "team."

	para "I'm much stronger"
	line "now, than I was."

	para "Let's see if you"
	line "still have what"

	para "It takes to"
	line "entertain me."
	done

KarenScript_KarenBeatenText:
	text "Well, aren't you"
	line "good. I like that"
	cont "in a trainer."
	done

KarenScript_KarenBeatenText2:
	text "It seems you do."
	done

KarenScript_KarenDefeatText:
	text "I am not from"
	line "KANTO so I don't"

	para "share my the"
	line "prejudice against"
	cont "your people."

	para "I was born on"
	line "VII Isle."

	para "..."
	line "..."

	para "What you're doing"
	line "here, might be"

	para "enough to mend"
	line "the rift between"
	cont "the two lands."

	para "I wish you luck."

	para "Go on--the CHAM-"
	line "PION is waiting."
	done

KarenScript_KarenDefeatText2:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Hmm... no I've"
	line "never met your"

	para "father, but I"
	line "know of him."

	para "Rumor has it, he"
	line "moved to the"

	para "Sacred SILVER"
	line "MOUNTAINS after"

	para "his strongest #-"
	line "MON escaped."

	para "I'm not from here"
	line "so I don't know"

	para "everything, but"
	line "from what I've"

	para "heard, your dad"
	line "did some terrible"

	para "things during the"
	line "war."

	para "..."
	line "..."

	para "I see. Well,"
	line "first LANCE will"

	para "see you. After"
	line "that, I wish"
	cont "you luck."
	done

KarensRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, BRUNOS_ROOM, 3
	warp_event  5, 17, BRUNOS_ROOM, 4
	warp_event  4,  2, LANCES_ROOM, 1
	warp_event  5,  2, LANCES_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KarenScript_Battle, -1
