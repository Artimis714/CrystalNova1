	object_const_def
	const GOLDENRODBIKESHOP_CLERK
	const GOLDENRODBIKESHOP_SHINYDITTO
	const GOLDENRODBIKESHOP_AXEL
	const GOLDENRODBIKESHOP_SEBASTIAN
	const GOLDENRODBIKESHOP_NEIL
	const GOLDENRODBIKESHOP_WOLFGANG

GoldenrodBikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodBikeShopClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	writetext GoldenrodBikeShopClerkIntroText
	yesorno
	iffalse .Refused
	writetext GoldenrodBikeShopClerkAgreedText
	promptbutton
	waitsfx
	giveitem BICYCLE
	writetext BorrowedABicycleText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setflag ENGINE_BIKE_SHOP_CALL_ENABLED
	setevent EVENT_GOT_BICYCLE
.GotBicycle:
	writetext GoldenrodBikeShopClerkFirstRateBikesText
	waitbutton
	closetext
	end

.Refused:
	writetext GoldenrodBikeShopClerkRefusedText
	waitbutton
	closetext
	end


ShinyDitto:
	opentext
	writetext EcruteakDittoText
	pause 15
	cry DITTO
	closetext
	setevent EVENT_BATTLED_DITTO
	loadwildmon DITTO, 20
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	disappear GOLDENRODBIKESHOP_SHINYDITTO
	clearevent EVENT_READY_TO_ROCK
	reloadmapafterbattle
	end

RockerAxel:
	trainer GUITARIST, AXEL, EVENT_BEAT_ROCKER_AXEL, GuitaristAxelSeenText, GuitaristAxelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristAxelAfterBattleText
	waitbutton
	closetext
	end

RockerSebastian:
	trainer GUITARIST, SEBASTIAN, EVENT_BEAT_ROCKER_SEBASTIAN, GuitaristSebastianSeenText, GuitaristSebastianBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristSebastianAfterBattleText
	waitbutton
	closetext
	end

RockerNeil:
	trainer GUITARIST, NEIL, EVENT_BEAT_ROCKER_NEIL, GuitaristNeilSeenText, GuitaristNeilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristNeilAfterBattleText
	waitbutton
	closetext
	end

RockerWolfgang:
	trainer GUITARIST, WOLFGANG, EVENT_BEAT_ROCKER_WOLFGANG, GuitaristWolfgangSeenText, GuitaristWolfgangBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristWolfgangAfterBattleText
	waitbutton
	closetext
	end

GoldenrodBikeShopBicycle:
	opentext
	checkevent EVENT_BIKESHOP_CLOSED
	iftrue .JustScrap
	writetext GoldenrodBikeShopBicycleText
	waitbutton
	closetext
	end

.JustScrap:
	writetext JustScrapText
	waitbutton
	closetext
	end

GuitaristAxelSeenText:
	text "We are JOHTO"
	line "DEFIANT and this"

	para "place fucking"
	cont "rocks!"
	done

GuitaristAxelBeatenText:
	text "Not cool, man."
	done

GuitaristAxelAfterBattleText:
	text "..."
	line "..."

	para "A bike shop?"
	line "Huh, we've been"

	para "coming to jam here"
	line "for a while now."
	done

GuitaristSebastianSeenText:
	text "Dude, watch me"
	line "shred this solo!"
	done

GuitaristSebastianBeatenText:
	text "You're harshing"
	line "our vibes, kid."
	done

GuitaristSebastianAfterBattleText:
	text "Whatever, you'll"
	line "never stop our"
	cont "music."
	done

GuitaristNeilSeenText:
	text "..."
	line "..."

	para "No, I don't do"
	line "autographs."
	done

GuitaristNeilBeatenText:
	text "Fine, get me a"
	line "pen."
	done

GuitaristNeilAfterBattleText:
	text "I wrote all the"
	line "lyrics."

	para "..."
	line "..."

	para "We're rebelling"
	line "against our new"
	cont "KANTO overlords."

	para "Gotta stay true to"
	line "what's right, bro!"
	done

GuitaristWolfgangSeenText:
	text "Vhat is dis?"
	line "Kinder have no"
	cont "place here."
	done

GuitaristWolfgangBeatenText:
	text "Das not good, ja?"
	done

GuitaristWolfgangAfterBattleText:
	text "We are the voice."
	line "If you are ruin-"
	cont "our practice."

	para "Ve will not win"
	line "battle of bands."

	para "Be gone with ju!"
	done

GoldenrodBikeShopClerkIntroText:
	text "…sigh… I moved"
	line "here, but I can't"

	para "sell my BICYCLES."
	line "This place used to"

	para "be a ROCKET base"
	line "during the war."

	para "They're all gone,"
	line "but this building"

	para "has a reputation."
	line "I should've known"

	para "the deal was too"
	line "good to be true."

	para "Look kid, I know"
	line "I'm a struggling"

	para "small business"
	line "owner, and it'd"

	para "be a terrible"
	line "business decision"

	para "for me to give"
	line "you a bike for"

	para "free, since sales"
	line "aren't going well."

	para "But I have a feel-"
	line "ing that, a chari-"
	cont "smatic kid like"

	para "you, riding one of"
	line "my bikes... Well,"

	para "I'm sure that'd"
	line "somehow help my"
	cont "business."

	para "..."
	line "..."

	para "Kid, I'm a bike"
	line "mechanic, not an"
	cont "economist."

	para "Do you want this"
	line "free bike,"
	cont "or not?"
	done

GoldenrodBikeShopClerkAgreedText:
	text "Really? Great!"

	para "Give me your name"
	line "and phone number,"

	para "and I'll loan you"
	line "a BICYCLE."
	done

BorrowedABicycleText:
	text "<PLAYER> borrowed a"
	line "BICYCLE."
	done

GoldenrodBikeShopClerkFirstRateBikesText:
	text "My BICYCLES are"
	line "first-rate! You"

	para "can ride them"
	line "anywhere."

	para "I might not know"
	line "business, but I"
	cont "know bikes."
	done

GoldenrodBikeShopClerkRefusedText:
	text "…sigh… Oh, for"
	line "the kindness of"
	cont "people…"
	done

GoldenrodBikeShopBicycleText:
	text "It's a shiny new"
	line "BICYCLE!"

	para "The price tag is"
	line "eye-watering."
	done

JustScrapText:
	text "This bike has"
	line "been looted for"
	cont "parts!"

	para "No one could"
	line "ride it."
	done

EcruteakDittoText:
	text "Huh... an odd"
	line "Blue DITTO, just"

	para "chillin' in the"
	line "abandoned BIKE"
	cont "SHOP."

	para "Dii-tto!"
	done

GoldenrodBikeShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 2
	warp_event  3,  7, GOLDENROD_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  3, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  3, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  5, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  5, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  6,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  7,  6, BGEVENT_READ, GoldenrodBikeShopBicycle

	def_object_events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodBikeShopClerkScript, EVENT_BIKESHOP_CLOSED
	object_event  3,  4, SPRITE_DITTO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ShinyDitto, EVENT_BATTLED_DITTO
	object_event  3,  4, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, RockerAxel, EVENT_READY_TO_ROCK
	object_event  4,  4, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, RockerSebastian, EVENT_READY_TO_ROCK
	object_event  2,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 3, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, RockerNeil, EVENT_READY_TO_ROCK
	object_event  5,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 3, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, RockerWolfgang, EVENT_READY_TO_ROCK
