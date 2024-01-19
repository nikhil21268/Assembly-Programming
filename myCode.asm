global main
extern scanf
extern printf

section .text
main:
    push rbp
    mov rbp,rsp
    sub rsp,16
    
    xor eax,eax
    lea rdi,[msg]
    call printf
    
    mov eax,0
    lea rdi,[format]
    lea rsi,[number]
    call scanf

;loop:
   ; mov rcx,rax
    ;mov rax,[number]
    ;mov rbx,10
   ; div rbx
    ;cmp rax,0
    ;jz exit

    ;jmp loop

;exit:

    xor eax,eax
    lea rdi,[msg2]
    call printf

    xor eax,eax
    lea rdi,[format2]
    lea rsi,[string]
    call scanf
    

    

    ;mov rcx,[number]
    ;add rcx,48
    ;mov [number],rcx
    ;lea rdi,dword [number]            ;lea rdi,[number] 
    ;push qword [number]

    
    ;push qword [format]
    ;call printf

    

    ;xor eax,eax
    ;mov r9,[number]
    ;lea rdi,[format3]
    ;mov r8,[string]
    ;lea rsi,[string]
    ;lea rcx,[r9]
    ;call printf 

    xor eax,eax
    lea rdi,[format4]
    lea rsi,[string]
    call printf

    xor eax,eax
    lea rdi,[format5]
    mov rcx,[number]
    lea rsi,[rcx]  
    call printf
    
    add rsp,16
    leave
    ret
    
section .data
msg: db 'enter your age: ',0
format: db '%d',0
msg2: db 'enter your name: ',0
format2: db '%s',0
format3: db '%s is %d yrs old !',0
format4: db 'your name is: %s',10,0
format5: db 'your age is: %d',10,0

section .bss
number: resb 4
string: resb 1000
