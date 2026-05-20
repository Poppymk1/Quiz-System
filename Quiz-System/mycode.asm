.model small 
.stack 100h 
.data 
msg0 db 13,10,"==== QUIZ SYSTEM ====$" 
msg1 db 13,10,"Enter Full Name: $" 
msg2 db 13,10,"Hello $" 
username db 20 
         db ? 
         db 20 dup(?) 
q1 db 13,10,"Q1: 2 + 2 = ?$" 
q1o db 13,10,"A) 3  B) 4  C) 5$"
q2 db 13,10,"Q2: Capital of Pakistan?$" 
q2o db 13,10,"A) Karachi  B) Islamabad  C) Lahore$" 
q3 db 13,10,"Q3: Accumulator register?$" 
q3o db 13,10,"A) AX  B) BX  C) CX$" 
ans db 13,10,"Answer (A/B/C): $" 
msgC db 13,10,"Correct!$" 
msgW db 13,10,"Wrong!$" 
msgF db 13,10,"Final Score: $" 
msgG db 13,10,"Grade: $" 
score db 0 
.code 
main proc 
mov ax,@data 
mov ds,ax 
lea dx,msg0 
mov ah,09h 
int 21h 
lea dx,msg1 
mov ah,09h 
int 21h 
lea dx,username 
mov ah,0Ah 
int 21h 
mov bh, 0 
mov bl, username[1]        
mov username[bx+2], '$'    
mov ah,02h 
mov dl,13 
int 21h 
mov dl,10 
int 21h 
lea dx,msg2 
mov ah,09h 
int 21h 
lea dx,username+2 
mov ah,09h 
int 21h 
lea dx,q1 
mov ah,09h 
int 21h 
lea dx,q1o 
mov ah,09h 
int 21h 
lea dx,ans 
mov ah,09h 
int 21h 
mov ah,01h 
int 21h 
cmp al,'B' 
je q1_correct 
cmp al,'b' 
je q1_correct 
jmp q1_wrong 
q1_correct: 
inc score 
lea dx,msgC 
jmp q1_show 
q1_wrong: 
lea dx,msgW 
q1_show: 
mov ah,09h 
int 21h 
lea dx,q2 
mov ah,09h 
int 21h 
lea dx,q2o 
mov ah,09h 
int 21h 
lea dx,ans 
mov ah,09h 
int 21h 
mov ah,01h 
int 21h 
cmp al,'B' 
je q2_correct 
cmp al,'b' 
je q2_correct 
jmp q2_wrong 
q2_correct: 
inc score 
lea dx,msgC 
jmp q2_show 
q2_wrong: 
lea dx,msgW 
q2_show: 
mov ah,09h 
int 21h 
lea dx,q3 
mov ah,09h 
int 21h 
lea dx,q3o 
mov ah,09h 
int 21h 
lea dx,ans 
mov ah,09h 
int 21h 
mov ah,01h 
int 21h 
cmp al,'A' 
je q3_correct 
cmp al,'a' 
je q3_correct 
jmp q3_wrong 
q3_correct: 
inc score 
lea dx,msgC 
jmp q3_show 
q3_wrong: 
lea dx,msgW 
q3_show: 
mov ah,09h 
int 21h 
lea dx,msgF 
mov ah,09h 
int 21h 
mov dl,score 
add dl,30h             
mov ah,02h 
int 21h 
lea dx,msgG 
mov ah,09h 
int 21h 
mov al,score 
cmp al,3 
je gradeA 
cmp al,2 
je gradeB 
cmp al,1
je gradeC 
jmp gradeF 
gradeA: 
mov dl,'A' 
jmp showg 
gradeB: 
mov dl,'B' 
jmp showg 
gradeC: 
mov dl,'C' 
jmp showg 
gradeF: 
mov dl,'F' 
showg: 
mov ah,02h 
int 21h 
mov ah,4ch 
int 21h 
main endp 
end main 