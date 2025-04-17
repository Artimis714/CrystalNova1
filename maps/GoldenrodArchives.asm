	object_const_def
	const GoldenrodArchives_BOULDER
	const GoldenrodArchives_GHOST_TYLER
	const GoldenrodArchives_GHOST_ERIC
	const GoldenrodArchives_GHOST_GREGG
	const GoldenrodArchives_GHOST_GRUNTM12


GoldenrodArchives_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodArchivesBoulder:
	jumpstd StrengthBoulderScript


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

GoldenrodArchives_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 15, GOLDENROD_UNDERGROUND_WAREHOUSE, 2
	warp_event  7, 11, GOLDENROD_ARCHIVES1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchivesBoulder, -1
	object_event  7,  4, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermTylerGhostGhost, EVENT_GOT_LUCKY_EGG_ECRUTEAK
	object_event  5,  2, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermErickGhostGhost, EVENT_GOT_ITEMFINDER
	object_event 10,  4, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSuperNerdGreggGhost, EVENT_GOT_PROTOTYPE_UPGRADE
	object_event 15, 14, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGrunt12Ghost, EVENT_BABYBRORESTS
