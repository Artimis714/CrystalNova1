	object_const_def
	const NATIONALPARK_LASS1
	const NATIONALPARK_POKEFAN_F1
	const NATIONALPARK_TEACHER1
	const NATIONALPARK_YOUNGSTER1
	const NATIONALPARK_YOUNGSTER2
	const NATIONALPARK_TEACHER2
	const NATIONALPARK_PERSIAN
	const NATIONALPARK_YOUNGSTER3
	const NATIONALPARK_POKEFAN_F2
	const NATIONALPARK_POKEFAN_M
	const NATIONALPARK_LASS2
	const NATIONALPARK_POKE_BALL1
	const NATIONALPARK_LASS3
	const NATIONALPARK_SHADYSHOP1

NationalPark_MapScripts:
	def_scene_scripts

	def_callbacks

ShadyMartScript:
	faceplayer
	opentext
	checkevent EVENT_GAVE_HOOT_HOOT
	iftrue .OpenForBusiness
	checkevent EVENT_GOT_HOOT_HOOT
	iftrue .TryGiveHootHoot
	writetext BeatItKidText
	waitbutton
	closetext
	end

.TryGiveHootHoot:
	writetext YouGotSomethinForMe
	promptbutton
	checkpokemail RecdHootHootMailText
	ifequal POKEMAIL_WRONG_MAIL, .WrongMail
	ifequal POKEMAIL_REFUSED, .Refused
	ifequal POKEMAIL_NO_MAIL, .NoMail
	ifequal POKEMAIL_LAST_MON, .LastMon
	; POKEMAIL_CORRECT
	writetext HandOverHootHoot
	promptbutton
	writetext ReadingHootHootMail
	promptbutton
	setevent EVENT_GAVE_HOOT_HOOT
	sjump .OpenForBusiness

.WrongMail:
	writetext NotMyMailText
	waitbutton
	closetext
	end

.Refused:
	writetext YouStealinFromMeText
	waitbutton
	closetext
	end

.NoMail:
	writetext WhatKindaMoronDoYa
	waitbutton
	closetext
	end

.LastMon:
	writetext AllDefenselessLike
	waitbutton
	closetext
	end

.OpenForBusiness:
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .Mart2
	pokemart MARTTYPE_SHADY, MART_SHADY_NATL_PARK
	closetext
	end

.Mart2
	pokemart MARTTYPE_SHADY, MART_SHADY_NATL_PARK_2
	closetext
	end

RecdHootHootMailText:
	db   "PROJECT GENESIS"
	next "was all SILPH!@"

NationalParkLassScript:
	jumptextfaceplayer NationalParkLassText

NationalParkPokefanFScript:
	jumptextfaceplayer NationalParkPokefanFText

NationalParkTeacher1Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_QUICK_CLAW
	iftrue .GotQuickClaw
	writetext NationalParkTeacher1Text
	promptbutton
	verbosegiveitem QUICK_CLAW
	iffalse .NoRoom
	setevent EVENT_GOT_QUICK_CLAW
.GotQuickClaw:
	writetext NationalParkTeacher1Text_GotQuickClaw
	waitbutton
.NoRoom:
	closetext
	end

NationalParkYoungster1Script:
	jumptextfaceplayer NationalParkYoungster1Text

NationalParkYoungster2Script:
	jumptextfaceplayer NationalParkYoungster2Text

NationalParkTeacher2Script:
	jumptextfaceplayer NationalParkTeacher2Text

TrainerSchoolboyJack1:
	trainer SCHOOLBOY, JACK1, EVENT_BEAT_SCHOOLBOY_JACK, SchoolboyJack1SeenText, SchoolboyJack1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_SCHOOLBOY_JACK
	endifjustbattled
	opentext
	checkflag ENGINE_JACK_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_SCHOOLBOY_JACK
	iftrue .NumberAccepted
	checkevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext SchoolboyJackTradeMonText
	promptbutton
	setevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .RequestNumber

.AskAgain:
	scall .AskNumber2
.RequestNumber:
	askforphonenumber PHONE_SCHOOLBOY_JACK
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, JACK1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext SchoolboyJack1BeatenText, 0
	readmem wJackFightCount
	ifequal 4, .Fight4
	ifequal 3, .Fight3
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight4:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
.Fight3:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
.Fight2:
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
.Fight1:
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer SCHOOLBOY, JACK1
	startbattle
	reloadmapafterbattle
	loadmem wJackFightCount, 1
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, JACK2
	startbattle
	reloadmapafterbattle
	loadmem wJackFightCount, 2
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, JACK3
	startbattle
	reloadmapafterbattle
	loadmem wJackFightCount, 3
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer SCHOOLBOY, JACK4
	startbattle
	reloadmapafterbattle
	loadmem wJackFightCount, 4
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer SCHOOLBOY, JACK5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.RematchStd:
	jumpstd RematchMScript
	end

TrainerPokefanmWilliam:
	trainer POKEFANM, WILLIAM, EVENT_BEAT_POKEFANM_WILLIAM, PokefanmWilliamSeenText, PokefanmWilliamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmWilliamAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanfBeverly1:
	trainer POKEFANF, BEVERLY1, EVENT_BEAT_POKEFANF_BEVERLY, PokefanfBeverly1SeenText, PokefanfBeverly1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_POKEFAN_BEVERLY
	endifjustbattled
	opentext
	checkflag ENGINE_BEVERLY_HAS_NUGGET
	iftrue .GiveNugget
	checkcellnum PHONE_POKEFAN_BEVERLY
	iftrue .NumberAccepted
	checkpoke MARILL
	iffalse .NoMarill
	checkevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext PokefanBeverlyCuteMonText
	promptbutton
	setevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .RequestNumber

.AskAgain:
	scall .AskNumber2
.RequestNumber:
	askforphonenumber PHONE_POKEFAN_BEVERLY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, POKEFANF, BEVERLY1
	scall .RegisteredNumber
	sjump .NumberAccepted

.GiveNugget:
	scall .Gift
	verbosegiveitem NUGGET
	iffalse .NoRoom
	clearflag ENGINE_BEVERLY_HAS_NUGGET
	sjump .NumberAccepted

.NoRoom:
	sjump .PackFull

.NoMarill:
	writetext PokefanFBeverlyMarillFriendText
	waitbutton
	closetext
	end

.AskNumber1:
	jumpstd AskNumber1FScript
	end

.AskNumber2:
	jumpstd AskNumber2FScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.Gift:
	jumpstd GiftFScript
	end

.PackFull:
	jumpstd PackFullFScript
	end

TrainerLassKrise:
	trainer LASS, KRISE, EVENT_BEAT_LASS_KRISE, LassKriseSeenText, LassKriseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassKriseAfterBattleText
	waitbutton
	closetext
	end

NationalParkRelaxationSquareSign:
	jumptext NationalParkRelaxationSquareText

NationalParkBattleNoticeSign:
	jumptext NationalParkBattleNoticeText

NationalParkTrainerTipsSign:
	jumptext NationalParkTrainerTipsText

NationalParkParlyzHeal:
	itemball LEVEL_BALL, 5

NationalParkTMDig:
	faceplayer
	opentext
	checkevent EVENT_NATIONAL_PARK_TM_DIG
	iftrue .PleaseLeaveMeAlone
	writetext OhNoYouFoundMeText
	promptbutton
	verbosegiveitem TM_DIG
	setevent EVENT_NATIONAL_PARK_TM_DIG
	setflag ENGINE_GOT_DIG
	clearevent EVENT_SHADY_NATIONAL_PARK_SHOP
	writetext pleaseleavemealoneText
	waitbutton
	closetext
	end

.PleaseLeaveMeAlone:
	writetext pleaseleavemealoneText
	waitbutton
	closetext
	end

NationalParkHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_NATIONAL_PARK_HIDDEN_FULL_HEAL

NationalParkPersian:
	faceplayer
	opentext
	writetext NationalParkPersianText
	cry PERSIAN
	setval PERSIAN
	special ShowPokedexEntry
	waitbutton
	closetext
	end

NationalParkPersianText:
	text "PERSIAN: Fufushaa!"
	done

BeatItKidText:
	text "I don't trade with"
	line "brats."
	cont "Beat it kid."
	done

YouGotSomethinForMe:
	text "..."
	line "..."

	para "You know ROXXY?"
	line "and she gave you a"
	cont "#MON."

	para "Okay, then hand it"
	line "over."
	done

HandOverHootHoot:
	text "<PLAYER> handed"
	line "over the #MON"
	cont "holding the MAIL."
	done

ReadingHootHootMail:
	text "Hmm..."

	para "...PROJECT GENESIS"
	line "was all SILPH!..."

	para "I fucking knew it."
	line "those bastards are"

	para "responsible for"
	line "that... Why am I"
	cont "telling you this?"

	para "Whatever, you've"
	line "proven yourself"
	cont "legit."

	para "I sell some... uh"
	line "discounted goods."

	para "I'll trade with"
	line "you."
	done

NotMyMailText:
	text "That's not my MAIL"
	line "Stop wasting my"
	cont "time."
	done

YouStealinFromMeText:
	text "Are you stealing"
	line "from me?"

	para "No honor among"
	line "thieves."
	done

WhatKindaMoronDoYa:
	text "This #MON"
	line "doesn't have MAIL."

	para "What kind of moron"
	line "do ya take me for?"
	done

AllDefenselessLike:
	text "That's your last"
	line "#MON."

	para "I can't take this"
	line "from you. I'd be"

	para "leaving you all"
	line "defenseless-like."

	para "..."
	line "..."

	para "Just because I'm a"
	line "criminal, I'm not"
	cont "a monster!"
	done

NationalParkLassText:
	text "My mom says this"
	line "used to be a"
	cont "sacred forest."

	para "She's sad about the"
	line "trees, but I like"

	para "the NATIONAL PARK."
	line "It's a nice place"
	cont "to think."
	done

NationalParkPokefanFText:
	text "This is MAIL I got"
	line "from my daughter."
	cont "It cheers me up."

	para "We sent her off"
	line "to NORWOOD for"

	para "College during"
	line "the war. She"

	para "Hasn't been back"
	line "in years, but it"

	para "warms my heart to"
	line "hear from her."
	done

OhNoYouFoundMeText:
	text "(Sobbing)"

	para "Why won't people"
	line "just leave me"
	cont "alone!?"

	para "A creepy man in"
	line "black keeps"
	cont "coming here!"

	para "This is my hiding"
	line "spot!"

	para "All I wanted was"
	line "to be by myself!"

	para "..."
	line "..."

	para "All the kids at"
	line "school are giving"

	para "me a hard time,"
	line "because my mom"

	para "had to work as"
	line "a prostitute to"

	para "keep food on the"
	line "table when KANTO"

	para "occupied GOLDEN-"
	line "ROD."

	para "I don't know my"
	line "dad, but he was"

	para "probably a KANTO"
	line "soldier."

	para "..."
	line "..."

	para "We're good people"
	line "and my mom didn't"
	cont "have a choice!"

	para "I hate that they"
	line "treat us like"
	cont "dirt!"

	para "I wish I could"
	line "just DIG my way"
	cont "home!"

	para "..."
	line "..."

	para "So you also know"
	line "what it's like"

	para "have a missing"
	line "father."

	para "Sometimes I just"
	line "wish I could DIG"
	cont "my way out."

	para "..."
	line "..."

	para "You feel like"
	line "that too some-"
	cont "times?"

	para "..."
	line "..."

	para "Okay, I'll give"
	line "you this, so you"

	para "can also dig your"
	line "way home."
	done

pleaseleavemealoneText:
	text "Just take that"
	line "TM and please"
	cont "leave me alone!"

	para "I wish I could"
	line "DIG my way out"
	cont "of here!"
	done

NationalParkTeacher1Text:
	text "Pay attention,"
	line "please!"

	para "…Oops, I have to"
	line "quit thinking like"

	para "a teacher all the"
	line "time."

	para "You must be a"
	line "#MON trainer."

	para "Since you're work-"
	line "ing so hard, I"

	para "want you to have"
	line "this."
	done

NationalParkTeacher1Text_GotQuickClaw:
	text "Let a #MON hold"
	line "that QUICK CLAW."

	para "Sometimes it will"
	line "strike first"
	cont "during battle."
	done

NationalParkYoungster1Text:
	text "The other kids are"
	line "mean to me because"

	para "my dad is a KANTO"
	line "soldier."
	done

NationalParkYoungster2Text:
	text "My dad said that"
	line "his Mom slept with"

	para "half the KANTO"
	line "army, when they"
	cont "invaded GOLDENROD!"
	done

NationalParkTeacher2Text:
	text "I take walks in"
	line "the PARK, but I"

	para "never go into the"
	line "grass."

	para "Trainers always"
	line "want to battle…"
	done

SchoolboyJack1SeenText:
	text "The world of"
	line "#MON is deep."

	para "There are still"
	line "lots of things we"
	cont "don't know."

	para "But I know more"
	line "than you do!"
	done

SchoolboyJack1BeatenText:
	text "Wha-wha-what?"
	done

SchoolboyJackTradeMonText:
	text "There is a lot"
	line "to learn."

	para "For example…"

	para "There are 56"
	line "kinds of TMs."

	para "Or that there"
	line "are three types"
	cont "of BERRY JUICE."
	done

PokefanfBeverly1SeenText:
	text "My #MON are"
	line "simply darling."

	para "Let me tell you"
	line "how proud my"
	cont "darlings make me."
	done

PokefanfBeverly1BeatenText:
	text "I can beat you in"
	line "pride, but…"
	done

PokefanBeverlyCuteMonText:
	text "I must say, your"
	line "#MON are quite"
	cont "cute, too."
	done

PokefanmWilliamSeenText:
	text "We adore our #-"
	line "MON, even if they"
	cont "dislike us."

	para "That's what being"
	line "a FAN is about."

	para "..."
	line "..."

	para "If my #MON"
	line "don't like me it"

	para "doesn't mean I'm a"
	line "shitty trainer!"

	para "..."
	line "..."

	para "You little brat."
	done

PokefanmWilliamBeatenText:
	text "M-my #MON!"
	done

PokefanmWilliamAfterBattleText:
	text "No wonder my #-"
	line "MON don't like me."
	done

PokefanFBeverlyMarillFriendText:
	text "My friend keeps a"
	line "MARILL!"

	para "I find them very"
	line "endearing."

	para "Oh, I wish for a"
	line "MARILL of my own…"
	done
	

LassKriseSeenText:
	text "Hello? Why are you"
	line "staring at me?"

	para "Oh, a battle?"
	done

LassKriseBeatenText:
	text "…Hmmm…"
	done

LassKriseAfterBattleText:
	text "I thought you were"
	line "staring at me"
	cont "because I'm cute!"

	para "Sigh, I never get"
	line "to make out with"
	cont "anybody."
	done

NationalParkRelaxationSquareText:
	text "RELAXATION SQUARE"
	line "NATIONAL PARK"
	done

NationalParkBattleNoticeText:
	text "What is this"
	line "notice?"

	para "Please battle only"
	line "in the grass."

	para "NATIONAL PARK"
	line "KANTO POLICE"
	done

NationalParkTrainerTipsText:
	text "TRAINER TIPS"

	para "GRASS type #-"
	line "MON are immune"
	cont "to powder moves."
	done

NationalPark_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 18, ROUTE_36_NATIONAL_PARK_GATE, 1
	warp_event 33, 19, ROUTE_36_NATIONAL_PARK_GATE, 2
	warp_event 10, 47, ROUTE_35_NATIONAL_PARK_GATE, 1
	warp_event 11, 47, ROUTE_35_NATIONAL_PARK_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 14, 44, BGEVENT_READ, NationalParkRelaxationSquareSign
	bg_event 27, 31, BGEVENT_READ, NationalParkBattleNoticeSign
	bg_event  6, 47, BGEVENT_ITEM, NationalParkHiddenFullHeal
	bg_event 12,  4, BGEVENT_READ, NationalParkTrainerTipsSign

	def_object_events
	object_event 15, 24, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NationalParkLassScript, -1
	object_event 14,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkPokefanFScript, -1
	object_event 27, 40, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NationalParkTeacher1Script, -1
	object_event 11, 41, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkYoungster1Script, -1
	object_event 10, 41, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NationalParkYoungster2Script, -1
	object_event 17, 41, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkTeacher2Script, -1
	object_event 26, 40, SPRITE_PERSIAN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NationalParkPersian, -1
	object_event 27, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyJack1, -1
	object_event 18, 29, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPokefanfBeverly1, -1
	object_event 16,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPokefanmWilliam, -1
	object_event  8, 14, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassKrise, -1
	object_event 35, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NationalParkParlyzHeal, EVENT_NATIONAL_PARK_PARLYZ_HEAL
	object_event  1, 43, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NationalParkTMDig, EVENT_NATIONAL_PARK_TM_DIG
	object_event  1, 40, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShadyMartScript, EVENT_SHADY_NATIONAL_PARK_SHOP