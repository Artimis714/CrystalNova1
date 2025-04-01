DEF VIOLETHEAL0PRICE EQU 100
DEF VIOLETHEAL1PRICE EQU 500
DEF VIOLETHEAL2PRICE EQU 750
DEF VIOLETHEAL3PRICE EQU 1000
DEF VIOLETHEAL4PRICE EQU 1250
DEF VIOLETHEAL5PRICE EQU 1500
DEF VIOLETHEAL6PRICE EQU 2000
DEF VIOLETHEAL7PRICE EQU 2250
DEF VIOLETHEAL8PRICE EQU 2500
DEF VIOLETHEAL9PRICE EQU 3000
DEF VIOLETHEAL10PRICE EQU 3250
DEF VIOLETHEAL11PRICE EQU 3750
DEF VIOLETHEAL12PRICE EQU 4250
DEF VIOLETHEAL13PRICE EQU 5000
DEF VIOLETHEAL14PRICE EQU 6000
DEF VIOLETHEAL15PRICE EQU 7000
DEF VIOLETHEAL16PRICE EQU 8000

	object_const_def
	const VIOLETPOKECENTER1F_NURSE
	const VIOLETPOKECENTER1F_GAMEBOY_KID
	const VIOLETPOKECENTER1F_GENTLEMAN
	const VIOLETPOKECENTER1F_YOUNGSTER
	const VIOLETPOKECENTER1F_ELMS_AIDE

VioletPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

VioletPokecenterNurse:
	checkflag ENGINE_VIOLET_FEE
	iftrue .Standard
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iftrue .FreeHealthCare
	checkcode VAR_BADGES
	if_equal 0, .NoBadgePrice
	checkcode VAR_BADGES
	if_equal 1, .OneBadgePrice
	checkcode VAR_BADGES
	if_equal 2, .TwoBadgePrice
	checkcode VAR_BADGES
	if_equal 3, .ThreeBadgePrice
	checkcode VAR_BADGES
	if_equal 4, .FourBadgePrice
	checkcode VAR_BADGES
	if_equal 5, .FiveBadgePrice
	checkcode VAR_BADGES
	if_equal 6, .SixBadgePrice
	checkcode VAR_BADGES
	if_equal 7, .SevenBadgePrice
	checkcode VAR_BADGES
	if_equal 8, .EightBadgePrice
	checkcode VAR_BADGES
	if_equal 9, .NineBadgePrice
	checkcode VAR_BADGES
	if_equal 10, .TenBadgePrice
	checkcode VAR_BADGES
	if_equal 11, .ElevenBadgePrice
	checkcode VAR_BADGES
	if_equal 12, .TwelveBadgePrice
	checkcode VAR_BADGES
	if_equal 13, .ThirteenBadgePrice
	checkcode VAR_BADGES
	if_equal 14, .FourteenBadgePrice
	checkcode VAR_BADGES
	if_equal 15, .FifteenBadgePrice
	checkcode VAR_BADGES
	if_equal 16, .SixteenBadgePrice

.FreeHealthCare:
	farwritetext KantoCitizenProvedText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.NoBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext NoBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL0PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL0PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.OneBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext OneBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL1PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL1PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.TwoBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TwoBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL2PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL2PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.ThreeBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ThreeBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL3PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL3PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.FourBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FourBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL4PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL4PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.FiveBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FiveBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL5PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL5PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.SixBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SixBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL6PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL6PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.SevenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SevenBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL7PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL7PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.EightBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext EightBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL8PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL8PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.NineBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext NineBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL9PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL9PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.TenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TenBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL10PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL10PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.ElevenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ElevenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL11PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL11PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.TwelveBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TwelveBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL12PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL12PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.ThirteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ThirteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL13PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL13PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.FourteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FourteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL14PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL14PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.FifteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FifteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL15PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL15PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.SixteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SixteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, VIOLETHEAL16PRICE
	ifequal HAVE_LESS, VIOLETHEALNoMoneyScript
	takemoney YOUR_MONEY, VIOLETHEAL16PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_VIOLET_FEE
	jumpstd PokecenterNurseScript

.NoHeal:
	farwritetext SorryComeAgainText
	waitbutton
	closetext
	end

.Standard:
	jumpstd PokecenterNurseScript

VIOLETHEALNoMoneyScript:
	farwritetext NoMoneytoHealText
	waitbutton
	closetext
	end

VioletPokecenter1F_ElmsAideScript:
	faceplayer
	opentext
	checkevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELMS_AIDE
	iftrue .SecondTimeAsking
	writetext VioletPokecenterElmsAideFavorText
.AskTakeEgg:
	yesorno
	iffalse .RefusedEgg
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	giveegg TOGEPI, EGG_LEVEL
	getstring STRING_BUFFER_4, .eggname
	scall .AideGivesEgg
	setevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	clearevent EVENT_ELMS_AIDE_IN_LAB
	clearevent EVENT_TOGEPI_HATCHED
	setmapscene ROUTE_32, SCENE_ROUTE32_OFFER_SLOWPOKETAIL
	writetext VioletPokecenterElmsAideGiveEggText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal UP, .AideWalksAroundPlayer
	turnobject PLAYER, DOWN
	applymovement VIOLETPOKECENTER1F_ELMS_AIDE, MovementData_AideWalksStraightOutOfPokecenter
	playsound SFX_EXIT_BUILDING
	disappear VIOLETPOKECENTER1F_ELMS_AIDE
	waitsfx
	end

.AideWalksAroundPlayer:
	applymovement VIOLETPOKECENTER1F_ELMS_AIDE, MovementData_AideWalksLeftToExitPokecenter
	turnobject PLAYER, DOWN
	applymovement VIOLETPOKECENTER1F_ELMS_AIDE, MovementData_AideFinishesLeavingPokecenter
	playsound SFX_EXIT_BUILDING
	disappear VIOLETPOKECENTER1F_ELMS_AIDE
	waitsfx
	end

.eggname
	db "EGG@"

.AideGivesEgg:
	jumpstd ReceiveTogepiEggScript
	end

.PartyFull:
	writetext VioletCityElmsAideFullPartyText
	waitbutton
	closetext
	end

.RefusedEgg:
	writetext VioletPokecenterElmsAideRefuseText
	waitbutton
	closetext
	setevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELMS_AIDE
	end

.SecondTimeAsking:
	writetext VioletPokecenterElmsAideAskEggText
	sjump .AskTakeEgg

VioletPokecenter1FGameboyKidScript:
	jumptextfaceplayer VioletPokecenter1FGameboyKidText

VioletPokecenter1FGentlemanScript:
	jumptextfaceplayer VioletPokecenter1FGentlemanText

VioletPokecenter1FYoungsterScript:
	jumptextfaceplayer VioletPokecenter1FYoungsterText

MovementData_AideWalksStraightOutOfPokecenter:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MovementData_AideWalksLeftToExitPokecenter:
	step LEFT
	step DOWN
	step_end

MovementData_AideFinishesLeavingPokecenter:
	step DOWN
	step DOWN
	step DOWN
	step_end

VioletPokecenterElmsAideFavorText:
	text "<PLAY_G>, long"
	line "time, no see."

	para "PROF.ELM asked me"
	line "to find you."

	para "He has another"
	line "favor to ask."

	para "Would you take the"
	line "#MON EGG?"
	done

VioletPokecenterElmsAideGiveEggText:
	text "We discovered that"
	line "a #MON will not"

	para "hatch until it"
	line "grows in the EGG."

	para "It also has to be"
	line "with other active"
	cont "#MON to hatch."

	para "<PLAY_G>, you're"
	line "the only person"
	cont "we can rely on."

	para "Please call PROF."
	line "ELM when that EGG"
	cont "hatches!"
	done

VioletCityElmsAideFullPartyText:
	text "Oh, no. You can't"
	line "carry any more"
	cont "#MON with you."

	para "I'll wait here"
	line "while you make"
	cont "room for the EGG."
	done

VioletPokecenterElmsAideRefuseText:
	text "B-but… PROF.ELM"
	line "asked for you…"
	done

VioletPokecenterElmsAideAskEggText:
	text "<PLAY_G>, will you"
	line "take the EGG?"
	done

VioletPokecenter1FGameboyKidText:
	text "A guy named BILL"
	line "made the #MON"
	cont "PC storage system."
	done

VioletPokecenter1FGentlemanText:
	text "It was around"
	line "three years ago."

	para "TEAM ROCKET was up"
	line "to no good with"
	cont "#MON."

	para "But justice pre-"
	line "vailed--a young"
	cont "kid broke 'em up."
	done

VioletPokecenter1FYoungsterText:
	text "#MON are smart."
	line "They won't obey a"

	para "trainer they don't"
	line "respect."

	para "Without the right"
	line "GYM BADGES, they"

	para "will just do as"
	line "they please."
	done

VioletPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 5
	warp_event  4,  7, VIOLET_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletPokecenterNurse, -1
	object_event  7,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FGentlemanScript, -1
	object_event  8,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FYoungsterScript, -1
	object_event  4,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1F_ElmsAideScript, EVENT_ELMS_AIDE_IN_VIOLET_POKEMON_CENTER
