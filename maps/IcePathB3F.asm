	object_const_def
	const ICEPATHB3F_POKE_BALL
	const ICEPATHB3F_ROCK
	const ICEPATHB3F_BOARDER_SCOTTY

IcePathB3F_MapScripts:
	def_scene_scripts

	def_callbacks

IcePathB3FNevermeltice:
	itemball NEVERMELTICE

IcePathB3FRock:
	jumpstd SmashRockScript

BoarderScotty:
	trainer BOARDER, SCOTTY, EVENT_BEAT_BOARDER_SCOTTY, BoarderScottySeenText, BoarderScottyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderScottyAfterBattleText
	waitbutton
	closetext
	end

BoarderScottySeenText:
	text "Hey check this"
	line "out!"
	done

BoarderScottyBeatenText:
	text "I thought it was"
	line "cool..."
	done

BoarderScottyAfterBattleText:
	text "That's not really"
	line "the vibe down here"
	cont "kid."

	para "Maybe learn to"
	line "take it easy."
	done

IcePathB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, ICE_PATH_B2F_MAHOGANY_SIDE, 2
	warp_event 15,  5, ICE_PATH_B2F_BLACKTHORN_SIDE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePathB3FNevermeltice, EVENT_ICE_PATH_B3F_NEVERMELTICE
	object_event  6,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, IcePathB3FRock, -1
	object_event 10,  2, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, BoarderScotty, -1
