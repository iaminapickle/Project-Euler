       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROBLEM2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
            01 FIB1 PIC 9(38) VALUE 2.
            01 FIB2 PIC 9(38) VALUE 8.
            01 TEMP PIC 9(38).
            01 CUR-SUM PIC 9(38) VALUE 0.
            01 CUR-SUM-SUPPRESS PIC Z(38).
            01 CUR PIC 9(38).
            01 LOOP-LIMIT PIC 9(7) VALUE 1000000.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            IF LOOP-LIMIT > 8 THEN
                PERFORM FIB-SUM UNTIL FIB2 > LOOP-LIMIT.
            IF LOOP-LIMIT <= 8 THEN
                SET CUR-SUM TO 10.
            IF LOOP-LIMIT <= 2 THEN
                SET CUR-SUM TO 2.


            MOVE CUR-SUM TO CUR-SUM-SUPPRESS.
            DISPLAY FUNCTION TRIM(CUR-SUM-SUPPRESS).
            STOP RUN.

       FIB-SUM.
            PERFORM FIB.
            COMPUTE CUR-SUM = CUR-SUM + FIB2.

       FIB.
            COMPUTE TEMP = FIB1 + 4 * FIB2.
            MOVE FIB2 TO FIB1.
            MOVE TEMP TO FIB2.

       END PROGRAM PROBLEM2.
