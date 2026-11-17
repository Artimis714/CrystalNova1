	object_const_def
	const SEAFOAMGYM_BLAINE
	const SEAFOAMGYM_GYM_GUIDE
	const FIREBREATHER_HUGO
	const FIREBREATHER_ZANE
	const VET_M_XAVIER
	const VET_M_RONAN
	const VET_F_SUE
	const VET_F_IMOGEN

BreakwaterGym_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, GymMapTilesCallback

GymMapTilesCallback:
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FloorTiles

	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .LavaTiles
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .LavaTiles
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iffalse .LavaTiles
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iffalse .LavaTiles
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iffalse .LavaTiles
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iffalse .LavaTiles

.FloorTiles:
	changeblock 2, 9, $2D
	changeblock 2, 10, $42
	endcallback

.LavaTiles:
	changeblock 2, 9, $20
	changeblock 2, 10, $47
	endcallback

SeafoamGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	writetext BlaineIntroText
	waitbutton
	closetext
	winlosstext BlaineWinLossText, 0
	loadtrainer BLAINE, BLAINE1
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	opentext
	writetext ReceivedVolcanoBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	loadmem wLevelCap, 90
	setflag ENGINE_VOLCANOBADGE
	writetext BlaineAfterBattleText
	waitbutton
	closetext
	end

.FightDone:
	writetext BlaineFightDoneText
	waitbutton
	closetext
	end

SeafoamGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	iftrue .TalkedToSeafoamGymGuideScript
	writetext BreakwaterGymGuideWinText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	end

.TalkedToSeafoamGymGuideScript:
	writetext BreakwaterGymGuideWinText2
	waitbutton
	closetext
	end


TrainerHugo:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .FightDone
	writetext HugoSeenText
	waitbutton 
	closetext
	winlosstext HugoBeatenText, 0
	loadtrainer FIREBREATHER, HUGO
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	jump MapBlocksCheckScript

.FightDone:
	writetext HugoAfterBattleText
	waitbutton
	closetext
	end


TrainerZane:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .FightDone
	writetext ZaneSeenText
	waitbutton 
	closetext
	winlosstext ZaneBeatenText, 0
	loadtrainer FIREBREATHER, ZANE
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	jump MapBlocksCheckScript

.FightDone:
	writetext ZaneAfterBattleText
	waitbutton
	closetext
	end

TrainerXavier:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .FightDone
	writetext XavierSeenText
	waitbutton 
	closetext
	winlosstext XavierBeatenText, 0
	loadtrainer VET_M, XAVIER
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	jump MapBlocksCheckScript

.FightDone:
	writetext XavierAfterBattleText
	waitbutton
	closetext
	end


TrainerRonan:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .FightDone
	writetext RonanSeenText
	waitbutton 
	closetext
	winlosstext RonanBeatenText, 0
	loadtrainer VET_M, RONAN
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	jump MapBlocksCheckScript

.FightDone:
	writetext RonanAfterBattleText
	waitbutton
	closetext
	end

TrainerSue:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .FightDone
	writetext SueSeenText
	waitbutton 
	closetext
	winlosstext SueBeatenText, 0
	loadtrainer VET_F, SUE
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	jump MapBlocksCheckScript

.FightDone:
	writetext SueAfterBattleText
	waitbutton
	closetext
	end

TrainerImogen:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iftrue .FightDone
	writetext ImogenSeenText
	waitbutton 
	closetext
	winlosstext ImogenBeatenText, 0
	loadtrainer VET_F, IMOGEN
	startbattle
	iftrue .ReturnAfterBattle
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	jump MapBlocksCheckScript

.FightDone:
	writetext ImogenAfterBattleText
	waitbutton
	closetext
	end

MapBlocksCheckScript:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .Done
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .Done
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iffalse .Done
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iffalse .Done
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iffalse .Done
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iffalse .Done
	pause 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	earthquake 30
	pause 30
	playsound SFX_STRENGTH
	changeblock 2, 9, $2D
	changeblock 2, 10, $42
	reloadmappart
	earthquake 50
.Done:
	end

BlaineIntroText:
	text "BLAINE: Hah!"
	line "A challenger from"
	cont "JOHTO, is it?"

	para "Welcome to the"
	line "CINNABAR GYM!"

	para "Well... what's"
	line "left of it,"
	cont "anyway."

	para "CINNABAR is gone."
	line "Our homes, our"
	cont "streets, my GYM..."

	para "All buried beneath"
	line "ash and stone."

	para "We've made a new"
	line "home here on"
	cont "BREAKWATER ISLE."

	para "But don't mistake"
	line "rebuilding for"
	cont "forgiving!"

	para "I still remember"
	line "what JOHTO did"
	cont "to us in the war."

	para "And I remember"
	line "what we lost in"
	cont "that volcano."

	para "If you want the"
	line "VOLCANOBADGE,"
	cont "then you'll have"
	cont "to earn it!"

	para "Let's see if you"
	line "can stand the"
	cont "heat!"
	done

BlaineWinLossText:
	text "BLAINE: Magnificent!"
	line "You've burned"
	cont "right through my"
	cont "defences!"

	para "You've earned"
	line "VOLCANOBADGE!"
	done

ReceivedVolcanoBadgeText:
	text "<PLAYER> received"
	line "VOLCANOBADGE."
	done

BlaineAfterBattleText:
	text "BLAINE: Hah!"
	line "I haven't been"
	cont "beaten like that"
	cont "in a long time!"

	para "Don't think this"
	line "means I've cooled"
	cont "off, though."

	para "I still wake up"
	line "thinking about"
	cont "CINNABAR."

	para "The people we"
	line "lost. The homes"
	cont "we'll never see"
	cont "again."

	para "And yes... I still"
	line "hold JOHTO"
	cont "responsible for"
	cont "a great deal."

	para "But the people"
	line "here need more"
	cont "than my anger."

	para "They need a home."
	line "A future."

	para "So I'll keep this"
	line "GYM running, and"
	cont "I'll keep training"
	cont "my #MON."

	para "One day, we'll"
	line "stand in CINNABAR"
	cont "again."

	para "Until then, this"
	line "is our home."
	done

BlaineFightDoneText:
	text "BLAINE: Don't get"
	line "too comfortable!"

	para "My fire #MON"
	line "will be even"
	cont "stronger next"
	cont "time!"
	done

BreakwaterGymGuideWinText:
	text "Yo! You did it!"

	para "All six TRAINERS"
	line "defeated, and you"
	cont "never left the"
	cont "GYM!"

	para "That's the kind"
	line "of determination"
	cont "BLAINE respects."

	para "Go on! He's ready"
	line "to see you now!"
	done

BreakwaterGymGuideWinText2:
	text "Remember, if you"
	line "leave the GYM"
	cont "before beating"
	cont "all six TRAINERS,"

	para "you'll have to"
	line "start the whole"
	cont "challenge again."

	para "Good luck!"
	done

HugoSeenText:
	text "JOHTO! Hah!"
	line "Let's see if you"
	cont "can take the heat!"
	done

HugoBeatenText:
	text "What?! My flames"
	line "weren't enough?!"
	done

HugoAfterBattleText:
	text "Fire is honest."
	line "It burns whatever"
	cont "gets too close."

	para "I used to think"
	line "the same about"
	cont "the people of"
	cont "JOHTO."

	para "Now I just want"
	line "to see someone"
	cont "from there get"
	cont "burned for once."
	done

ZaneSeenText:
	text "Expecting a bunch"
	line "of predictable"
	cont "FIRE types?"

	para "I've got a few"
	line "surprises for"
	cont "you, JOHTO!"
	done

ZaneBeatenText:
	text "Damn! You saw"
	line "through my tricks!"
	done

ZaneAfterBattleText:
	text "A good FIRE"
	line "TRAINER knows"
	cont "that fire isn't"
	cont "just about heat."

	para "It's about"
	line "adaptation."

	para "Something we had"
	line "to learn when"
	cont "JOHTO left us"
	cont "with nothing."
	done

XavierSeenText:
	text "I've fought in"
	line "worse places than"
	cont "this GYM."

	para "You want to test"
	line "yourself against"
	cont "a soldier? Fine."
	done

XavierBeatenText:
	text "Hmph. You've"
	line "earned that one."
	done

XavierAfterBattleText:
	text "Steel doesn't"
	line "break easily."

	para "Neither did the"
	line "men I served"
	cont "alongside."

	para "I buried friends"
	line "because of that"
	cont "war. And now a"
	cont "JOHTO TRAINER"
	cont "walks in here"
	cont "expecting a fair"
	cont "fight."

	para "Life isn't fair."
	done

RonanSeenText:
	text "You JOHTO types"
	line "always bring"
	cont "trouble with you."

	para "Let's see how"
	line "you handle a"
	cont "little poison."
	done

RonanBeatenText:
	text "You got the"
	line "better of me."
	done

RonanAfterBattleText:
	text "Poison is nasty."
	line "It lingers long"
	cont "after the damage"
	cont "is done."

	para "A lot like the"
	line "war, really."

	para "You can tell"
	line "yourself it's"
	cont "over, but some"
	cont "things never"
	cont "leave your system."
	done

SueSeenText:
	text "Don't mistake me"
	line "for some GYM"
	cont "showpiece."

	para "I've survived"
	line "worse than you."
	done

SueBeatenText:
	text "Well... That's"
	line "embarrassing."
	done

SueAfterBattleText:
	text "I used to serve"
	line "alongside men"
	cont "who thought they"
	cont "were invincible."

	para "Most of them"
	line "aren't around"
	cont "anymore."

	para "BLAINE gave us"
	line "somewhere to put"
	cont "all that anger."

	para "Don't mistake"
	line "that for us"
	cont "having forgiven"
	cont "anyone from"
	cont "JOHTO."
	done

ImogenSeenText:
	text "You look healthy."

	para "Must be nice,"
	line "having a home"
	cont "to go back to."

	para "Let's see if"
	line "your POKEMON"
	cont "can haunt you."
	done

ImogenBeatenText:
	text "Oh. That's..."
	line "Disappointing."
	done

ImogenAfterBattleText:
	text "Sometimes I think"
	line "the dead have it"
	cont "easier than us."

	para "They don't have"
	line "to rebuild their"
	cont "homes. They don't"
	line "have to remember"
	cont "what was lost."

	para "I suppose that's"
	line "why I like GHOST"
	cont "POKEMON."

	para "They remind me"
	line "that not everyone"
	cont "gets to move on."
	done

BreakwaterGymGuideText:
	text "Yo! CHAMP in"
	line "the making!"

	para "Welcome to the"
	line "CINNABAR GYM!"

	para "BLAINE's taken up"
	line "residence here on"
	cont "BREAKWATER ISLE."

	para "He's got six"
	line "TRAINERS standing"
	cont "between you and"
	cont "the big man."

	para "And here's the"
	line "catch!"

	para "You have to beat"
	line "all six TRAINERS"
	cont "without leaving"
	cont "the GYM."

	para "Step outside, and"
	line "you'll have to"
	cont "start all over!"

	para "So make sure your"
	line "#MON are ready"
	cont "before you begin."

	para "BLAINE's waiting"
	line "at the end. Don't"
	cont "keep him waiting!"
	done

BreakwaterGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 17, BREAKWATER_ISLE, 6
	warp_event  7, 17, BREAKWATER_ISLE, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  8, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeafoamGymBlaineScript, EVENT_LEADERS_IN_SILVER
	object_event  8, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuideScript, -1
	object_event  1,  1, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 3, TrainerHugo, -1
	object_event 13,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 3, TrainerZane, -1
	object_event 13, 16, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 3, TrainerXavier, -1
	object_event  0,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 3, TrainerRonan, -1
	object_event  1, 16, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 3, TrainerSue, -1
	object_event 13,  2, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 3, TrainerImogen, -1
