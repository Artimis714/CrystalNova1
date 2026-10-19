	object_const_def
	const VIRIDIANFOREST_BUG_CATCHER1
	const VIRIDIANFOREST_BUG_CATCHER2
	const VIRIDIANFOREST_BUG_CATCHER3
	const VIRIDIANFOREST_POKE_BALL1
	const VIRIDIANFOREST_POKE_BALL2
	const VIRIDIANFOREST_POKE_BALL3
	const VIRIDIANFOREST_POKE_BALL4
	const VIRIDIANFOREST_FRUIT_TREE

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherRob:
	trainer BUG_CATCHER, ROB, EVENT_BEAT_BUG_CATCHER_ROB, BugCatcherRobSeenText, BugCatcherRobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherRobAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherEd:
	trainer BUG_CATCHER, ED, EVENT_BEAT_BUG_CATCHER_ED, BugCatcherEdSeenText, BugCatcherEdBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEdAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherDoug:
	trainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDougAfterBattleText
	waitbutton
	closetext
	end

ViridianForestSign:
	jumptext ViridianForestSignText

Route2DireHit:
	itemball X_EVADE

Route2MaxPotion:
	itemball MAX_REVIVE

Route2Carbos:
	itemball CARBOS

Route2Elixer:
	itemball ELIXER, 3

Route2FruitTree:
	fruittree FRUITTREE_ROUTE_2

Route2HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_2_HIDDEN_MAX_ETHER

Route2HiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ROUTE_2_HIDDEN_FULL_HEAL

Route2HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_2_HIDDEN_FULL_RESTORE

Route2HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_2_HIDDEN_REVIVE

BugCatcherRobSeenText:
	text "My bug #MON are"
	line "tough. Prepare to"
	cont "lose!"
	done

BugCatcherRobBeatenText:
	text "I was whipped…"
	done

BugCatcherRobAfterBattleText:
	text "I'm going to look"
	line "for stronger bug"
	cont "#MON."
	done

BugCatcherEdSeenText:
	text "If you walk in"
	line "tall grass wearing"

	para "shorts, do you get"
	line "nicks and cuts?"
	done

BugCatcherEdBeatenText:
	text "Ouch, ouch, ouch!"
	done

BugCatcherEdAfterBattleText:
	text "They'll really"
	line "sting when you"
	cont "take a bath."
	done

BugCatcherDougSeenText:
	text "Why don't girls"
	line "like bug #MON?"

	para "..."
	line "..."

	para "A stereotype?"
	done

BugCatcherDougBeatenText:
	text "No good!"
	done

ViridianForestSignText:
	text "VIRIDIAN FOREST"
	done

BugCatcherDougAfterBattleText:
	text "Bug #MON squish"
	line "like plush toys"

	para "when you squeeze"
	line "their bellies."

	para "I love how they"
	line "feel!"

	para "..."
	line "..."

	para "Huh, You're right"
	line "I probably am"
	cont "hurting them."
	done


ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 32, VIRIDIAN_CITYGATE, 3
	warp_event 33, 33, VIRIDIAN_CITYGATE, 4
	warp_event  5,  5, ROUTE_2_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 29,  8, BGEVENT_ITEM, Route2HiddenMaxEther
	bg_event 33, 23, BGEVENT_ITEM, Route2HiddenFullHeal
	bg_event  4, 14, BGEVENT_ITEM, Route2HiddenFullRestore
	bg_event  6, 34, BGEVENT_ITEM, Route2HiddenRevive
	bg_event 15, 11, BGEVENT_READ, ViridianForestSign

	def_object_events
	object_event 21, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherRob, -1
	object_event 29, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherEd, -1
	object_event 12, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDoug, -1
	object_event  9, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2DireHit, EVENT_ROUTE_2_DIRE_HIT
	object_event 26,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2MaxPotion, EVENT_ROUTE_2_MAX_POTION
	object_event 14, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Carbos, EVENT_ROUTE_2_CARBOS
	object_event  5, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Elixer, EVENT_ROUTE_2_ELIXER
	object_event  7, 31, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2FruitTree, -1
