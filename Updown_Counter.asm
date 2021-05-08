org 00h
Start:	Mov A,#0FFh ;Data	
  	 	Mov P1,A ;output data to LEDS
	 	ACall Delay ;Call Delay

;      Count Up
Repeat1:Dec A ;Decrease contents of reg A by one
     	Mov P1,A ;output data to LEDs
		ACall Delay
		Cjne A,#00h,Repeat1

;      Count Down
Repeat2:Inc A ;Increase contents of reg A by one
		Mov P1,A ;Output data to LEDs
		ACall Delay
		Cjne A,#0FFh,Repeat2
		Sjmp Start ;Repeat

Delay: 	Mov R0, #40h ;Outer loop
Again: 	Mov R1, #0FFh;inner loop
Here:	Djnz R1, Here ;Jump if r1 not 0
		Djnz R0, Again ;Jump if r0 not 0
		Ret
		End