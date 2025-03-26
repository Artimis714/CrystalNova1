	object_const_def
	const ICEPATH1F_POKE_BALL1
	const ICEPATH1F_POKE_BALL2
	const ICEPATH1F_POKE_BALL3
	const ICEPATH1F_BOARDER_ANTON
	const ICEPATH1F_SKIER_VRENI
	const ICEPATH1F_SKIER_JANICA

IcePath1F_MapScripts:
	def_scene_scripts

	def_callbacks

IcePath1FHMWaterfall:
	itemball HM_WATERFALL

IcePath1FPPUp:
	itemball PP_UP, 2

IcePath1FProtein:
	itemball PROTEIN

BoarderAnton:
	trainer BOARDER, ANTON, EVENT_BEAT_BOARDER_ANTON, BoarderAntonSeenText, BoarderAntonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderAntonAfterBattleText
	waitbutton
	closetext
	end

SkierVreni:
	trainer SKIER, VRENI, EVENT_BEAT_SKIER_VRENI, SkierVreniSeenText, SkierVreniBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierVreniAfterBattleText
	waitbutton
	closetext
	end

SkierJanica:
	trainer SKIER, JANICA, EVENT_BEAT_SKIER_JANICA, SkierJanicaSeenText, SkierJanicaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierJanicaAfterBattleText
	waitbutton
	closetext
	end

BoarderAntonSeenText:
	text "Woah! This place"
	line "is huge!"
	done

BoarderAntonBeatenText:
	text "Wiped out!"
	done

BoarderAntonAfterBattleText:
	text "You've got crazy"
	line "skills!"
	done

SkierVreniSeenText:
	text "You're not dressed"
	line "for the weather."
	done

SkierVreniBeatenText:
	text "At least I'm"
	line "dressed better!"
	done

SkierVreniAfterBattleText:
	text "Humph, you don't"
	line "even have boots!"
	done

SkierJanicaSeenText:
	text "We're almost to"
	line "BLACKTHORN."

	para "I can feel it."
	done

SkierJanicaBeatenText:
	text "Damn you're strong."
	done

SkierJanicaAfterBattleText:
	text "..."
	line "..."

	para "Oh, my ARTICUNO?"
	line "I got her out in"
	cont "the WHIRL ISLANDS."
	done

IcePath1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 19, ROUTE_44, 1
	warp_event 36, 27, BLACKTHORN_CITY, 7
	warp_event 37,  5, ICE_PATH_B1F, 1
	warp_event 37, 13, ICE_PATH_B1F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 31,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_ITEMBALL, 0, IcePath1FHMWaterfall, EVENT_GOT_HM07_WATERFALL
	object_event 32, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FPPUp, EVENT_ICE_PATH_1F_PP_UP
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FProtein, EVENT_ICE_PATH_1F_PROTEIN
	object_event 29, 10, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, BoarderAnton, -1
	object_event 33,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, SkierVreni, -1
	object_event 34, 13, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 3, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, SkierJanica, -1
