/*******************************************************************************
Paul Yong, Shelby Castillo
*******************************************************************************/
.data
a:	.byte 	3, 2, 7, 9, 1	
sx:	.byte 	0                  
dx:	.byte	4		

.text
start:	
	LB r1, sx(r0)		
	LB r2, dx(r0)		
	
	ADD r6, r0, r1		
	ADD r7, r0, r2		
    ADD r3, r1, r2		
	ADDI r4, r0, 2		
	DIV r3, r4
	MFLO r5			
	LB r5, a(r5)		

 	ADDI r6, r6, 1		
	ADDI r6, r6, 1		

	LB r13, a(r6)		
	LB r14, a(r7)		
	SB r13, a(r7)		
	SB r14, a(r6)		

	ADDI r6, r6, 1		
	ADDI r7, r7, -1		
    ADDI r7, r7, -1		

    ADD r3, r1, r7		
	ADDI r4, r0, 2		
	DIV r3, r4		
	MFLO r5			
	LB r5, a(r5)		

	LB r13, a(r1)		
	LB r14, a(r7)		
	SB r13, a(r7)		
	SB r14, a(r1)		

    ADD r3, r6, r2		
	ADDI r4, r0, 2		
	DIV r3, r4		
	MFLO r5			
	LB r5, a(r5)		
        
	LB r13, a(r6)		
	LB r14, a(r2)		
	SB r13, a(r2)		
	SB r14, a(r6)		

stop:	HALT                   

