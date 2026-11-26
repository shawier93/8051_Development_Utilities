ORG 00H
MOV DPTR,#STRING
START:
CLR A
MOVC A,@A+DPTR
JZ AGAIN
ACALL DATA_DISPLAY
INC DPTR
SJMP START
AGAIN: SJMP AGAIN


DATA_DISPLAY:
ACALL READY ;is LCD ready?
MOV P1,A ;issue data
SETB P1.2 ;RS=1 for data
CLR P1.3 ;R/W =0 to write to LCD
SETB P1.5 ;E=1 for H-to-L pulse
CLR P1.5 ;E=0,latch in
RET
READY:
SETB P1.7 ;make P1.7 input port
CLR P1.2 ;RS=0 access command reg
SETB P1.3 ;R/W=1 read command reg
;read command reg and check busy flag
BACK:SETB P1.5 ;E=1 for H-to-L pulse
CLR P1.5 ;E=0 H-to-L pulse
JB P1.7,BACK ;stay until busy flag=0
RET

ORG 300H
STRING: DB "GOOD MORNING",0
END
