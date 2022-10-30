extern printf
global main
section .data
format_specifier:
    db '%x ', 0


format_specifier2:
    db '', 10, 0
    
section .text
main:
    
    mov rcx, qword 5
    begin_loop0:
        mov rbx, qword 15
        push rcx
        push rbx
        mov rdi, format_specifier2
        mov rsi, rcx
        xor rax, rax
        call printf
        pop rbx
        pop rcx
        


        begin_loop:
            
            push rbx
            push rcx
            mov rdi, format_specifier
            mov rsi, rbx
            xor rax, rax
            call printf
            pop rcx
            pop rbx
            dec rbx
            cmp rbx, qword 0
        jge begin_loop
        dec rcx
        cmp rcx, qword 0

    jge begin_loop0
    mov rax, 60
    syscall