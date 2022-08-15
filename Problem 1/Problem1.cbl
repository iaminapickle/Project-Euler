       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROBLEM1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
            01 LOOP-LIMIT PIC 9(4) VALUE 1000.
            01 DIV PIC 9(38) VALUE 0.
            01 N PIC 9(38) VALUE 0.
            01 X PIC 9(38) VALUE 0.
            01 RET PIC 9(38) VALUE 0.
            01 LOOP-SUM PIC 9(38) VALUE 0.
            01 LOOP-SUM-SUPPRESS PIC Z(38).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            SET X TO 3.
            PERFORM DIVBYX.
            COMPUTE LOOP-SUM = LOOP-SUM + RET.

            SET X TO 5.
            PERFORM DIVBYX.
            COMPUTE LOOP-SUM = LOOP-SUM + RET.

            SET X TO 15.
            PERFORM DIVBYX.
            COMPUTE LOOP-SUM = LOOP-SUM - RET.

            MOVE LOOP-SUM TO LOOP-SUM-SUPPRESS.
            DISPLAY FUNCTION TRIM(LOOP-SUM-SUPPRESS).
            STOP RUN.

       DIVBYX.
            COMPUTE N = (LOOP-LIMIT - 1) / X.
            COMPUTE RET = X / 2 * (N * (N + 1)).

       END PROGRAM PROBLEM1.
