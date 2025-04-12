	object_const_def
	const SILVERCAVEOUTSIDE_OAK

SilverCaveOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SilverCaveOutsideFlypointCallback

SilverCaveOutsideFlypointCallback:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	endcallback

MtSilverPokecenterSign:
	jumpstd PokecenterSignScript

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

SilverOak:
	trainer POKEMON_PROF, OAK, EVENT_BEAT_PROF_OAK, SilverOakSeenText, SilverOakBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SilverOakAfterBattleText
	waitbutton
	closetext
	end

SilverOakSeenText:
	text "OAK: Ah, <PLAY_G>!"
	line "Good to see you."

	para "..."
	line "..."

	para "Why yes, I do"
	line "believe your"
	cont "father is here."

	para "..."
	line "..."

	para "AGATHA, that old"
	line "bag of bones is"
	cont "searching for him."

	para "..."
	line "..."

	para "I think it's time"
	line "I gave you a real,"
	cont "test."
	done

SilverOakBeatenText:
	text "Well done! I see"
	line "why ELM speaks so"
	cont "highly of you!"
	done

SilverOakAfterBattleText:
	text "AGATHA defeated me"
	line "when I was not"

	para "much older than"
	line "you are now."

	para "..."
	line "..."

	para "She became one of"
	line "the ELITE FOUR,"

	para "and I followed my"
	line "true passion."

	para "Research!"
	line "AHAHA!"

	para "But I had plenty"
	line "of adventures."

	para "In my youth, I"
	line "travelled to JOHTO"

	para "where I had an"
	line "encounter in ILEX"
	cont "FOREST."

	para "..."
	line "..."

	para "Yes, the FOREST"
	line "PROTECTOR."

	para "I suspect that"
	line "is the key to"

	para "unlock many of"
	line "JOHTO's many"
	cont "secrets."

	para "..."
	line "..."

	para "Maybe so."
	done


MtSilverSignText:
	text "The Sacred SILVER"
	line "MOUNTAINS."
	done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	def_coord_events

	def_bg_events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  9, 25, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	def_object_events
	object_event 23, 22, SPRITE_OAK, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, SilverOak, EVENT_OAK_IN_MT_SILVER
