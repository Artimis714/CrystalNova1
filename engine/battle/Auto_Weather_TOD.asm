
StartAutomaticBattleWeather:
	ld a, [wTimeOfDay]
	cp MORN_F
	jr z, .MornTimes

	ld a, [wTimeOfDay]
	cp DAY_F
	jr z, .DayTimes
	
	ld a, [wTimeOfDay]
	cp NITE_F
	jr z, .NightTimes

.MornTimes
	call GetAutomaticMornBattleWeather
	and a
	ret z
; get current AutomaticWeatherEffects entry
	dec a
	ld hl, AutomaticWeatherEffects
	ld bc, 5 ; size of one entry
	call AddNTimes
; [wBattleWeather] = weather
	ld a, [hli]
	ld [wBattleWeather], a
; de = animation
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
; hl = text pointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
; start weather for 255 turns
	ld a, 255
	ld [wWeatherCount], a
	push hl
	call Call_PlayBattleAnim ; uses de
	pop hl
	call StdBattleTextbox ; uses hl
	jp EmptyBattleTextbox


.DayTimes
	call GetAutomaticDayBattleWeather
	and a
	ret z
; get current AutomaticWeatherEffects entry
	dec a
	ld hl, AutomaticWeatherEffects
	ld bc, 5 ; size of one entry
	call AddNTimes
; [wBattleWeather] = weather
	ld a, [hli]
	ld [wBattleWeather], a
; de = animation
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
; hl = text pointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
; start weather for 255 turns
	ld a, 255
	ld [wWeatherCount], a
	push hl
	call Call_PlayBattleAnim ; uses de
	pop hl
	call StdBattleTextbox ; uses hl
	jp EmptyBattleTextbox


.NightTimes
	call GetAutomaticNiteBattleWeather
	and a
	ret z
; get current AutomaticWeatherEffects entry
	dec a
	ld hl, AutomaticWeatherEffects
	ld bc, 5 ; size of one entry
	call AddNTimes
; [wBattleWeather] = weather
	ld a, [hli]
	ld [wBattleWeather], a
; de = animation
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
; hl = text pointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
; start weather for 255 turns
	ld a, 255
	ld [wWeatherCount], a
	push hl
	call Call_PlayBattleAnim ; uses de
	pop hl
	call StdBattleTextbox ; uses hl
	jp EmptyBattleTextbox


GetAutomaticMornBattleWeather:
	ld hl, MornAutomaticWeatherMaps
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
.loop
	ld a, [hli] ; group
	and a
	ret z ; end
	cp b
	jr nz, .wrong_group
	ld a, [hli] ; map
	cp c
	jr nz, .wrong_map
	ld a, [hl] ; weather
	ret

.wrong_group:
	inc hl ; skip map
.wrong_map
	inc hl ; skip weather
	jr .loop


GetAutomaticDayBattleWeather:
	ld hl, DayAutomaticWeatherMaps
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
.loop
	ld a, [hli] ; group
	and a
	ret z ; end
	cp b
	jr nz, .wrong_group
	ld a, [hli] ; map
	cp c
	jr nz, .wrong_map
	ld a, [hl] ; weather
	ret

.wrong_group:
	inc hl ; skip map
.wrong_map
	inc hl ; skip weather
	jr .loop


GetAutomaticNiteBattleWeather:
	ld hl, NiteAutomaticWeatherMaps
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
.loop
	ld a, [hli] ; group
	and a
	ret z ; end
	cp b
	jr nz, .wrong_group
	ld a, [hli] ; map
	cp c
	jr nz, .wrong_map
	ld a, [hl] ; weather
	ret

.wrong_group:
	inc hl ; skip map
.wrong_map
	inc hl ; skip weather
	jr .loop

INCLUDE "data/battle/automatic_weather.asm"