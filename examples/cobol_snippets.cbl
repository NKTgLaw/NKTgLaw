       IDENTIFICATION DIVISION.
       PROGRAM-ID. NKTgLaw.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 X        PIC 9(3)V9(2) VALUE 2.00.
       01 V        PIC 9(3)V9(2) VALUE 3.00.
       01 M        PIC 9(3)V9(2) VALUE 5.00.
       01 DM-DT    PIC 9(3)V9(2) VALUE 0.10.
       01 P        PIC 9(3)V9(2).
       01 NKTG1    PIC 9(3)V9(2).
       01 NKTG2    PIC 9(3)V9(2).
       PROCEDURE DIVISION.
           COMPUTE P = M * V
           COMPUTE NKTG1 = X * P
           COMPUTE NKTG2 = DM-DT * P
           DISPLAY "p=" P " NKTg1=" NKTG1 " NKTg2=" NKTG2
           STOP RUN.
