GivePokerusAndConvertBerries:
	call ConvertBerriesToBerryJuice
	ld hl, wPartyMon1PokerusStatus
	ld a, [wPartyCount]
	ld b, a
	ld de, PARTYMON_STRUCT_LENGTH
; Check to see if any of your Pokemon already has Pokerus.
; If so, sample its spread through your party.
; This means that you cannot get Pokerus de novo while
; a party member has an active infection.
.loopMons
	ld a, [hl]
	and $f
	jr nz, .TrySpreadPokerus
	add hl, de
	dec b
	jr nz, .loopMons

; 1/256 chance of contracting Pokerus naturally.
	call Random
	ldh a, [hRandomAdd]
	and a
	ret nz
	ld a, [wPartyCount]
	ld b, a
.randomMonSelectLoop
	call Random
	and $7
	cp b
	jr nc, .randomMonSelectLoop
	ld hl, wPartyMon1PokerusStatus
	call GetPartyLocation ; get pokerus byte of random mon
	ld a, [hl]
	and $f0
	ret nz ; if it already has pokerus, do nothing
.randomPokerusLoop ; Simultaneously sample the strain and duration
	call Random
	and a
	jr z, .randomPokerusLoop
	ld b, a
	and $f0
	jr z, .load_pkrs
	ld a, b
	and $7
	inc a
.load_pkrs
	ld b, a ; this should come before the label
	swap b
	and $3
	inc a
	add b
	ld [hl], a
	ret

.TrySpreadPokerus:
	call Random
	cp 33 percent + 1
	ret nc ; 1/3 chance

	ld a, [wPartyCount]
	cp 1
	ret z ; only one mon, nothing to do

	ld c, [hl]
	ld a, b
	cp 2
	jr c, .checkPreviousMonsLoop ; no more mons after this one, go backwards

	call Random
	cp 50 percent + 1
	jr c, .checkPreviousMonsLoop ; 1/2 chance, go backwards
.checkFollowingMonsLoop
	add hl, de
	ld a, [hl]
	and a
	jr z, .infectMon
	ld c, a
	and $3
	ret z ; if mon has cured pokerus, stop searching
	dec b ; go on to next mon
	ld a, b
	cp 1
	jr nz, .checkFollowingMonsLoop ; no more mons left
	ret

.checkPreviousMonsLoop
	ld a, [wPartyCount]
	cp b
	ret z ; no more mons
	ld a, l
	sub e
	ld l, a
	ld a, h
	sbc d
	ld h, a
	ld a, [hl]
	and a
	jr z, .infectMon
	ld c, a
	and $3
	ret z ; if mon has cured pokerus, stop searching
	inc b ; go on to next mon
	jr .checkPreviousMonsLoop

.infectMon
	ld a, c
	and $f0
	ld b, a
	ld a, c
	swap a
	and $3
	inc a
	add b
	ld [hl], a
	ret

ConvertBerriesToBerryJuice:
	ld a, [wPartyCount]
	and a
	ret z
	ld b, a
	ld hl, wPartyMons

.partyMonLoop
	ld a, [hl]
	cp SHUCKLE
	jr nz, .nextMon

	push hl
	ld bc, MON_ITEM
	add hl, bc
	ld a, [hl]
	pop hl

	cp BERRY
	jr z, .BerryJuice
	cp SLVR_BERRY
	jr z, .SilverJuice
	cp GOLD_BERRY
	jr z, .GoldJuice
	jr .nextMon

.BerryJuice
	ld a, BERRY_JUICE
	jr .SetJuice

.SilverJuice
	ld a, SLVR_B_JUICE
	jr .SetJuice

.GoldJuice
	ld a, GOLD_B_JUICE

.SetJuice
	push hl
	ld bc, MON_ITEM
	add hl, bc
	ld [hl], a
	pop hl
	ret

.nextMon
	ld de, PARTYMON_STRUCT_LENGTH
	add hl, de
	dec b
	jr nz, .partyMonLoop
	ret
