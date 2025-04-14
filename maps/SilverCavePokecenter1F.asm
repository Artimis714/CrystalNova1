	object_const_def
	const SILVERCAVEPOKECENTER1F_NURSE
	const SILVERCAVEPOKECENTER1F_GRANNY

SilverCavePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCavePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

SilverCavePokecenter1FGrannyScript:
	jumptextfaceplayer SilverCavePokecenter1FGrannyText

SilverCavePokecenter1FGrannyText:
	text "Trainers who seek"
	line "power climb MT."

	para "SILVER despite its"
	line "many dangers…"

	para "With their trusted"
	line "#MON, they must"

	para "feel they can go"
	line "anywhere…"

	para "..."
	line "..."

	para "Yes, child I was"
	line "once a trainer"
	cont "like you."

	para "My name is AGATHA"
	line "and I was once a"

	para "member of the"
	line "ELITE FOUR."

	para "..."
	line "..."

	para "AGATHA: I rose"
	line "to fame after I"

	para "bested that old"
	line "coot PROF.OAK!"

	para "I came here"
	line "on the trail of"

	para "one of his"
	line "students, RED."

	para "..."
	line "..."

	para "AGATHA: Yes"
	line "child."
	cont "RED lives."

	para "And I believe"
	line "He is hiding"

	para "in THE SACRED"
	line "SILVER MTS."
	done 

SilverCavePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  4,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_AGATHA, SPRITEMOVEDATA_STANDING_LEFT, 2, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FGrannyScript, EVENT_ASK_YOUR_MOM_ABOUT_RED
