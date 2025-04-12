	object_const_def
	const SLOWPOKEWELLB2F_GYM_GUIDE
	const SLOWPOKEWELLB2F_POKE_BALL

SlowpokeWellB2F_MapScripts:
	def_scene_scripts

	def_callbacks

SlowpokeWellB2FGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HOOT_HOOT
	iftrue .CheckNationalPark
	writetext MyBroIsInABindText
	yesorno
	iffalse .Refused
	writetext ThanksKidText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .ParyFull
	writetext SlowepokeWellPlayerRecdPkmnWMail
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke HOOTHOOT, 10, NO_ITEM, GiftHootHootName, GiftHootHootOTNAME
	givepokemail GiftHootHootMail
	setevent EVENT_GOT_HOOT_HOOT
.CheckNationalPark:
	writetext CheckTheNationalParkText
	waitbutton
	closetext
	end

.Refused:
	writetext ThanksForNothing
	waitbutton
	closetext
	end

.ParyFull:
	writetext NoRoomForThisMon
	waitbutton
	closetext
	end

GiftHootHootName:
	db "RHONA@"

GiftHootHootOTNAME:
	db "ROXXY@"

	db 0 ; unused

GiftHootHootMail:
	db EON_MAIL
	db   "PROJECT GENESIS"
	next "was all SILPH!@"

SlowpokeWellB2FTMRainDance:
	itemball TM_RAIN_DANCE

CheckTheNationalParkText:
	text "My cousin works in"
	line "the SACRED FOREST."

	para "..."
	line "..."

	para "They leveled most"
	line "of it to make the"
	cont "NATIONAL PARK."

	para "..."
	line "..."

	para "They destroyed"
	line "most of it, but"
	cont "not all of it."
	done

MyBroIsInABindText:
	text "Hey! I know you!"
	line "You're the kid who"

	para "shut down the SLOW"
	line "POKETAIL plan."

	para "..."
	line "..."

	para "Battle? No thanks."
	line "My #MON are"
	cont "tired."

	para "..."
	line "..."

	para "I'm wanted in"
	line "GOLDENROD. But I"

	para "need to send some"
	line "MAIL to my cousin."

	para "Would ya help a"
	line "gal out?"
	done

ThanksForNothing:
	text "Thanks for nothing"
	line "asshole."
	done

ThanksKidText:
	text "You're the best"
	line "kid."
	done

NoRoomForThisMon:
	text "Glad you're gonna"
	line "help, but you've"

	para "got too many #-"
	line "MON with you."

	para "Come back when you"
	line "can take another."
	done

SlowepokeWellPlayerRecdPkmnWMail:
	text "<PLAYER> received a"
	line "#MON with MAIL."

	para "..."
	line "..."

	para "No I'm not mad you"
	line "stopped us here."

	para "I thought it was"
	line "a dumb way to earn"
	cont "cash."

	para "We've got bigger"
	line "plans."
	done


SlowpokeWellB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 11, SLOWPOKE_WELL_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, SlowpokeWellB2FGymGuideScript, EVENT_GAVE_HOOT_HOOT
	object_event 15,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_ITEMBALL, 0, SlowpokeWellB2FTMRainDance, EVENT_SLOWPOKE_WELL_B2F_TM_RAIN_DANCE
