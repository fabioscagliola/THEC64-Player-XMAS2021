100 PRINT CHR$(147)
110 PRINT "xmas 2021"
120 PRINT "santa claus is comin' to town"
130 PRINT "by j. fred coots and haven gillespie"

140 REM **** PLAYER ****

150 S = 54272
160 FOR T = 0 TO 24 : POKE S + T, 0 : NEXT
170 POKE S + 24, 15
180 TM = 1975
190 WF = 16
200 A = 2 ^ (1 / 12)
210 POKE S + 5,  3 * 16 + 7
220 POKE S + 6, 10 * 16 + 9
230 READ A$, LT
240 IF A$ = "end" THEN END
250 NO$ = LEFT$(A$, 1)
260 SH$ = MID$(A$, 2, 1)
270 OCT = VAL(MID$(A$, 3, 1))
280 N = 2 * (ASC(NO$) - 65) - 1
290 IF NO$ = "p" THEN DR = INT(TM / LT) : GOTO 450
300 IF NO$ = "f" THEN N = N - 1 : GOTO 340
310 IF NO$ = "g" THEN N = N - 1 : GOTO 340
320 IF NO$ = "a" THEN N = 12 : GOTO 340
330 IF NO$ = "b" THEN N = 14
340 IF SH$ = "#" THEN N = N + 1
350 FS = INT((466 * A ^ N) * 2 ^ OCT)
360 FH = INT(FS / 256)
370 FL = FS - 256 * FH
380 POKE S, FL
390 POKE S + 1, FH
400 DR = INT(TM / LT)
410 POKE S + 4, WF + 1
420 FOR T = 1 TO DR : NEXT
430 POKE S + 4, WF
440 GOTO 230
450 FOR T = 1 TO DR : NEXT
460 GOTO 230

470 REM **** SONG DATA ****

480 REM
490 REM Duration
500 REM
510 REM 1      4
520 REM 1/2    8
530 REM 1/2.   5
540 REM 1/4   16
550 REM 1/4.  11
560 REM 1/8   32
570 REM 1/8.  21
580 REM

590 DATA "p  ",  8, "p  ", 16, "g 3", 16
600 DATA "e 3", 32, "f 3", 32, "g 3", 16, "g 3", 11, "g 3", 32
610 DATA "a 3", 32, "b 3", 32, "c 4", 16, "c 4",  8
620 DATA "e 3", 32, "f 3", 32, "g 3", 16, "g 3", 16, "g 3", 16
630 DATA "a 3", 32, "g 3", 32, "f 3", 16, "f 3",  8
640 DATA "e 3", 16, "g 3", 16, "c 3", 16, "e 3", 16
650 DATA "d 3", 16, "f 3",  8, "b 2", 16
660 DATA "g 3",  5, "p  ", 16

670 DATA "p  ",  8, "p  ", 16, "p  ", 32, "g 3", 32
680 DATA "e 3", 32, "f 3", 32, "g 3", 16, "g 3", 11, "g 3", 32
690 DATA "a 3", 32, "b 3", 32, "c 4", 16, "c 4",  8
700 DATA "e 3", 32, "f 3", 32, "g 3", 16, "g 3", 16, "g 3", 16
710 DATA "a 3", 32, "g 3", 32, "f 3", 16, "f 3",  8
720 DATA "e 3", 16, "g 3", 16, "c 3", 16, "e 3", 16
730 DATA "d 3", 16, "f 3",  8, "b 2", 16
740 DATA "c 3",  4

750 DATA "p  ",  8, "p  ", 16, "c 4", 16
760 DATA "d 4", 16, "c 4", 16, "b 3", 16, "c 4", 16
770 DATA "a 3", 16, "a 3",  8, "c 4", 16
780 DATA "d 4", 16, "c 4", 16, "b 3", 16, "c 4", 16
790 DATA "a 3",  5, "d 4", 16
800 DATA "e 4", 16, "d 4", 16, "c#4", 16, "d 4", 16
810 DATA "b 3", 16, "b 3", 16, "b 3", 16, "b 3", 32, "c 4", 32
820 DATA "d 4", 16, "c 4", 16, "b 3", 16, "a 3", 16
830 DATA "g 3", 16, "p  ", 16, "g 3", 11, "f 3", 32

840 DATA "e 3", 32, "f 3", 32, "g 3", 16, "g 3", 11, "g 3", 32
850 DATA "a 3", 32, "b 3", 32, "c 4", 16, "c 4",  8
860 DATA "e 3", 32, "f 3", 32, "g 3", 16, "g 3", 16, "g 3", 16
870 DATA "a 3", 32, "g 3", 32, "f 3", 16, "f 3",  8
880 DATA "e 3", 16, "g 3", 16, "c 3", 16, "e 3", 16
890 DATA "d 3", 16, "f 3",  8, "b 2", 16
900 DATA "c 3",  4

910 DATA "p  ",  8, "p  ", 16, "p  ", 32, "g 3", 32
920 DATA "e 3", 32, "f 3", 32, "g 3", 16, "g 3", 11, "g 3", 32
930 DATA "a 3", 32, "b 3", 32, "c 4", 16, "c 4",  8
940 DATA "e 3", 32, "f 3", 32, "g 3", 16, "g 3", 16, "g 3", 16
950 DATA "a 3", 32, "g 3", 32, "f 3", 16, "f 3",  8
960 DATA "e 3", 16, "g 3", 16, "c 3", 16, "e 3", 16
970 DATA "d 3", 16, "f 3",  8, "d 4", 16
980 DATA "c 4",  4

990 DATA "end",  0

