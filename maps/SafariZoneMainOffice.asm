	object_const_def
	const FUCHSIACAFE_WAITOR
	const FUCHSIACAFE_SAILOR
	const FUCHSIACAFE_TEACHER

SafariZoneMainOffice_MapScripts:
	def_scene_scripts

	def_callbacks

FushiaFoodCourtScript:
	faceplayer
	opentext
	checkevent EVENT_FUCHSIA_ALERT
	iftrue .NoServiceToday
	pokemart MARTTYPE_FOODCOURT, MART_FUCHSIA_FOOD
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
	clearevent EVENT_FUCHSIA_ALERT
	setevent EVENT_BEAT_CITY_POLICE_FUCHSIA
	farwritetext MyConcernWasMisplaced
	pokemart MARTTYPE_FOODCOURT, MART_FUCHSIA_FOOD
	closetext
	end

FushiaFoodCourtFisher1:
	jumptextfaceplayer FushiaFoodCourtFisher1Text

FushiaFoodCourtTeacher:
	jumptextfaceplayer FushiaFoodCourtTeacherText

FushiaFoodCourtFisher1Text:
	text "This food isn't"
	line "half bad!"

	para "And my date is"
	line "pretty hot."

	para "I'm totally gonna"
	line "get some tonight."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I shouldn't tell a"
	line "kid what that"
	cont "means."
	done

FushiaFoodCourtTeacherText:
	text "Do you mind?"
	line "We're on our first"
	cont "date!"

	para "He's so hot!"
	line "Seriously, Look at"
	cont "his forearms!"

	para "He keeps telling"
	line "me stories about"

	para "his travels abroad"
	line "but I keep looking"

	para "at those forearms"
	line "and I wish he'd"

	para "bend me over this"
	line "table... and..."

	para "Why am I telling"
	line "you this?"
	done

SafariZoneMainOffice_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 2
	warp_event  3,  7, FUCHSIA_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FushiaFoodCourtScript, -1
	object_event  3,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FushiaFoodCourtFisher1, -1
	object_event  4,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FushiaFoodCourtTeacher, -1