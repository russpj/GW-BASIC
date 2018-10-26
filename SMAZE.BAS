5 CLS : SCREEN 0 : COLOR 7
10 PRINT TAB(28); "AMAZING PROGRAM"
20 PRINT TAB(15); "CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
30 PRINT : PRINT : PRINT : PRINT
40 DEFINT A-Z
50 DIM W(100, 100), V(100, 100)
80  ' RN = (TIMER - 12*3600)*3/4
90 RANDOMIZE
100 INPUT "What are your width and length"; H, V
102 IF (H <> 1) AND (V <> 1) THEN 110
104 PRINT "Meaningless dimensions.  Try again" : GOTO 100
110 FOR I = 1 TO H : FOR J = 1 TO V : W(I,J) = 0 : V(I,J) = 0 : NEXT J : NEXT I
120 PRINT : PRINT : PRINT : PRINT
130  ' INPUT "What is your output device "; F$
135 F$ = "SCRN:"
155 CLS : PRINT : SCREEN 1
160 Q = 0 : Z = 0 : X = INT(RND(1)*H + 1)
162 BOX = 1 : PX = 0 : PY = BOX
165 FOR I% = 1 TO H
170   IF I% = X - 1 THEN 175 ELSE IF (X = 1) AND (I = 1) THEN 173
171   CO = 3 : GOSUB 5000 : GOSUB 5000 : GOTO 180  '  Write two boxes
173   CO = 0 : GOSUB 5000 : GOSUB 5000 : GOTO 180  '  Write two blanks
175   CO = 3 : GOSUB 5000 : CO = 0 : GOSUB 5000    '  Write a box and a blank
180   NEXT I%
190 CO = 3 : GOSUB 5000 : GOSUB 5100  '   End a line
195 C = 1 : W(X, 1) = C : C = C + 1
200 R = X : S = 1 : GOTO 260
210 IF R <> H THEN 240
215 IF S <> V THEN 230
220 R = 1 : S = 1 : GOTO 250
230 R = 1 : S = S + 1 : GOTO 250
240 R = R + 1
250 IF W(R, S) = 0 THEN 210
260 IF R = 1 THEN 530
265 IF W(R - 1, S) <> 0 THEN 530
270 IF S = 1 THEN 390
280 IF W(R, S - 1) <> 0 THEN 390
290 IF R = H THEN 330
300 IF W(R + 1, S) <> 0 THEN 330
310 X = INT(RND(1)*3 + 1)
320 ON X GOTO 790, 820, 860
330 IF S <> V THEN 340
334 IF Z = 1 THEN 370
338 Q = 1 : GOTO 350
340 IF W(R, S + 1) <> 0 THEN 370
350 X = INT(RND(1)*3 + 1)
360 ON X GOTO 790, 820, 910
370 X = INT(RND(1)*2 + 1)
380 ON X GOTO 790, 820
390 IF R = H THEN 470
400 IF W(R + 1, S) <> 0 THEN 470
405 IF S <> V THEN 420
410 IF Z = 1 THEN 450
415 Q = 1 : GOTO 430
420 IF W(R, S + 1) <> 0 THEN 450
430 X = INT(RND(1)*3 +1)
440 ON X GOTO 790, 860, 910
450 X = INT(RND(1)*2 + 1)
460 ON X GOTO 790, 860
470 IF S <> V THEN 490
480 IF Z = 1 THEN 520
485 Q = 1 : GOTO 500
490 IF W(R, S + 1) <> 0 THEN 520
500 X = INT(RND(1)*2 + 1)
510 ON X GOTO 790, 910
520 GOTO 790
530 IF S = 1 THEN 670
540 IF W(R, S - 1) <> 0 THEN 670
545 IF R = H THEN 610
547 IF W(R + 1, S) <> 0 THEN 610
550 IF S <> V THEN 560
552 IF Z = 1 THEN 590
554 Q = 1 : GOTO 570
560 IF W(R, S + 1) <> 0 THEN 590
570 X = INT(RND(1)*3 + 1)
580 ON X GOTO 820, 860, 910
590 X = INT(RND(1)*2 + 1)
600 ON X GOTO 820, 860
610 IF S <> V THEN 630
620 IF Z = 1 THEN 660
625 Q = 1 : GOTO 640
630 IF W(R, S + 1) <> 0 THEN 660
640 X = INT(RND(1)*2 + 1)
650 ON X GOTO 820, 910
660 GOTO 820
670 IF R = H THEN 740
680 IF W(R + 1, S) <> 0 THEN 740
685 IF S <> V THEN 700
690 IF Z = 1 THEN 730
695 Q = 1 : GOTO 830
700 IF W(R, S + 1) <> 0 THEN 730
710 X = INT(RND(1)*2 + 1)
720 ON X GOTO 860, 910
730 GOTO 860
740 IF S <> V THEN 760
750 IF Z = 1 THEN 780
755 Q = 1 : GOTO 770
760 IF W(R, S + 1) <> 0 THEN 780
770 GOTO 910
780 GOTO 1000
790 W(R - 1, S) = C
800 C = C + 1 : V(R - 1, S) = 2 : R = R - 1
810 IF C = H*V + 1 THEN 1010
815 Q = 0 : GOTO 260
820 W(R, S - 1) = C
830 C = C + 1
840 V(R, S - 1) = 1 : S = S - 1 : IF C = H*V + 1 THEN 1010
850 Q = 0 : GOTO 260
860 W(R + 1, S) = C
870 C = C + 1 : IF V(R, S) = 0 THEN 880
875 V(R, S) = 3 : GOTO 890
880 V(R, S) = 2
890 R = R + 1
900 IF C = H*V + 1 THEN 1010
905 GOTO 530
910 IF Q = 1 THEN 960
920 W(R, S + 1) = C : C = C + 1 : IF V(R, S) = 0 THEN 940
930 V(R, S) = 3 : GOTO 950
940 V(R, S) = 1
950 S = S + 1 : IF C = H*V + 1 THEN 1010
955 GOTO 260
960 Z = 1
970 IF V(R, S) = 0 THEN 980
975 V(R, S) = 3 : Q = 0 : GOTO 1000
980 V(R, S) = 1 : Q = 0 : R = 1 : S = 1 : GOTO 250
1000 GOTO 210
1010 FOR J% = 1 TO V
1011   CO = 3 : GOSUB 5000  '  Write a box
1012   FOR I% = 1 TO H
1013     IF V(I%, J%) < 2 THEN 1030
1020     CO = 0 : GOSUB 5000 : GOSUB 5000  '  Write two blanks
1021     GOTO 1040
1030     CO = 0 : GOSUB 5000 : CO = 3 : GOSUB 5000   '  Write a blank and a box
1040     NEXT I%
1041   GOSUB 5100  ' End a line
1043   FOR I% = 1 TO H
1045     IF V(I%, J%) = 0 THEN 1060
1050     IF V(I%, J%) = 2 THEN 1060
1051       CO = 3 : GOSUB 5000 : CO = 0 : GOSUB 5000  ' Write a box and a blank
1052     GOTO 1070
1060       CO = 3 : GOSUB 5000 : GOSUB 5000   ' Write two boxes
1070     NEXT I%
1071   CO = 3 : GOSUB 5000 : GOSUB 5100   '  Write a box and end the line
1072   NEXT J%
2000 ' ****** Routine to solve maze ******
2010 IF F$ <> "SCRN:" THEN 9000
2020 LOCATE 24, 35, 0
2100 PX = 0 : PY = 0
2110 GOSUB 3000 '  Pick up arrow key input from keyboard
2120 GOSUB 4000 '  Move in arrow direction, if possible
2130 IF PY > (2*V + 1)*BOX THEN 2500 ELSE 2110
2500 ' ****** Maze is solved ******
2520 LOCATE 23,1
2530 PRINT "You have solved the maze."
2540 FOR  I = 1 TO 1000
2550   NEXT I
2999 GOTO 9000
3000 ' ****** Subroutine to pick up arrow key input from keyboard ******
3010 A$ = INKEY$
3020 WHILE LEN(A$) <> 2
3025   IF (A$ = "Q") OR (A$ = "q") THEN 8000
3026   IF (A$ = "C") OR (A$ = "c") THEN 3200
3030   A$ = INKEY$
3040   WEND
3050 KY = ASC(RIGHT$(A$, 1))
3060 IF KY = 75 THEN D$ = "L" : GOTO 3999
3070 IF KY = 77 THEN D$ = "R" : GOTO 3999
3080 IF KY = 72 THEN D$ = "U" : GOTO 3999
3090 IF KY = 80 THEN D$ = "D" : GOTO 3999
3100 GOTO 3010
3200 GOSUB 6000
3999 RETURN
4000 ' ****** Subroutine to move in arrow direction, if possible ******
4010 IF D$ = "L" THEN GOSUB 4100
4020 IF D$ = "R" THEN GOSUB 4200
4030 IF D$ = "U" THEN GOSUB 4300
4040 IF D$ = "D" THEN GOSUB 4400
4060 NXT = POINT(NX, NY)
4070 IF NXT = 0 THEN GOSUB 4500 ' Move to blank spot
4080 IF NXT = 2 THEN GOSUB 4600 ' Overwrite spot
4085 IF NXT = 1 THEN GOSUB 4700 ' Overwrite overwritten spot
4090 GOTO 4999
4100 ' ****** Subroutine to check out left cursor ******
4110 NX = PX - BOX : IF NX < 0 THEN NX = 0
4120 NY = PY
4199 RETURN
4200 ' ****** Subroutine to check out right cursor ******
4210 NX = PX + BOX : IF NX > 700 THEN NX = 700
4220 NY = PY
4299 RETURN
4300 ' ****** Subroutine to check out above cursor ******
4310 NX = PX
4320 NY = PY - BOX : IF NY < 0 THEN NY = 0
4399 RETURN
4400 ' ****** Subroutine to check out below cursor ******
4410 NX = PX
4420 NY = PY + BOX : IF NY > 280 THEN NY = 280
4499 RETURN
4500 ' ****** Subroutine to move cursor to new location ******
4510 CO = 2
4530 GOSUB 5200 '  Write new block
4540 PX = NX : PY = NY
4560 CO = 2
4570 GOSUB 5200 ' Write cursor
4599 RETURN
4600 ' ****** Subroutine to move cursor through old location ******
4610 CO = 1
4630 GOSUB 5200 ' Write over block
4640 PX = NX : PY = NY
4660 CO = 2
4670 GOSUB 5200 ' Write cursor
4699 RETURN
4700 ' ****** Subroutine to move cursor through old old location ******
4710 CO = 2
4730 GOSUB 5200  ' Write new block
4740 PX = NX : PY = NY
4760 CO = 2
4770 GOSUB 5200 ' Write cursor
4799 RETURN
4999 RETURN
5000 ' ****** Subroutine to print a box ******
5010 GOSUB 5200  ' Write a box
5020 PX = PX + BOX
5099 RETURN
5100 ' ****** Subrouitne to end a line ******
5110 PX = 0
5120 PY = PY + BOX
5199 RETURN
5200 ' ****** Subroutine to print a box ******
5210 LINE (PX, PY)-(PX + BOX - 1, PY + BOX - 1), CO, BF
5299 RETURN
6000 ' ****** Subroutine to allow computer to solve maze ******
6100 ' ****** Look to extend magenta ******
6110 IF POINT (PX, PY + BOX) = 0 THEN D$ = "D" : GOTO 6300
6120 IF POINT (PX + BOX, PY) = 0 THEN D$ = "R" : GOTO 6300
6130 IF POINT (PX, PY - BOX) = 0 THEN D$ = "U" : GOTO 6300
6140 IF POINT (PX - BOX, PY) = 0 THEN D$ = "L" : GOTO 6300
6200 ' ****** Look to backtrack ******
6210 IF POINT (PX, PY + BOX) = 2 THEN D$ = "D" : GOTO 6300
6220 IF POINT (PX + BOX, PY) = 2 THEN D$ = "R" : GOTO 6300
6230 IF POINT (PX, PY - BOX) = 2 THEN D$ = "U" : GOTO 6300
6240 IF POINT (PX - BOX, PY) = 2 THEN D$ = "L" : GOTO 6300
6300 GOSUB 4000  ' Move in direction D$
6310 IF PY > (2*V + 1)*BOX THEN 6999
6390 GOTO 6100
6999 RETURN
8000 CLS
8010 SYSTEM
9000 ' ****** Closing stuff ******
9010 INPUT "Would you like another maze"; A$
9015 CLS
9020 A$ = LEFT$(A$, 1)
9030 IF (A$ = "Y") OR (A$ = "y") THEN 100
9100 CLS : SCREEN 0 : WIDTH 80 : STOP
9999 END
