MACRO unown_set
rept _NARG
	db UNOWN_\1
	shift
endr
	db -1
ENDM

UnlockedUnownLetterSets:
; entries correspond to UNLOCKED_UNOWNS_* constants
	table_width 2, UnlockedUnownLetterSets
	dw .Set_A_K ; UNLOCKED_UNOWNS_A_TO_K_F
	dw .Set_L_R ; UNLOCKED_UNOWNS_L_TO_R_F
	dw .Set_S_W ; UNLOCKED_UNOWNS_S_TO_W_F
	dw .Set_X_Z ; UNLOCKED_UNOWNS_X_TO_Z_F
	assert_table_length NUM_UNLOCKED_UNOWN_SETS

.Set_A_K:
	unown_set A, B, C, D, E, F, G, 
.Set_L_R:
	unown_set H, I, J, K, L, M, N, 
.Set_S_W:
	unown_set O, P, Q, R, S, T, U, 
.Set_X_Z:
	unown_set V, W, X, Y, Z
