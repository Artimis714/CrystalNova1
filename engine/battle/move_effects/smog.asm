BattleCommand_StartSmog:
; startsmog

	ld a, [wBattleWeather]
	cp WEATHER_SMOG
	jr z, .failed

	ld a, WEATHER_SMOG
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, ItStartedToSmogText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
