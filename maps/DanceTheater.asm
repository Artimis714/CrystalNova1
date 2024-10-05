	object_const_def
	const DANCETHEATER_KIMONO_GIRL1
	const DANCETHEATER_KIMONO_GIRL2
	const DANCETHEATER_KIMONO_GIRL3
	const DANCETHEATER_KIMONO_GIRL4
	const DANCETHEATER_KIMONO_GIRL5
	const DANCETHEATER_GENTLEMAN
	const DANCETHEATER_RHYDON
	const DANCETHEATER_COOLTRAINER_M
	const DANCETHEATER_GRANNY
	const DANCETHEATER_ESPEON
	const DANCETHEATER_UMBREON
	const DANCETHEATER_VAPOREON
	const DANCETHEATER_JOLTEON
	const DANCETHEATER_FLAREON

DanceTheater_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, EspeonCallback
	callback MAPCALLBACK_OBJECTS, UmbreonCallback
	callback MAPCALLBACK_OBJECTS, VaporeonCallback
	callback MAPCALLBACK_OBJECTS, JolteonCallback
	callback MAPCALLBACK_OBJECTS, FlareonCallback


EspeonCallback:
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iftrue .dissapearesp

.dissapearesp
	disappear DANCETHEATER_ESPEON
	endcallback

UmbreonCallback:
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iftrue .dissapearumb

.dissapearumb
	disappear DANCETHEATER_UMBREON
	endcallback

VaporeonCallback:
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iftrue .dissapearvap

.dissapearvap
	disappear DANCETHEATER_VAPOREON
	endcallback

JolteonCallback:
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iftrue .dissapearjol

.dissapearjol
	disappear DANCETHEATER_JOLTEON
	endcallback

FlareonCallback:
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iftrue .dissapearfla

.dissapearfla
	disappear DANCETHEATER_FLAREON
	endcallback

TrainerKimonoGirlNaoko:
	trainer KIMONO_GIRL, NAOKO, EVENT_BEAT_KIMONO_GIRL_NAOKO, KimonoGirlNaokoSeenText, KimonoGirlNaokoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlNaokoAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlSayo:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iftrue .Defeated
	writetext KimonoGirlSayoSeenText
	waitbutton
	closetext
	winlosstext KimonoGirlSayoBeatenText, 0
	loadtrainer KIMONO_GIRL, SAYO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KIMONO_GIRL_SAYO
	waitbutton
	closetext
	end

.Defeated:
	checkevent EVENT_GHOST_KIKYO
	iftrue .YouMetMySister
	writetext KimonoGirlSayoAfterBattleText
	waitbutton
	closetext
	end

.YouMetMySister
	checkevent EVENT_GOT_BRIGHTPOWDER
	iftrue .MySisterHelpsMeShine
	writetext KikyoProudText
	promptbutton
	verbosegiveitem BRIGHTPOWDER
	iffalse .NotShinyToday
	setevent EVENT_GOT_BRIGHTPOWDER
	writetext SisterHelpsMeShineText
	waitbutton
	closetext
	end

.MySisterHelpsMeShine
	writetext SisterHelpsMeShineText
	waitbutton
	closetext
	end

.NotShinyToday
	writetext NotShinyTodayText
	waitbutton
	closetext
	end

TrainerKimonoGirlZuki:
	trainer KIMONO_GIRL, ZUKI, EVENT_BEAT_KIMONO_GIRL_ZUKI, KimonoGirlZukiSeenText, KimonoGirlZukiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlZukiAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlKuni:
	trainer KIMONO_GIRL, KUNI, EVENT_BEAT_KIMONO_GIRL_KUNI, KimonoGirlKuniSeenText, KimonoGirlKuniBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlKuniAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlMiki:
	trainer KIMONO_GIRL, MIKI, EVENT_BEAT_KIMONO_GIRL_MIKI, KimonoGirlMikiSeenText, KimonoGirlMikiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlMikiAfterBattleText
	waitbutton
	closetext
	end

DanceTheaterSurfGuy:
	faceplayer
	opentext
	writetext SurfGuyNeverLeftAScratchText
	promptbutton
	checkevent EVENT_GOT_HM03_SURF
	iftrue SurfGuyAlreadyGaveSurf
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iffalse .KimonoGirlsUndefeated
	sjump .GetSurf

.KimonoGirlsUndefeated:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	writetext SurfGuyLadGiftText
	waitbutton
	closetext
	end

.PlayerIsFemale:
	writetext SurfGuyLassieGiftText
	waitbutton
	closetext
	end

.GetSurf:
	writetext SurfGuyLikeADanceText
	promptbutton
	verbosegiveitem HM_SURF
	setevent EVENT_GOT_HM03_SURF
	writetext SurfGuySurfExplanationText
	waitbutton
	closetext
	end

SurfGuyAlreadyGaveSurf:
	writetext SurfGuyElegantKimonoGirlsText
	waitbutton
	closetext
	end

DanceTheaterRhydon:
	opentext
	writetext RhydonText
	cry RHYDON
	waitbutton
	closetext
	end

DanceTheaterEspeon:
	opentext
	writetext EspeonText
	cry ESPEON
	waitbutton
	closetext
	end

DanceTheaterUmbreon:
	opentext
	writetext UmbreonText
	cry UMBREON
	waitbutton
	closetext
	end

DanceTheaterVaporeon:
	opentext
	writetext VaporeonText
	cry VAPOREON
	waitbutton
	closetext
	end

DanceTheaterJolteon:
	opentext
	writetext JolteonText
	cry JOLTEON
	waitbutton
	closetext
	end

DanceTheaterFlareon:
	opentext
	writetext FlareonText
	cry FLAREON
	waitbutton
	closetext
	end

DanceTheaterCooltrainerMScript:
	jumptextfaceplayer DanceTheaterCooltrainerMText

DanceTheaterGrannyScript:
	jumptextfaceplayer DanceTheaterGrannyText

DanceTheaterFancyPanel:
	jumptext DanceTheaterFancyPanelText

KimonoGirlNaokoSeenText:
	text "You have lovely"
	line "#MON. May I see"
	cont "them in battle?"
	done

KimonoGirlNaokoBeatenText:
	text "Oh, you are very"
	line "strong."
	done

KimonoGirlNaokoAfterBattleText:
	text "I enjoyed that"
	line "bout. I would like"
	cont "to see you again."
	done

KimonoGirlSayoSeenText:
	text "I always dance"
	line "with my #MON."

	para "Of course, I also"
	line "train them. My"
	cont "sister would be"
	cont "proud."
	done

KimonoGirlSayoBeatenText:
	text "Forgive me KIKYO!"
	done

KimonoGirlSayoAfterBattleText:
	text "My sister was a"
	line "war hero. I'm"

	para "just trying to"
	line "honor her memory."
	done

KikyoProudText:
	text "Oh hello, good to"
	line "see you again."

	para "After our battle,"
	line "I've been thinking"

	para "about quitting the"
	line "KIMONO GIRLS."

	para "..."
	line "..."

	para "How would you know"
	line "what KIKYO would"
	cont "have wanted!?"

	para "..."
	line "..."

	para "You... "

	para "You met KIKYO!"

	para "..."
	line "..."

	para "She was such an"
	line "amazing sister."

	para "May the FOREST"
	line "PROTECTOR watch"
	cont "over her shade."

	para "Thank you for tel-"
	line "ling me this."

	para "When KIKYO danc-"
	line "ed, She used to"
	cont "shine like star-"
	cont "light."

	para "It means so much"
	line "to know she's"
	cont "proud of me."

	para "I would like to"
	line "give give you a"
	
	para "gift from my fam-"
	line "ily."
	done

SisterHelpsMeShineText:
	text "BRIGHTPOWDER has"
	line "been our family's"
	cont "secret for gen-"
	cont "erations!"

	para "KIKYO's love"
	line "helps me shine,"

	para "so I don't need"
	line "it anymore."

	para "Use it well, and"
	line "thank you again!"
	done

NotShinyTodayText:
	text "Oh it looks like"
	line "You don't have"
	cont "room for this."

	para "Come back if you"
	line "can. I'll be here"

	para "dancing with my"
	line "girls!"
	done

KimonoGirlZukiSeenText:
	text "Isn't my barrette"
	line "pretty?"

	para "Oh. A #MON"
	line "battle?"
	done

KimonoGirlZukiBeatenText:
	text "I don't have any"
	line "#MON left…"
	done

KimonoGirlZukiAfterBattleText:
	text "I put a different"
	line "flower in my bar-"
	cont "rette every month."
	done

KimonoGirlKuniSeenText:
	text "Oh, you're a cute"
	line "trainer. Would you"
	cont "like to battle?"
	done

KimonoGirlKuniBeatenText:
	text "You're stronger"
	line "than you look."
	done

KimonoGirlKuniAfterBattleText:
	text "I trained a lot,"
	line "so I thought I was"

	para "a capable trainer."
	line "I guess I'm not."
	done

KimonoGirlMikiSeenText:
	text "Do you like my"
	line "dancing? I'm good"
	cont "at #MON too."
	done

KimonoGirlMikiBeatenText:
	text "Ooh, you're good"
	line "at #MON too."
	done

KimonoGirlMikiAfterBattleText:
	text "I can keep dancing"
	line "because there are"

	para "people who enjoy"
	line "what I do."

	para "My #MON keep my"
	line "spirits up too."
	done

SurfGuyNeverLeftAScratchText:
	text "Not only are the"
	line "KIMONO GIRLS great"

	para "dancers, they're"
	line "also skilled at"
	cont "#MON."

	para "During the war, I"
	line "fought alongside"
	cont "SAYO's sister."

	para "I barely made it"
	line "out of GOLDENROD"
	cont "alive."

	para "RED's Army, had"
	line "burned the GOLD-"
	cont "ENROD ARCHIVES."

	para "SAYO's sister"
	line "wasn't as lucky."

	para "May the Forest"
	line "Protector, guard"
	cont "her soul."

	para "Ahh, but enough"
	line "old war stories."
	done

SurfGuyLadGiftText:
	text "Lad! If you can"
	line "defeat all the"

	para "KIMONO GIRLS, I'll"
	line "give you a gift."
	done

SurfGuyLassieGiftText:
	text "Lassie, if you can"
	line "defeat all the"

	para "KIMONO GIRLS, I'll"
	line "give you a gift."
	done

SurfGuyLikeADanceText:
	text "The way you bat-"
	line "tled, it was like"
	cont "watching a dance."

	para "It was a rare"
	line "treat to see!"

	para "I want you to have"
	line "this. Don't worry"
	cont "--take it!"
	done

SurfGuySurfExplanationText:
	text "That's SURF."

	para "It's a move that"
	line "lets #MON swim"
	cont "across water."
	done

SurfGuyElegantKimonoGirlsText:
	text "I wish my #MON"
	line "were as elegant as"
	cont "the KIMONO GIRLS…"
	done

RhydonText:
	text "RHYDON: Gugooh"
	line "gugogooh!"
	done

EspeonText:
	text "Espi-oon!"
	done

UmbreonText:
	text "Umbre Umbreon."
	done

VaporeonText:
	text "Vapor-reon!"
	done

JolteonText:
	text "Jolti!"
	done

FlareonText:
	text "Flare. Flare!"
	done

DanceTheaterCooltrainerMText:
	text "That man's always"
	line "with his RHYDON."

	para "Says he wants a"
	line "#MON that can"
	cont "SURF and dance."

	para "Is he trying to"
	line "make a synchro-"
	cont "nized swimming"
	cont "#MON?"
	done

DanceTheaterGrannyText:
	text "The KIMONO GIRLS"
	line "are so beautiful…"

	para "But they have to"
	line "go through rigor-"
	cont "ous training."

	para "And they have to"
	line "learn to follow"

	para "customs before ap-"
	line "pearing in public."

	para "It's so good to see"
	line "our traditions are"
	cont "coming back, after"
	cont "the war."
	done

DanceTheaterFancyPanelText:
	text "It's a fancy panel"
	line "that's decorated"
	cont "with flowers."
	done

DanceTheater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, ECRUTEAK_CITY, 8
	warp_event  6, 13, ECRUTEAK_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  5,  6, BGEVENT_UP, DanceTheaterFancyPanel
	bg_event  6,  6, BGEVENT_UP, DanceTheaterFancyPanel

	def_object_events
	object_event  0,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlNaoko, -1
	object_event  2,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerKimonoGirlSayo, -1
	object_event  6,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlZuki, -1
	object_event  9,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKuni, -1
	object_event 11,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlMiki, -1
	object_event  7, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterSurfGuy, -1
	object_event  6,  8, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, DanceTheaterRhydon, -1
	object_event 10, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DanceTheaterCooltrainerMScript, -1
	object_event  3,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterGrannyScript, -1
	object_event  3,  1, SPRITE_ESPEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, DanceTheaterEspeon, -1
	object_event  7,  2, SPRITE_UMBREON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, DanceTheaterUmbreon, -1
	object_event 10,  1, SPRITE_VAPOREON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DanceTheaterVaporeon, -1
	object_event 11,  3, SPRITE_JOLTEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DanceTheaterJolteon, -1
	object_event  0,  1, SPRITE_FLAREON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DanceTheaterFlareon, -1