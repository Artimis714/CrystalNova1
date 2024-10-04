	object_const_def
	const SAFFRONMART_CLERK
	const SAFFRONMART_COOLTRAINER_M
	const SAFFRONMART_COOLTRAINER_F

SaffronMart_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronMartClerkScript:
	opentext
	checkevent EVENT_SAFFRON_ALERT
	iftrue .NoServiceToday
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .SleepyMart
	pokemart MARTTYPE_STANDARD, MART_SAFFRON
	closetext
	end

.NoServiceToday:
	checkitem KANTO_PAPERS
	iftrue .SorryAboutThat
	farwritetext MartUnderLockDown
	waitbutton
	closetext
	end

.SorryAboutThat:
	clearevent EVENT_SAFFRON_ALERT
	farwritetext MyConcernWasMisplaced
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .SleepyMart
	pokemart MARTTYPE_STANDARD, MART_SAFFRON
	closetext
	end

.SleepyMart:
	pokemart MARTTYPE_STANDARD, MART_SAFFRON2
	closetext
	end


SaffronMartCooltrainerMScript:
	jumptextfaceplayer SaffronMartCooltrainerMText

SaffronMartCooltrainerFScript:
	jumptextfaceplayer SaffronMartCooltrainerFText

SaffronMartCooltrainerMText:
	text "There used to"
	line "be a RADIO TOWER"
	cont "in LAVENDER."

	para "..."
	line "..."

	para "Ghosts?"
	line "Kid there's no"
	cont "such thing as"
	cont "ghosts."

	para "..."
	line "..."

	para "You've met some?"
	line "AHAHA!!! Yeah,"
	cont "right!"
	done

SaffronMartCooltrainerFText:
	text "I want to become"
	line "stronger, but I'm"
	cont "not good yet…"

	para "Could you show me"
	line "how sometime?"

	para "..."
	line "..."

	para "My number is"
	line "8675039..."

	para "No really."
	line "It is! I swear!"

	para "..."

	para "You're not gonna"
	line "call me."
	done

SaffronMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 3
	warp_event  3,  7, SAFFRON_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMartClerkScript, -1
	object_event  7,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronMartCooltrainerMScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronMartCooltrainerFScript, -1
