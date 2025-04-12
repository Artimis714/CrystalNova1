DEF ECRUTEAKHEAL0PRICE EQU 100
DEF ECRUTEAKHEAL1PRICE EQU 500
DEF ECRUTEAKHEAL2PRICE EQU 750
DEF ECRUTEAKHEAL3PRICE EQU 1000
DEF ECRUTEAKHEAL4PRICE EQU 1250
DEF ECRUTEAKHEAL5PRICE EQU 1500
DEF ECRUTEAKHEAL6PRICE EQU 2000
DEF ECRUTEAKHEAL7PRICE EQU 2250
DEF ECRUTEAKHEAL8PRICE EQU 2500
DEF ECRUTEAKHEAL9PRICE EQU 3000
DEF ECRUTEAKHEAL10PRICE EQU 3250
DEF ECRUTEAKHEAL11PRICE EQU 3750
DEF ECRUTEAKHEAL12PRICE EQU 4250
DEF ECRUTEAKHEAL13PRICE EQU 5000
DEF ECRUTEAKHEAL14PRICE EQU 6000
DEF ECRUTEAKHEAL15PRICE EQU 7000
DEF ECRUTEAKHEAL16PRICE EQU 8000

	object_const_def
	const ECRUTEAKPOKECENTER1F_NURSE
	const ECRUTEAKPOKECENTER1F_POKEFAN_M
	const ECRUTEAKPOKECENTER1F_COOLTRAINER_F
	const ECRUTEAKPOKECENTER1F_GYM_GUIDE

EcruteakPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakPokecenter1FNurseScript:
	checkflag ENGINE_ECRUTEAK_FEE
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
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.NoBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext NoBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL0PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL0PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.OneBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext OneBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL1PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL1PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.TwoBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TwoBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL2PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL2PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.ThreeBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ThreeBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL3PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL3PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.FourBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FourBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL4PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL4PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.FiveBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FiveBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL5PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL5PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.SixBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SixBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL6PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL6PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.SevenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SevenBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL7PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL7PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.EightBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext EightBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL8PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL8PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.NineBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext NineBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL9PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL9PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.TenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TenBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL10PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL10PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.ElevenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ElevenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL11PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL11PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.TwelveBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TwelveBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL12PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL12PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.ThirteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ThirteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL13PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL13PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.FourteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FourteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL14PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL14PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.FifteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FifteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL15PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL15PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.SixteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SixteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ECRUTEAKHEAL16PRICE
	ifequal HAVE_LESS, ECRUTEAKHEALNoMoneyScript
	takemoney YOUR_MONEY, ECRUTEAKHEAL16PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ECRUTEAK_FEE
	jumpstd PokecenterNurseScript

.NoHeal:
	farwritetext SorryComeAgainText
	waitbutton
	closetext
	end

.Standard:
	jumpstd PokecenterNurseScript

ECRUTEAKHEALNoMoneyScript:
	farwritetext NoMoneytoHealText
	waitbutton
	closetext
	end

EcruteakPokecenter1FPokefanMScript:
	special CheckMobileAdapterStatusSpecial
	iftrue .mobile
	jumptextfaceplayer EcruteakPokecenter1FPokefanMText

.mobile
	jumptextfaceplayer EcruteakPokecenter1FPokefanMTextMobile

EcruteakPokecenter1FCooltrainerFScript:
	jumptextfaceplayer EcruteakPokecenter1FCooltrainerFText

EcruteakPokecenter1FGymGuideScript:
	jumptextfaceplayer EcruteakPokecenter1FGymGuideText

EcruteakPokecenter1FPokefanMText:
	text "The way the KIMONO"
	line "GIRLS dance is"

	para "marvelous. Just"
	line "like the way they"
	cont "use their #MON."
	done

EcruteakPokecenter1FPokefanMTextMobile:
	text "You must be hoping"
	line "to battle more"

	para "people, right?"
	line "There's apparently"

	para "some place where"
	line "trainers gather."

	para "Where, you ask?"

	para "It's a little past"
	line "OLIVINE CITY."
	done

EcruteakPokecenter1FCooltrainerFText:
	text "MORTY, the GYM"
	line "LEADER, is soooo"
	cont "cool."

	para "His #MON are"
	line "really tough too."
	done

EcruteakPokecenter1FGymGuideText:
	text "LAKE OF RAGE…"

	para "The appearance of"
	line "a GYARADOS swarm…"

	para "I smell a conspir-"
	line "acy. I know it!"
	done

EcruteakPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 6
	warp_event  4,  7, ECRUTEAK_CITY, 6
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FPokefanMScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FCooltrainerFScript, -1
	object_event  7,  1, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FGymGuideScript, -1
