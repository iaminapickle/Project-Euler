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
            PERFORM DIVBYX VARYING X FROM 3 BY 1 UNTIL X = 4.
            COMPUTE LOOP-SUM = LOOP-SUM + RET.

            PERFORM DIVBYX VARYING X FROM 5 BY 1 UNTIL X = 6.
            COMPUTE LOOP-SUM = LOOP-SUM + RET.

            PERFORM DIVBYX VARYING X FROM 15 BY 1 UNTIL X = 16.
            COMPUTE LOOP-SUM = LOOP-SUM - RET.

            MOVE LOOP-SUM TO LOOP-SUM-SUPPRESS.
            DISPLAY FUNCTION TRIM(LOOP-SUM-SUPPRESS).
            STOP RUN.

       DIVBYX.
            COMPUTE N = (LOOP-LIMIT - 1) / X.
            COMPUTE RET = X / 2 * (N * (N + 1)).

       END PROGRAM PROBLEM1.
