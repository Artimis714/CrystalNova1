	object_const_def
	const ICEPATHB2FBLACKTHORNSIDE_POKE_BALL
	const ICEPATHB2FBLACKTHORNSIDE_BOARDER_TORSTEIN

IcePathB2FBlackthornSide_MapScripts:
	def_scene_scripts

	def_callbacks

IcePathB2FBlackthornSideTMRest:
	itemball TM_REST

IcePathB2FBlackthornSideHiddenIceHeal:
	hiddenitem ICE_HEAL, EVENT_ICE_PATH_B2F_BLACKTHORN_SIDE_HIDDEN_ICE_HEAL

BoarderTorstein:
	trainer BOARDER, TORSTEIN, EVENT_BEAT_BOARDER_TORSTEIN, BoarderTorsteinSeenText, BoarderTorsteinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderTorsteinAfterBattleText
	waitbutton
	closetext
	end

BoarderTorsteinSeenText:
	text "This is sick,"
	line "braugh!"
	done

BoarderTorsteinBeatenText:
	text "Gnarly!"
	done

BoarderTorsteinAfterBattleText:
	text "With moves like"
	line "that you could be"
	cont "JOHTO CHAMP!"

	para "..."
	line "..."

	para "Do you think you'd"
	line "go for it?"

	para "..."
	line "..."

	para "Righteous, Braugh!"
	done

IcePathB2FBlackthornSide_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, ICE_PATH_B1F, 8
	warp_event  3,  3, ICE_PATH_B3F, 2

	def_coord_events

	def_bg_events
	bg_event  2, 10, BGEVENT_ITEM, IcePathB2FBlackthornSideHiddenIceHeal

	def_object_events
	object_event  8, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_ITEMBALL, 0, IcePathB2FBlackthornSideTMRest, EVENT_ICE_PATH_B2F_BLACKTHORN_SIDE_TM_REST
	object_event  5,  2, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, BoarderTorstein, -1
