	object_const_def
	const VERMILIONMART_CLERK
	const VERMILIONMART_SUPER_NERD
	const VERMILIONMART_BEAUTY

VermilionMart_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMartClerkScript:
	opentext
	checkevent EVENT_VERMILION_ALERT
	iftrue .NoServiceToday
	pokemart MARTTYPE_STANDARD, MART_VERMILION
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
	clearevent EVENT_VERMILION_ALERT
	setevent EVENT_BEAT_CITY_POLICE_VERMILION
	farwritetext MyConcernWasMisplaced
	pokemart MARTTYPE_STANDARD, MART_VERMILION
	closetext
	end

VermilionMartSuperNerdScript:
	jumptextfaceplayer VermilionMartSuperNerdText

VermilionMartBeautyScript:
	jumptextfaceplayer VermilionMartBeautyText

VermilionMartSuperNerdText:
	text "TEAM ROCKET is no"
	line "longer in KANTO."

	para "That alone makes"
	line "me happy."

	para "We finally got"
	line "rid of that JOHTO"
	cont "scum!"
	done

VermilionMartBeautyText:
	text "I'm thinking about"
	line "going shopping in"
	cont "CELADON."

	para "Their selection is"
	line "much better."
	done

VermilionMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 5
	warp_event  3,  7, VERMILION_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMartClerkScript, -1
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionMartSuperNerdScript, -1
	object_event  8,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionMartBeautyScript, -1
