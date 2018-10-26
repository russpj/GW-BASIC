5 CLS : COLOR 7
10 PRINT TAB(28); "AMAZING PROGRAM"
20 PRINT TAB(15); "CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
30 PRINT : PRINT : PRINT : PRINT
1000 PRINT TAB(20); "LIST OF DEVICES"
1010 PRINT TAB(15); "1)   Screen"
1020 PRINT TAB(15); "2)   Printer"
1030 PRINT TAB(15); "3)   Return to games menu"
1040 INPUT "What device what you like to send the output to"; D
1050 IF (D > 0) AND (D < 4) THEN ON D GOTO 1100, 1200, 1300
1060 PRINT "Try a device that is numbered, dummy"
1070 CLS : STOP
1100 ' ****** Screen is chosen device ******
1110 CHAIN "SMAZE"
1200 ' ****** Printer is chosed device ******
1210 CHAIN "PMAZE"
1300 ' ****** Quit and return to games menu ******
1310 CLS
1320 CHAIN "GAMES"
9999 END
