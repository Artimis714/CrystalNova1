	object_const_def
	const SOULHOUSE_MRFUJI
	const SOULHOUSE_TEACHER
	const SOULHOUSE_LASS
	const SOULHOUSE_GRANNY

SoulHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFuji:
	opentext
	checkevent EVENT_LAVTOWER_GHOST_LASS_RORY
	iffalse .BeGone
	checkevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	iffalse .BeGone
	checkevent EVENT_BEAT_BEAUTY_GHOST_SERENITY
	iftrue .AfterBattleSerenity
	writetext BeautySerenityGhostSeenText
	waitbutton
	closetext
	winlosstext BeautySerenityGhostBeatenText, 0
	loadtrainer BEAUTY, SERENITY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BEAUTY_GHOST_SERENITY
	end

.BeGone:
	writetext BeautySerenityGhostBeGoneText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp LAV_RADIO_TOWER_1F, 15, 1
	end

.AfterBattleSerenity:
	writetext BeautySerenityGhostAfterBattleText
	setevent EVENT_LAVTOWER_GHOST_BEAUTY_SERENITY
	waitbutton
	closetext
	end

SoulHouseTeacherScript:
	trainer SWIMMERF, KIKI, EVENT_BEAT_SWIMMERF_GHOST_KIKI, SwimmerFKikiGhostSeenText, SwimmerFKikiGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFKikiGhostAfterBattleText
	setevent EVENT_LAVTOWER_GHOST_SWIMMER_KIKI
	waitbutton
	closetext
	end

SoulHouseLassScript:
	trainer LASS, RORY, EVENT_BEAT_GHOST_LASS_RORY, LassRoryGhostSeenText, LassRoryGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassRoryGhostAfterBattleText
	setevent EVENT_LAVTOWER_GHOST_LASS_RORY
	waitbutton
	closetext
	end

SoulHouseGrannyScript:
	trainer FIREBREATHER, AZAR, EVENT_BEAT_FIREBREATHER_GHOST_AZAR, FirebreatherAzarGhostSeenText, FirebreatherAzarGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherAzarGhostAfterBattleText
	setevent EVENT_LAVTOWER_GHOST_FIREBREATHER_AZAR
	waitbutton
	closetext
	end


BeautySerenityGhostBeGoneText:
	text "BE GONE!!"

	para "MY FAMILY HAS"
	line "PERISHED!"

	para "LEAVE US TO OUR"
	line "GRIEF!!"
	done

BeautySerenityGhostSeenText:
	text "FIRE! The HOUSE IS"
	line "ON FIRE!"
	done

BeautySerenityGhostBeatenText:
	text "(Sobbing)"
	done

BeautySerenityGhostAfterBattleText:
	text "My poor beautiful"
	line "baby RORY. How"
	cont "could this happen?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You've met OPAL?"
	line "OPAL is alive!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Stole your KANTO"
	line "PAPERS?"

	para "Are you seriously"
	line "piercing the veil"

	para "between life and"
	line "death just to"

	para "tattle on my"
	line "daughter?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Sounds to me, like"
	line "you're doing exact-"
	cont "ly that!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Yes, her documents"
	line "would've been lost"

	para "in the fire that"
	line "killed RORY and I."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I want the best"
	line "for my girl."

	para "I do hate that she"
	line "has resorted to"

	para "acting like a"
	line "common criminal to"
	cont "survive!"

	para "We will be looking"
	line "out for her."

	para "And in our limited"
	line "way, we'll try to"

	para "help her for as"
	line "long as she lives."

	para "My OPAL wanted to"
	line "race LAPRAS."

	para "I hope she'll still"
	line "do that."

	para "She had a LAPRAS"
	line "Doll in her room"
	cont "that she loved."

	para "So many things"
	line "lost to that"
	cont "senseless war!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I worked for DR"
	line "FUJI for years."

	para "After the work we"
	line "did... it was no"

	para "accident our house"
	line "was targeted."

	para "Ask him about the"
	line "GENESIS PROJECT."

	para "I'm sure you'll"
	line "understand."
	done

SwimmerFKikiGhostSeenText:
	text "AAAAAAAA!!!!"
	done

SwimmerFKikiGhostBeatenText:
	text "Burning, boiling"
	line "volcanic water."
	done

SwimmerFKikiGhostAfterBattleText:
	text "I was swimming"
	line "with my friend"

	para "LOLITA when the"
	line "CINNABAR VOLCANO"
	cont "erupted."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Yeah, I know."
	line "I never wanted the"

	para "war, neither did"
	line "my grandparents."

	para "I think they still"
	line "live in CERULEAN."

	para "I hope they're"
	line "Okay."

	para "I was lost at sea"
	line "I doubt they know"

	para "what happened to"
	line "me."

	para "If you could give"
	line "them the closure"

	para "they need, it'd"
	line "mean the world to"
	cont "me."
	done

LassRoryGhostSeenText:
	text "Mommy! NO!"
	line "HELP!"
	done

LassRoryGhostBeatenText:
	text "No... no... NO!"
	done

LassRoryGhostAfterBattleText:
	text "Mommy used to work"
	line "here in the RADIO"
	cont "TOWER."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Yeah that was a"
	line "long time ago."

	para "After the TOWER"
	line "was attacked by"

	para "JOHTO, she stayed"
	line "living in the town"

	para "She used to vol-"
	line "unteer with MR"
	cont "FUJI."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Our house was hit"
	line "towards the end of"
	cont "the war."

	para "I'm glad my sister"
	line "was away at her"
	cont "boarding school!"

	para "But all of her"
	line "KANTO papers would"
	cont "have been lost."

	para "I hope my sis can"
	line "find peace."

	para "We had some close"
	line "ties with the"

	para "SAFARI ZONE WARDEN"
	line "our family used to"

	para "take trips down to"
	line "FUCHSIA CITY to"

	para "visit the SAFARI"
	line "ZONE. I think it's"
	cont "closed now."

	para "But maybe the"
	line "WARDEN would know"

	para "how to find my"
	line "sister!"
	done

FirebreatherAzarGhostSeenText:
	text "They caught me!"
	line "The KANTO GUARDS"
	cont "caught me!"
	done

FirebreatherAzarGhostBeatenText:
	text "Death by firing"
	line "squad. An ironic"

	para "way to go for a"
	line "FIREBREATHER."
	done

FirebreatherAzarGhostAfterBattleText:
	text "During the war I"
	line "was part of RED's"
	cont "HISTORY CORPS."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "We were glorified"
	line "tomb raiders."

	para "But my grandpa was"
	line "proud of me."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "If he's still"
	line "alive, he'd be in"
	cont "PEWTER CITY."

	para "I found a lot of"
	line "loot which the"

	para "KANTO government"
	line "gladly took as"
	cont "spoils of war."

	para "But in the store"
	line "houses in an old"

	para "shrine in ECRUTEAK"
	line "I found a relic"
	cont "from HO OH!"

	para "My grandpa would"
	line "still have it."

	para "I was court-"
	line "martialed when my"

	para "superior officer"
	line "learned I'd hidden"
	cont "the relic."

	para "Serves them right."
	done


SoulHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, LAV_RADIO_TOWER_1F, 1
	warp_event  5,  7, LAV_RADIO_TOWER_1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFuji, EVENT_MAKING_FAKE_DOCS
	object_event  7,  3, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, SoulHouseTeacherScript, EVENT_MET_KIKIS_GRANDPARENTS
	object_event  2,  5, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, SoulHouseLassScript, EVENT_MAKING_FAKE_DOCS
	object_event  1,  3, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, SoulHouseGrannyScript, EVENT_GOT_GRANDAD_SACRED_ASH
