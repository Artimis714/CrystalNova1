BattleCommand_WeatherBall:
    ld a, [wBattleWeather]
    and a
    ret z
    ld b, WATER
    dec a
    jr z, .changetype
    ld b, FIRE
    dec a 
    jr z, .changetype
    ld b, ROCK
    dec a 
    jr z, .changetype
    ld b, ICE
    dec a 
    jr z, .changetype
    ld b, POISON
    dec a 
    jp nz, BattleCommand_DamageStats

.changetype
    xor a
    ld a, b
    push af
    ld a, BATTLE_VARS_MOVE_TYPE
    call GetBattleVarAddr
    pop af
    ld [hl], a
    jp BattleCommand_DamageStats
