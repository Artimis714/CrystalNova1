DEF OLIVINEHEAL0PRICE EQU 100
DEF OLIVINEHEAL1PRICE EQU 500
DEF OLIVINEHEAL2PRICE EQU 750
DEF OLIVINEHEAL3PRICE EQU 1000
DEF OLIVINEHEAL4PRICE EQU 1250
DEF OLIVINEHEAL5PRICE EQU 1500
DEF OLIVINEHEAL6PRICE EQU 2000
DEF OLIVINEHEAL7PRICE EQU 2250
DEF OLIVINEHEAL8PRICE EQU 2500
DEF OLIVINEHEAL9PRICE EQU 3000
DEF OLIVINEHEAL10PRICE EQU 3250
DEF OLIVINEHEAL11PRICE EQU 3750
DEF OLIVINEHEAL12PRICE EQU 4250
DEF OLIVINEHEAL13PRICE EQU 5000
DEF OLIVINEHEAL14PRICE EQU 6000
DEF OLIVINEHEAL15PRICE EQU 7000
DEF OLIVINEHEAL16PRICE EQU 8000

	object_const_def
	const OLIVINEPOKECENTER1F_NURSE
	const OLIVINEPOKECENTER1F_FISHING_GURU
	const OLIVINEPOKECENTER1F_FISHER
	const OLIVINEPOKECENTER1F_TEACHER

OlivinePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

OlivinePokecenter1FNurseScript:
	checkflag ENGINE_OLIVINE_FEE
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
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.NoBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext NoBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL0PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL0PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.OneBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext OneBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL1PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL1PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.TwoBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TwoBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL2PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL2PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.ThreeBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ThreeBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL3PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL3PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.FourBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FourBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL4PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL4PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.FiveBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FiveBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL5PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL5PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.SixBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SixBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL6PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL6PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.SevenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SevenBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL7PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL7PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.EightBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext EightBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL8PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL8PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.NineBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext NineBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL9PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL9PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.TenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TenBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL10PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL10PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.ElevenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ElevenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL11PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL11PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.TwelveBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TwelveBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL12PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL12PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.ThirteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ThirteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL13PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL13PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.FourteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FourteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL14PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL14PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.FifteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FifteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL15PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL15PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.SixteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SixteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, OLIVINEHEAL16PRICE
	ifequal HAVE_LESS, OLIVINEHEALNoMoneyScript
	takemoney YOUR_MONEY, OLIVINEHEAL16PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_OLIVINE_FEE
	jumpstd PokecenterNurseScript

.NoHeal:
	farwritetext SorryComeAgainText
	waitbutton
	closetext
	end

.Standard:
	jumpstd PokecenterNurseScript

OLIVINEHEALNoMoneyScript:
	farwritetext NoMoneytoHealText
	waitbutton
	closetext
	end

OlivinePokecenter1FFishingGuruScript:
	jumpstd HappinessCheckScript

OlivinePokecenter1FFisherScript:
	jumptextfaceplayer OlivinePokecenter1FFisherText

OlivinePokecenter1FTeacherScript:
	jumptextfaceplayer OlivinePokecenter1FTeacherText

OlivinePokecenter1FFisherText:
	text "The SAILOR in the"
	line "OLIVINE CAFE next"

	para "door is really"
	line "generous."

	para "He taught my"
	line "#MON STRENGTH."

	para "Now they can move"
	line "big boulders."
	done

OlivinePokecenter1FTeacherText:
	text "There's a person"
	line "in CIANWOOD CITY"
	cont "across the sea."

	para "I heard him brag-"
	line "ging about his"
	cont "rare #MON."

	para "..."
	line "..."

	para "You're right"
	line "that is really"
	cont "vague."

	para "..."
	line "..."

	para "Whoa! You have"
	line "rare #MON too!"
	done

OlivinePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, OLIVINE_CITY, 1
	warp_event  4,  7, OLIVINE_CITY, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FFishingGuruScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FFisherScript, -1
	object_event  7,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePokecenter1FTeacherScript, -1
