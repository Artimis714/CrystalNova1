	object_const_def
	const GoldenrodArchives_GHOST_VERONICA
	const GoldenrodArchives_GHOST_DALE
	const GoldenrodArchives1F_ROCK1
	const GoldenrodArchives1F_ROCK2
	const GoldenrodArchives_GHOST_KIKYO
	const GoldenrodArchives_GHOST_ANDY
	const GoldenrodArchives1F_POKE_BALL1
	const GoldenrodArchives1F_POKE_BALL2

GoldenrodArchives1F_MapScripts:
	def_scene_scripts

	def_callbacks


TrainerBeautyVeronicaGhost:
	trainer BEAUTY, VERONICA, EVENT_BEAT_BEAUTY_VERONICA, BeautyVeronicaGhostSeenText, BeautyVeronicaGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyVeronicaGhostAfterBattleText
	setevent EVENT_GHOST_VERONICA
	waitbutton
	closetext
	end

TrainerKimonoGirlKikyoGhost:
	trainer KIMONO_GIRL, KIKYO, EVENT_BEAT_KIMONO_GIRL_KIKYO, KimonoGirlKikyoGhostSeenText, KimonoGirlKikyoGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlKikyoGhostAfterBattleText
	setevent EVENT_GHOST_KIKYO
	waitbutton
	closetext
	end


TrainerCooltrainermAndyGhostGhost:
	trainer COOLTRAINERM, ANDY, EVENT_BEAT_COOLTRAINERM_ANDY, CooltrainermAndyGhostGhostSeenText, CooltrainermAndyGhostGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermAndyGhostGhostAfterBattleText
	setevent EVENT_GHOST_ANDY
	waitbutton
	closetext
	end

TrainerCamperDaleGhost:
	trainer CAMPER, DALE, EVENT_BEAT_CAMPER_DALE, CamperDaleGhostGhostSeenText, CamperDaleGhostGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperDaleGhostGhostAfterBattleText
	setevent EVENT_GHOST_DALE
	waitbutton
	closetext
	end

GoldenrodArchives1FRock:
	jumpstd SmashRockScript

GoldenrodArchives1FHiddenEther:
	hiddenitem ETHER, EVENT_ARCHIVES1F_HIDDEN_ITEM1

GoldenrodArchives1FBurnHeal:
	itemball BURN_HEAL, 2

GoldenrodArchives1FXSpeed:
	itemball X_SPEED, 2

CamperDaleGhostGhostSeenText:
	text "RED's Army marches"
	line "Buildings burn."

	para "And here we stand."
	done

CamperDaleGhostGhostBeatenText:
	text "But we faltered."
	done

CamperDaleGhostGhostAfterBattleText:
	text "My father warned"
	line "me about joining"
	cont "the war."

	para "I hope he survived"
	line "He lives out on"
	cont "Route 30."

	para "Tell him... "

	para "No, he'd be dis-"
	line "appointed in me."

	para "Tell him... "
	line "I'm sorry."
	done

CooltrainermAndyGhostGhostSeenText:
	text "JACKSON! Hurry!"
	line "The window is low"
	cont "enough!"

	para "You can jump."
	line "get out son!"

	para "Save yourself!"
	done

KimonoGirlKikyoGhostSeenText:
	text "Fire! The building"
	line "is burning!"

	para "There are children"
	line "in here. Someone"
	cont "save us!"
	done 

KimonoGirlKikyoGhostBeatenText:
	text "The fire has been"
	line "extinguished."
	done

KimonoGirlKikyoGhostAfterBattleText:
	text "I had a sister."
	line "She lived in"
	cont "ECRUTEAK."

	para "We hoped she would"
	line "become a dancer"
	cont "like our mom."

	para "..."
	line "..."

	para "You've met her?"
	line "I'm glad to hear"

	para "she became one of"
	line "the Kimono Girls."

	para "Tell her..."
	line "Tell her, I'm"
	cont "proud of her."
	done

CooltrainermAndyGhostGhostBeatenText:
	text "He escaped. I knew"
	line "He escaped."

	para "Thank you FOREST"
	line "PROTECTOR for"
	cont "watching over my"
	cont "boy!"
	done

CooltrainermAndyGhostGhostAfterBattleText:
	text "If you meet our"
	line "boy, tell him we're"
	cont "so proud of him."

	para "Such a resourceful"
	line "kid."

	para "His Mom and I, we"
	line "did some terrible"
	cont "things in the war."

	para "We only want"
	line "better for him."

	para "Rather than a path"
	line "of vengeance."

	para "But we know our"
	line "boy please talk"
	cont "to him."

	para "Tell him not to"
	line "make our mistakes!"
	done


BeautyVeronicaGhostSeenText:
	text "JACKSON! Where is"
	cont "JACKSON!?"
	done

BeautyVeronicaGhostBeatenText:
	text "Did he get out?"
	line "Please, Forest"
	cont "Protector!"

	para "Tell me he got"
	line "out!"
	done

BeautyVeronicaGhostAfterBattleText:
	text "Our JACKSON is a"
	line "smart boy. If he"

	para "got out, he would"
	line "have gone to stay"

	para "with my sister, in"
	line "VIOLET CITY."

	para "She'd make sure he"
	line "kept up with his"
	cont "schooling."

	para "If you see our"
	line "JACKSON, tell him"

	para "that Mom and Dad"
	line "love him so much."

	para "Tell him, that we"
	line "want him to live a"
	cont "full & happy life."
	done


GoldenrodArchives1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, GOLDENROD_ARCHIVES, 2
	warp_event 10, 15, GOLDENROD_ARCHIVES, 2
	warp_event  5,  4, GOLDENROD_ARCHIVESB1F, 1
	warp_event  5,  5, GOLDENROD_ARCHIVESB1F, 1
	warp_event  5,  6, GOLDENROD_ARCHIVESB1F, 1
	warp_event  4,  6, GOLDENROD_ARCHIVESB1F, 1
	warp_event 15,  4, GOLDENROD_ARCHIVESB1F, 2
	warp_event 15,  5, GOLDENROD_ARCHIVESB1F, 2
	warp_event 10,  7, GOLDENROD_ARCHIVESB1F, 3
	warp_event  5, 14, GOLDENROD_ARCHIVESB1F, 4
	warp_event  4, 14, GOLDENROD_ARCHIVESB1F, 4
	warp_event 14, 14, GOLDENROD_ARCHIVESB1F, 5
	warp_event 15, 14, GOLDENROD_ARCHIVESB1F, 5
	warp_event  7, 15, GOLDENROD_ARCHIVESB1F, 6

	def_coord_events

	def_bg_events
	bg_event  8,  7, BGEVENT_ITEM, GoldenrodArchives1FHiddenEther

	def_object_events
	object_event  6, 12, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyVeronicaGhost, EVENT_GOT_LIGHT_BALL_VIOLET_CITY
	object_event 16,  8, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCamperDaleGhost, EVENT_SPOKE_TO_DALES_DAD
	object_event  4,  3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchives1FRock, -1
	object_event 16, 13, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchives1FRock, -1
	object_event  9, 12, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerKimonoGirlKikyoGhost, EVENT_GOT_BRIGHTPOWDER
	object_event  6, 12, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermAndyGhostGhost, EVENT_GOT_LIGHT_BALL_VIOLET_CITY
	object_event 15,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodArchives1FBurnHeal, EVENT_ARCHIVES1F_ITEM1
	object_event  7,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodArchives1FXSpeed, EVENT_ARCHIVES1F_ITEM2
