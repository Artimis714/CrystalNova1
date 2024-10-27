	object_const_def
	const OLIVINEGYM_JASMINE
	const OLIVINEGYM_GYM_GUIDE
	const OLIVINEGYM_LASS
	const OLIVINEGYM_BEAUTY
	const OLIVINEGYM_PICKNER

OlivineGym_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineGymJasmineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_JASMINE
	iftrue .FightDone
	checkcode VAR_BADGES
	if_equal 5, .badge_6
	checkcode VAR_BADGES
	if_equal 6, .badge_7

.badge_6
	writetext Jasmine_SteelTypeIntro
	waitbutton
	closetext
	winlosstext Jasmine_BetterTrainer, 0
	loadtrainer JASMINE, JASMINE2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JASMINE
	opentext
	writetext Text_ReceivedMineralBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE
	readvar VAR_BADGES
	scall OlivineGymActivateRockets
	writetext Jasmine_BadgeSpeech
	promptbutton
	verbosegiveitem TM_FLASH_CANNON
	iffalse .NoRoomForIronTail
	loadmem wLevelCap, 45
	setevent EVENT_GOT_TM23_IRON_TAIL
	setevent EVENT_BEAT_LASS_AMBER
	setevent EVENT_BEAT_BEAUTY_ELECTRA
	setevent EVENT_BEAT_PICNIKER_JADE
	clearevent EVENT_GOLDENROD_CITY_MOVE_TUTOR
	writetext Jasmine_IronTailSpeech
	waitbutton
	closetext
	end


.badge_7
	writetext Jasmine_SteelTypeIntro
	waitbutton
	closetext
	winlosstext Jasmine_BetterTrainer, 0
	loadtrainer JASMINE, JASMINE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JASMINE
	opentext
	writetext Text_ReceivedMineralBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE
	readvar VAR_BADGES
	scall OlivineGymActivateRockets
	writetext Jasmine_BadgeSpeech
	promptbutton
	verbosegiveitem TM_FLASH_CANNON
	iffalse .NoRoomForIronTail
	loadmem wLevelCap, 50
	setevent EVENT_GOT_TM23_IRON_TAIL
	setevent EVENT_BEAT_LASS_AMBER
	setevent EVENT_BEAT_BEAUTY_ELECTRA
	setevent EVENT_BEAT_PICNIKER_JADE
	clearevent EVENT_GOLDENROD_CITY_MOVE_TUTOR
	writetext Jasmine_IronTailSpeech
	waitbutton
	closetext
	end

.FightDone:
	checkevent EVENT_GOT_TM23_IRON_TAIL
	iftrue .GotIronTail
	closetext
	end

.GotIronTail:
	writetext Jasmine_GoodLuck
	waitbutton
.NoRoomForIronTail:
	closetext
	end

OlivineGymLassScript:
	trainer LASS, AMBER, EVENT_BEAT_LASS_AMBER, LassAmberSeenText, LassAmberBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassAmberAfterBattleText
	waitbutton
	closetext
	end

OlivineGymBeautyScript:
	trainer BEAUTY, ELECTRA, EVENT_BEAT_BEAUTY_ELECTRA, BeautyElectraSeenText, BeautyElectraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyElectraAfterBattleText
	waitbutton
	closetext
	end

OlivineGymPicknickerScript:
	trainer PICNICKER, JADE, EVENT_BEAT_PICNIKER_JADE, PicnickerJadeSeenText, PicnickerJadeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerJadeAfterBattleText
	waitbutton
	closetext
	end

OlivineGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

OlivineGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_JASMINE
	iftrue .OlivineGymGuideWinScript
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iffalse .OlivineGymGuidePreScript
	opentext
	writetext OlivineGymGuideText
	waitbutton
	closetext
	end

.OlivineGymGuideWinScript:
	opentext
	writetext OlivineGymGuideWinText
	clearevent EVENT_GOLDENROD_CITY_MOVE_TUTOR 
	waitbutton
	closetext
	end

.OlivineGymGuidePreScript:
	opentext
	writetext OlivineGymGuidePreText
	waitbutton
	closetext
	end

OlivineGymStatue:
	checkflag ENGINE_MINERALBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, JASMINE, JASMINE1
	jumpstd GymStatue2Script

LassAmberSeenText:
	text "You won't get"
	line "past me!"
	done

LassAmberBeatenText:
	text "I was over eager."
	done

LassAmberAfterBattleText:
	text "JASMINE is such"
	line "an amazing GYM"
	cont "leader."

	para "My parents died in"
	line "the war, but she"
	cont "took me in!"

	para "I owe her every-"
	line "thing."
	done

BeautyElectraSeenText:
	text "If you're going to"
	line "challenge a STEEL"

	para "GYM, your outfit"
	line "had better shine!"
	done

BeautyElectraBeatenText:
	text "I still have"
	line "better fashion"
	cont "sense."
	done

BeautyElectraAfterBattleText:
	text "I used to train"
	line "under WHITNEY"

	para "But her #MON"
	line "couldn't do any-"
	cont "thing against"
	cont "my STEEL #MON!"

	para "I do miss the"
	line "fashion of GOLDEN-"
	cont "ROD, though."
	done

PicnickerJadeSeenText:
	text "STEEL types make"
	line "the ultimate"
	cont "defense!"
	done

PicnickerJadeBeatenText:
	text "...Or not."
	done

PicnickerJadeAfterBattleText:
	text "I heard a story"
	line "that once upon a"

	para "time there were"
	line "only ROCK and"
	cont "GROUND #MON."

	para "But then a skilled"
	line "trainer named"

	para "TOPH BEIFONG"
	line "evolved her ONYX."

	para "And she discovered"
	line "the STEEL type!"

	para "..."
	line "..."

	para "What do you mean"
	line "that's the plot of"
	cont "a TV show?"
	done

Jasmine_SteelTypeIntro:
	text "…Thank you for"
	line "your help at the"
	cont "LIGHTHOUSE…"

	para "But this is dif-"
	line "ferent. Please"

	para "allow me to intro-"
	line "duce myself prop-"
	cont "erly."

	para "I am JASMINE, a"
	line "GYM LEADER. I use"
	cont "the steel-type."

	para "…Do you know about"
	line "the steel-type?"

	para "As a young girl I"
	line "trained Rock #-"
	cont "MON."

	para "My family was sent"
	line "to a KANTO prison"

	para "and it was there"
	line "that my #MON"

	para "hardened, minerals"
	line "polishing until"

	para "our defenses had"
	line "polished into"

	para "Steel, rivaling"
	line "our resolve."

	para "We fought for our"
	line "freedom, and even"

	para "earned respect of"
	line "KANTO's generals."

	para "In the war, I"
	line "fought to protect"

	para "all civilians in"
	line "from both JOHTO"
	cont "and KANTO."

	para "Even in battle"
	line "there can be"

	para "Kindness. I know"
	line "you understand"
	cont "this."

	para "Now we begin."
	done

Jasmine_BetterTrainer:
	text "…You are a better"
	line "trainer than me,"

	para "in both skill and"
	line "kindness."

	para "In accordance with"
	line "league rules of"

	para "the INDIGO PLATEAU"
	line "I am glad to offer"
	cont "you this BADGE."
	done

Text_ReceivedMineralBadge:
	text "<PLAYER> received"
	line "MINERALBADGE."
	done

Jasmine_BadgeSpeech:
	text "MINERALBADGE"
	line "raises #MON's"
	cont "DEFENSE."

	para "…Um… Please take"
	line "this too…"
	done

Jasmine_IronTailSpeech:
	text "…You could use"
	line "that TM to teach"
	cont "FLASH CANNON."

	para "As you may have"
	line "seen, moves that"

	para "inflict damage"
	line "while decreasing"

	para "accuracy, get a"
	line "boost in a"
	cont "SANDSTORM."
	done

Jasmine_GoodLuck:
	text "Um… I don't know"
	line "how to say this,"
	cont "but good luck…"

	para "Our path, the"
	line "kind path…"

	para "It will not al-"
	line "ways be easy."

	para "But I believe"
	line "you are up to"
	cont "the challenge."
	done

OlivineGymGuideText:
	text "JASMINE uses the"
	line "newly discovered"
	cont "steel-type."

	para "I don't know very"
	line "much about it."
	done

OlivineGymGuideWinText:
	text "That was awesome."

	para "The steel-type,"
	line "huh?"

	para "That was a close"
	line "encounter of an"
	cont "unknown kind!"
	done

OlivineGymGuidePreText:
	text "JASMINE, the GYM"
	line "LEADER, is at the"
	cont "LIGHTHOUSE."

	para "She's been tending"
	line "to a sick #MON."

	para "A strong trainer"
	line "has to be compas-"
	cont "sionate."

	para "It's good to see"
	line "her ways haven't"

	para "changed from the"
	line "war."
	done

OlivineGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, OLIVINE_CITY, 2
	warp_event  5, 15, OLIVINE_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, OlivineGymStatue
	bg_event  6, 13, BGEVENT_READ, OlivineGymStatue

	def_object_events
	object_event  5,  3, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymJasmineScript, EVENT_OLIVINE_GYM_JASMINE
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymGuideScript, -1
	object_event  6, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, OlivineGymLassScript, EVENT_OLIVINE_GYM_JASMINE
	object_event  3,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, OlivineGymBeautyScript, EVENT_OLIVINE_GYM_JASMINE
	object_event  6,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, OlivineGymPicknickerScript, EVENT_OLIVINE_GYM_JASMINE
