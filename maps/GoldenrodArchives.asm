	object_const_def
	const GoldenrodArchives_BOULDER
	const GoldenrodArchives_GHOST_KIKYO
	const GoldenrodArchives_GHOST_VERONICA
	const GoldenrodArchives_GHOST_ERICK
	const GoldenrodArchives_GHOST_ANDY
	const GoldenrodArchives_GHOST_TYLER
	const GoldenrodArchives_GHOST_VIRGIL
	const GoldenrodArchives_GHOST_GREGG
	const GoldenrodArchives_GHOST_DALE
	const GoldenrodArchives_GHOST_GRUNTM12


GoldenrodArchives_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodArchivesBoulder:
	jumptext CeilingCollapsedText

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

TrainerCooltrainermErickGhostGhost:
	trainer COOLTRAINERM, ERICK, EVENT_BEAT_COOLTRAINERM_ERICK, CooltrainermErickGhostGhostSeenText, CooltrainermErickGhostGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermErickGhostGhostAfterBattleText
	setevent EVENT_GHOST_ERICK
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

TrainerCooltrainermTylerGhostGhost:
	trainer COOLTRAINERM, TYLER, EVENT_BEAT_COOLTRAINERM_TYLER, CooltrainermTylerGhostGhostSeenText, CooltrainermTylerGhostGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermTylerGhostGhostAfterBattleText
	setevent EVENT_GHOST_TYLER
	waitbutton
	closetext
	end

TrainerGenglemanVirgilGhost:
	opentext
	checkevent EVENT_BEAT_GENTLEMAN_VIRGIL
	iftrue .Defeated
	writetext GenglemanVirgilGhostGhostSeenText
	waitbutton
	closetext
	winlosstext GenglemanVirgilGhostGhostBeatenText, 0
	loadtrainer GENTLEMAN, VIRGIL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GENTLEMAN_VIRGIL
	opentext
	writetext GentlemanVirgilBraverytext
	promptbutton
	verbosegiveitem CLEAR_BELL
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS
	setevent EVENT_GOT_CLEAR_BELL
	clearevent EVENT_BURNEDTOWER_GHOST1
	clearevent EVENT_BURNEDTOWER_GHOST2
	writetext GentlemanVirgilClearBelltext
	waitbutton
	closetext
	end

.Defeated:
	writetext GenglemanVirgilGhostGhostAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdGreggGhost:
	trainer SUPER_NERD, GREGG, EVENT_BEAT_SUPER_NERD_GREGG, SuperNerdGreggGhostGhostSeenText, SuperNerdGreggGhostGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdGreggGhostGhostAfterBattleText
	setevent EVENT_GHOST_GREGG
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

TrainerGrunt12Ghost:
	trainer GRUNTM, GRUNTM_12, EVENT_BEAT_ROCKET_GRUNTM_12, GruntM12GhostSeenText, GruntM12GhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM12GhostAfterBattleText
	setevent EVENT_GHOST_GRUNTM12
	waitbutton
	closetext
	end

GruntM12GhostSeenText:
	text "The Resistance"
	line "lives on. Today,"

	para "tomorrow. Forever!"
	line "We are TEAM ROCKET"

	para "Surrender now or"
	line "prepare to fight!"
	done

GruntM12GhostBeatenText:
	text "But my flame has"
	line "been extinguished."
	done

GruntM12GhostAfterBattleText:
	text "I have a brother."
	line "He was stationed,"

	para "in MAHOGANY last I"
	line "heard but GIOVANNI"

	para "never told us any-"
	line "thing. Waste of"

	para "space, that use-"
	line "less leader."

	para "I'm glad my brother"
	line "wasn't in GOLDENROD"

	para "when RED's ARMY"
	line "struck."

	para "If you meet him,"
	line "let him know I hid"

	para "my wages from the"
	line "war under the last"

	para "tree by the 8th"
	line "bend. He'll know"

	para "where that is."
	line "It's not much, but"

	para "hopefully it'll be"
	line "enough for him to"

	para "start fresh. Some-"
	line "where far away."
	done

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


SuperNerdGreggGhostGhostSeenText:
	text "I never wanted"
	line "any of this to"
	cont "happen!"

	para "I'm a scholar."
	line "Why? Why us?"
	done

SuperNerdGreggGhostGhostBeatenText:
	text "War has no reason."
	done

SuperNerdGreggGhostGhostAfterBattleText:
	text "We lost, huh?"

	para "Well, that's a real"
	line "kick in the balls."

	para "My baby brother"
	line "should still live"
	cont "in the City."

	para "Assuming there's"
	line "anything left..."

	para "All I wanted, was"
	line "to provide for my"
	cont "little bro."

	para "I hope he's well."
	line "Please, look out"

	para "for him. His name"
	line "is TIMMY."
	done

GenglemanVirgilGhostGhostSeenText:
	text "I will defend the"
	line "ARCHIVES until my"
	cont "last breath!"
	done

GenglemanVirgilGhostGhostBeatenText:
	text "They may have"
	line "killed us, but"

	para "still they have"
	line "failed."
	done

GenglemanVirgilGhostGhostAfterBattleText:
	text "I still have a"
	line "family out in."
	cont "CIANWOOD."

	para "My wife and daugh-"
	line "ters. Were kept"

	para "away from most of"
	line "the horrors."

	para "May the FOREST"
	line "PROTECTOR watch"

	para "Over them, and may"
	line "they forget about"
	cont "me."

	para "My hands are just"
	line "as red as any"
	cont "KANTO general's."

	para "If you ever meet"
	line "them, all I ask"

	para "is that you tell"
	line "them that I was"

	para "thinking of them"
	line "when the end came."
	done

GentlemanVirgilBraverytext:
	text "You... are brave."
	line "But more than"
	cont "brave. You are.."

	para "kind. You have"
	line "shown our restless"
	cont "souls kindness."

	para "and for this, we"
	line "thank you."

	para "Three years ago."
	line "I fought at GOLD-"
	cont "ENROD's last stand"

	para "They destroyed our"
	line "ARCHIVES, and tho-"
	cont "usands of years of"
	cont "our history."

	para "They were looking"
	line "for something."

	para "They were looking"
	line "for a treasure,"

	para "which I now best-"
	line "ow upon you."
	done

GentlemanVirgilClearBelltext:
	text "This is the CLEAR"
	line "BELL, and it's the"

	para "key to unlock many"
	line "of JHOTO's secrets."

	para "Begin with the TIN"
	line "TOWER."

	para "You have proven"
	line "yourself worthy of"
	cont "the bell's trials."

	para "I wish you luck."
	done

CooltrainermTylerGhostGhostSeenText:
	text "After all these"
	line "years. It's finally"
	cont "come to this."

	para "RED's Army."
	line "Blood for blood."

	para "When will it stop?"
	done

CooltrainermTylerGhostGhostBeatenText:
	text "My death will be"
	line "worthwhile, if my"

	para "son can know a"
	line "world without war."
	done

CooltrainermTylerGhostGhostAfterBattleText:
	text "My father was a"
	line "young man, when"
	cont "the war began."

	para "He watched them"
	line "burn the BRASS"
	cont "TOWER."

	para "I wanted to be"
	line "a healer."

	para "Ashes to ashes."
	line "It's the only world"
	cont "I've ever known."

	para "It's the world I"
	line "brought my son"
	cont "into."

	para "It was bad enough"
	line "that my wife died"
	
	para "due to complic-"
	line "ations with the"
	cont "birth."

	para "I want my son to"
	line "know more than"

	para "the violence and"
	line "anger of the war."

	para "Please tell him"
	line "I love him."
	done

CooltrainermAndyGhostGhostSeenText:
	text "JACKSON! Hurry!"
	line "The window is low"
	cont "enough!"

	para "You can jump."
	line "get out son!"

	para "Save yourself!"
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


CooltrainermErickGhostGhostSeenText:
	text "NO! Please! I don't"
	line "want to die!"
	done

CooltrainermErickGhostGhostBeatenText:
	text "No.. No.. Forest"
	line "Protector, save me"
	cont "Please!"
	done

CooltrainermErickGhostGhostAfterBattleText:
	text "My... my family."
	line "I have a little"
	cont "sister, and a"
	cont "father."

	para "Do you know if..."
	line "they survived the"
	cont "war?"

	para "Please tell them"
	line "I was brave."

	para "I won't be able to"
	line "rest, if they know"
	cont "I was a coward."

	para "If they're still"
	line "alive, you might"

	para "find them in my"
	line "uncle's old house"
	cont "in OLIVINE."

	para "please. Tell them"
	line "I did my best."

	para "Tell them, I love"
	cont "them."
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

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You've met her?"
	line "I'm glad to hear"

	para "she became one of"
	line "the Kimono Girls."

	para "Tell her..."
	line "Tell her, I'm"
	cont "proud of her."
	done

CeilingCollapsedText:
	text "This boulder is"
	line "wedged beneath too"
	
	para "much rubble to"
	line "move!"
	done

GoldenrodArchives_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 15, GOLDENROD_UNDERGROUND_WAREHOUSE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchivesBoulder, -1
	object_event 15,  7, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerKimonoGirlKikyoGhost, EVENT_GOT_BRIGHTPOWDER
	object_event  4,  6, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyVeronicaGhost, EVENT_GOT_LIGHT_BALL_VIOLET_CITY
	object_event 16, 13, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermErickGhostGhost, EVENT_GOT_ITEMFINDER
	object_event  5,  6, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermAndyGhostGhost, EVENT_GOT_LIGHT_BALL_VIOLET_CITY
	object_event  7,  4, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermTylerGhostGhost, EVENT_GOT_LUCKY_EGG_ECRUTEAK
	object_event  5,  2, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerGenglemanVirgilGhost, EVENT_GOT_OLD_AMBER_CIANWOOD
	object_event 10,  4, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSuperNerdGreggGhost, EVENT_GOT_PROTOTYPE_UPGRADE
	object_event 17, 12, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCamperDaleGhost, EVENT_SPOKE_TO_DALES_DAD
	object_event 15, 14, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGrunt12Ghost, EVENT_BABYBRORESTS
