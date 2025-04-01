	object_const_def
	const VIRIDIANMART_CLERK
	const VIRIDIANMART_LASS
	const VIRIDIANMART_COOLTRAINER_M

ViridianMart_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianMartClerkScript:
	opentext
	checkevent EVENT_VIRIDIAN_ALERT
	iftrue .NoServiceToday
	checkevent EVENT_GOT_TM07_ZAP_CANNON
	iftrue .AwesomeMart
	pokemart MARTTYPE_STANDARD, MART_VIRIDIAN
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
	clearevent EVENT_VIRIDIAN_ALERT
	setevent EVENT_BEAT_CITY_POLICE_VIRIDIAN
	farwritetext MyConcernWasMisplaced
	checkevent EVENT_GOT_TM07_ZAP_CANNON
	iftrue .AwesomeMart
	pokemart MARTTYPE_STANDARD, MART_VIRIDIAN
	closetext
	end

.AwesomeMart:
	pokemart MARTTYPE_STANDARD, MART_VIRIDIAN2
	closetext
	end

ViridianMartLassScript:
	jumptextfaceplayer ViridianMartLassText

ViridianMartCooltrainerMScript:
	jumptextfaceplayer ViridianMartCooltrainerMText

ViridianMartLassText:
	text "The GYM LEADER"
	line "here is totally"
	cont "cool."
	done

ViridianMartCooltrainerMText:
	text "Have you been to"
	line "CINNABAR?"

	para "It's an island way"
	line "south of here."

	para "My uncle told me"
	line "the rebels found"

	para "a way to use FIRE"
	line "#MON to make"

	para "the volcano erupt"
	line "near the end of"
	cont "the WAR!!"
	done

ViridianMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 4
	warp_event  3,  7, VIRIDIAN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartClerkScript, -1
	object_event  7,  2, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartLassScript, -1
	object_event  1,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartCooltrainerMScript, -1
