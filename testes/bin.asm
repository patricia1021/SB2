;Programa que transforma um n�mero decimal
;a bin�rio
COISA: EQU 1
SECTION TEXT
INPUT OLD_DATA
LOAD OLD_DATA
L1: DIV DOIS
STORE  NEW_DATA
MULT DOIS
STORE TMP_DATA
LOAD OLD_DATA
SUB TMP_DATA
STORE TMP_DATA
OUTPUT TMP_DATA
COPY NEW_DATA,OLD_DATA
LOAD OLD_DATA
JMPP L1
;store dois;COPY DOIS,OLD_DATA ;out
STOP
SECTION DATA
DOIS: CONST 0X10
OLD_DATA: SPACE COISA
NEW_DATA: SPACE COISA
TMP_DATA: SPACE
