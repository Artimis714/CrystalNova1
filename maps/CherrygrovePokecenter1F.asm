DEF CHERRYGROVEHEAL0PRICE EQU 100
DEF CHERRYGROVEHEAL1PRICE EQU 500
DEF CHERRYGROVEHEAL2PRICE EQU 750
DEF CHERRYGROVEHEAL3PRICE EQU 1000
DEF CHERRYGROVEHEAL4PRICE EQU 1250
DEF CHERRYGROVEHEAL5PRICE EQU 1500
DEF CHERRYGROVEHEAL6PRICE EQU 2000
DEF CHERRYGROVEHEAL7PRICE EQU 2250
DEF CHERRYGROVEHEAL8PRICE EQU 2500
DEF CHERRYGROVEHEAL9PRICE EQU 3000
DEF CHERRYGROVEHEAL10PRICE EQU 3250
DEF CHERRYGROVEHEAL11PRICE EQU 3750
DEF CHERRYGROVEHEAL12PRICE EQU 4250
DEF CHERRYGROVEHEAL13PRICE EQU 5000
DEF CHERRYGROVEHEAL14PRICE EQU 6000
DEF CHERRYGROVEHEAL15PRICE EQU 7000
DEF CHERRYGROVEHEAL16PRICE EQU 8000

	object_const_def
	const CHERRYGROVEPOKECENTER1F_NURSE
	const CHERRYGROVEPOKECENTER1F_FISHER
	const CHERRYGROVEPOKECENTER1F_GENTLEMAN
	const CHERRYGROVEPOKECENTER1F_TEACHER

CherrygrovePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CherrygrovePokecenter1FNurseScript:
	checkflag ENGINE_CHERRYGROVE_FEE
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
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.NoBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext NoBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL0PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL0PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.OneBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext OneBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL1PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL1PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.TwoBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TwoBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL2PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL2PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.ThreeBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ThreeBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL3PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL3PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.FourBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FourBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL4PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL4PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.FiveBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FiveBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL5PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL5PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.SixBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SixBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL6PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL6PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.SevenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SevenBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL7PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL7PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.EightBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext EightBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL8PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL8PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.NineBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext NineBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL9PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL9PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.TenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TenBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL10PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL10PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.ElevenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ElevenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL11PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL11PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.TwelveBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TwelveBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL12PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL12PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.ThirteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ThirteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL13PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL13PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.FourteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FourteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL14PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL14PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.FifteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FifteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL15PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL15PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.SixteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SixteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, CHERRYGROVEHEAL16PRICE
	ifequal HAVE_LESS, CHERRYGROVEHEALNoMoneyScript
	takemoney YOUR_MONEY, CHERRYGROVEHEAL16PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_CHERRYGROVE_FEE
	jumpstd PokecenterNurseScript

.NoHeal:
	farwritetext SorryComeAgainText
	waitbutton
	closetext
	end

.Standard:
	jumpstd PokecenterNurseScript

CHERRYGROVEHEALNoMoneyScript:
	farwritetext NoMoneytoHealText
	waitbutton
	closetext
	end

CherrygrovePokecenter1FFisherScript:
	jumptextfaceplayer CherrygrovePokecenter1FFisherText

CherrygrovePokecenter1FGentlemanScript:
	jumptextfaceplayer CherrygrovePokecenter1FGentlemanText

CherrygrovePokecenter1FTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .CommCenterOpen
	writetext CherrygrovePokecenter1FTeacherText
	waitbutton
	closetext
	end

.CommCenterOpen:
	writetext CherrygrovePokecenter1FTeacherText_CommCenterOpen
	waitbutton
	closetext
	end

CherrygrovePokecenter1FFisherText:
	text "I can't believe"
	line "I'm being charged"

	para "to use the #MON"
	line "CENTER!"

	para "KANTO has gone"
	line "too far this"
	cont "time!!"
	done

CherrygrovePokecenter1FGentlemanText:
	text "That PC is free"
	line "for any trainer"
	cont "to use."

	para "At least they"
	line "haven't started"

	para "charging us for"
	line "that too!"
	done

CherrygrovePokecenter1FTeacherText:
	text "The COMMUNICATION"
	line "CENTER upstairs"
	cont "was just built."

	para "But they're still"
	line "finishing it up."
	done

CherrygrovePokecenter1FTeacherText_CommCenterOpen:
	text "The COMMUNICATION"
	line "CENTER upstairs"
	cont "was just built."

	para "I traded #MON"
	line "there already!"
	done

CherrygrovePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CHERRYGROVE_CITY, 2
	warp_event  4,  7, CHERRYGROVE_CITY, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FNurseScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FFisherScript, -1
	object_event  8,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FGentlemanScript, -1
	object_event  1,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FTeacherScript, -1
