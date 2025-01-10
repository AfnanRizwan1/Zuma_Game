include Irvine32.inc    ; Include the Irvine32 library
includelib Winmm.lib
include macros.inc

PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD

.data
ZUMA_ART  db 13,10
     db '                               __________                        ________                       ',13,10
     db '                               \____    /__ __  _____ _____     /  _____/_____    _____   ____  ',13,10
     db '                                 /     /|  |  \/     \\__  \   /   \  ___\__  \  /     \_/ __ \ ',13,10
     db '                                /     /_|  |  /  Y Y  \/ __ \_ \    \_\  \/ __ \|  Y Y  \  ___/ ',13,10
     db '                               /_______ \____/|__|_|  (____  /  \______  (____  /__|_|  /\___  >',13,10
     db '                                       \/           \/     \/          \/     \/      \/     \/ ',13,10
     db 0   
     
CONTINUE_ART  db 13,10
     db '                             _________                __  .__                       _________ ',13,10
     db '                             \_   ___ \  ____   _____/  |_|__| ____  __ __   ____   \_____   \',13,10
     db '                             /    \  \/ /  _ \ /    \   __\  |/    \|  |  \_/ __ \     /   __/',13,10
     db '                             \     \___(  <_> )   |  \  | |  |   |  \  |  /\  ___/    |   |   ',13,10
     db '                              \______  /\____/|___|  /__| |__|___|  /____/  \___  >   |___|   ',13,10
     db '                                     \/            \/             \/            \/    <___>   ',13,10
     db 0  
     
level_1_ascii  db 13,10
     db '                                       .____                      .__     ____ ',13,10
     db '                                       |    |    _______  __ ____ |  |   /_   |',13,10
     db '                                       |    |  _/ __ \  \/ // __ \|  |    |   |',13,10
     db '                                       |    |__\  ___/\   /\  ___/|  |__  |   |',13,10
     db '                                       |_______ \___  >\_/  \___  >____/  |___|',13,10
     db '                                               \/   \/          \/             ',13,10
     db 0   
     
level_2_ascii  db 13,10
     db '                                       .____                      .__    ________  ',13,10
     db '                                       |    |    _______  __ ____ |  |   \_____  \ ',13,10
     db '                                       |    |  _/ __ \  \/ // __ \|  |    /  ____/ ',13,10
     db '                                       |    |__\  ___/\   /\  ___/|  |__ /       \ ',13,10
     db '                                       |_______ \___  >\_/  \___  >____/ \_______ \',13,10
     db '                                               \/   \/          \/               \/',13,10
     db 0 

level_3_ascii  db 13,10
     db '                                       .____                      .__    ________  ',13,10
     db '                                       |    |    _______  __ ____ |  |   \_____  \ ',13,10
     db '                                       |    |  _/ __ \  \/ // __ \|  |     _(__  < ',13,10
     db '                                       |    |__\  ___/\   /\  ___/|  |__  /       \',13,10
     db '                                       |_______ \___  >\_/  \___  >____/ /______  /',13,10
     db '                                               \/   \/          \/              \/ ',13,10
     db 0 
                                                                      
                                                                      
START             DB '                                               ___ ___ ___ ___ ___   ',13,10
                  DB '                                              / __|_ _| . | . |_ _|  ',13,10
                  DB '                                              \__ \| ||   |   /| |   ',13,10
                  DB '                                              <___/|_||_|_|_\_\|_|   ',13,10
                  DB 0   

INSTRUCTIONS    DB '                                     _ _ _ ___ ___ ___ _ _ ___ ___ _ ___ _ _ ___ ',13,10
                DB '                                    | | \ / __|_ _| . | | |  _|_ _| | . | \ / __>',13,10
                DB '                                    | |   \__ \| ||   |   | <__| || | | |   \__ \',13,10
                DB '                                    |_|_\_<___/|_||_\_`___`___/|_||_`___|_\_<___/',13,10
                DB 0
            
EXITED           DB '                                                  _____  _ _ ___   ',13,10
                 DB '                                                 | __\ \/ | |_ _|  ',13,10
                 DB '                                                 | _> \ \ | || |   ',13,10
                 DB '                                                 |____/\_\|_||_|   ',13,10
                 DB 0





RESUME DB '                        _____________________ _____________ ___  _____  ___________',13,10
       DB '                        \______   \_   _____//   _____/    |   \/     \ \_   _____/',13,10
       DB '                         |       _/|    __)_ \_____  \|    |   /  \ /  \ |    __)_ ',13,10
       DB '                         |    |   \|        \/        \    |  /    Y    \|        \',13,10
       DB '                         |____|_  /_______  /_______  /______/\____|__  /_______  /',13,10
       DB '                                \/        \/        \/                \/        \/ ',13,10
       DB 0

EXITED11 DB '                         _______________  ___.______________',13,10
       DB '                         \_   _____/\   \/  /|   \__    ___/',13,10
       DB '                          |    __)_  \     / |   | |    |   ',13,10
       DB '                          |        \ /     \ |   | |    |   ',13,10
       DB '                         /_______  //___/\  \|___| |____|   ',13,10
       DB '                                 \/       \_/               ',13,10
       DB 0


SKIP_LEVEL DB '             _____________  __._____________  .____     _______________   _______________.____     ',13,10    
           DB '            /   _____/    |/ _|   \______   \ |    |    \_   _____/\   \ /   /\_   _____/|    |    ',13,10
           DB '            \_____  \|      < |   ||     ___/ |    |     |    __)_  \   Y   /  |    __)_ |    |    ',13,10
           DB '            /        \    |  \|   ||    |     |    |___  |        \  \     /   |        \|    |___ ',13,10
           DB '           /_______  /____|__ \___||____|     |_______ \/_______  /   \___/   /_______  /|_______ \',13,10
           DB '                   \/        \/                       \/        \/                    \/         \/',13,10
           DB 0
                                           
 POINTER            DB'  <<<<<<<<<<<<<<<<   ',13,10
                    DB 0

pauseScreen         db'                 $$$$$$$\  $$$$$$$$\  $$$$$$\  $$\   $$\ $$\      $$\ $$$$$$$$\ ',13,10
                    db'                 $$  __$$\ $$  _____|$$  __$$\ $$ |  $$ |$$$\    $$$ |$$  _____|',13,10
                    db'                 $$ |  $$ |$$ |      $$ /  \__|$$ |  $$ |$$$$\  $$$$ |$$ |      ',13,10
                    db'                 $$$$$$$  |$$$$$\    \$$$$$$\  $$ |  $$ |$$\$$\$$ $$ |$$$$$\    ',13,10
                    db'                 $$  __$$< $$  __|    \____$$\ $$ |  $$ |$$ \$$$  $$ |$$  __|   ',13,10
                    db'                 $$ |  $$ |$$ |      $$\   $$ |$$ |  $$ |$$ |\$  /$$ |$$ |      ',13,10
                    db'                 $$ |  $$ |$$$$$$$$\ \$$$$$$  |\$$$$$$  |$$ | \_/ $$ |$$$$$$$$\ ',13,10
                    db'                 \__|  \__|\________| \______/  \______/ \__|     \__|\________|',13,10
                    db'                                                                                ',13,10
                    db'                                                                                ',13,10
                    db'                                                                                ',13,10
                    db'                             $$$$$$$$\ $$\   $$\ $$$$$$\ $$$$$$$$\              ',13,10
                    db'                             $$  _____|$$ |  $$ |\_$$  _|\__$$  __|             ',13,10
                    db'                             $$ |      \$$\ $$  |  $$ |     $$ |                ',13,10
                    db'                             $$$$$\     \$$$$  /   $$ |     $$ |                ',13,10
                    db'                             $$  __|    $$  $$<    $$ |     $$ |                ',13,10
                    db'                             $$ |      $$  /\$$\   $$ |     $$ |                ',13,10
                    db'                             $$$$$$$$\ $$ /  $$ |$$$$$$\    $$ |                ',13,10
                    db'                             \________|\__|  \__|\______|   \__|                ',13,10
                    db 0

INSTRUCTIONS_SCREEN             db 'Controls:                                                                                       ',13,10
                                 db '                                                                                               ',13,10
                                 db ' 1-Use the q w e a d z x c keys to aim and shoot balls from the frog''s mouth.                  ',13,10
                                 db ' 2-Click the spacebar key to shoot the ball toward the chain of colored balls.                 ',13,10
                                 db ' 3-Press the spacebar to switch to the next available ball.                                    ',13,10
                                 db '                                                                                               ',13,10
                                 db 'Gameplay:                                                                                      ',13,10
                                 db '                                                                                               ',13,10
                                 db ' 1-Aim to create groups of three or more balls of the same color to make them disappear.        ',13,10
                                 db ' 2-Prevent the chain of balls from reaching the skull at the end of the track.                 ',13,10
                                 db ' 3-Power-up balls (such as bombs or slow-down effects) appear occasionally and can be triggered.',13,10
                                 db ' 4-Strategically plan shots to create chain reactions for higher scores.                       ',13,10
                                 db '                                                                                               ',13,10
                                 db 'Scoring:                                                                                       ',13,10
                                 db '                                                                                               ',13,10
                                 db ' 1-Earn points by matching and clearing groups of balls.                                       ',13,10
                                 db ' 2-Combo streaks (consecutive matches) provide bonus points.                                   ',13,10
                                 db ' 3-Additional points are awarded for triggering chain reactions and using power-ups effectively.',13,10
                                 db '                                                                                               ',13,10
                                 db 'Game Over:                                                                                     ',13,10
                                 db '                                                                                               ',13,10
                                 db ' 1-The game ends if the chain of balls reaches the skull.                                      ',13,10
                                 db ' 2-Clear all balls in the chain to progress to the next level.                                 ',13,10
                                 db ' 3-Higher levels introduce faster chains, more colors, and complex tracks.                     ',13,10
                                 db 0

                              
                  

gameOverScreen    db'                      ________    _____      _____  ___________ ____________   _________________________ ',13,10 
                  db'                     /  _____/   /  _  \    /     \ \_   _____/ \_____  \   \ /   /\_   _____/\______   \',13,10
                  db'                    /   \  ___  /  /_\  \  /  \ /  \ |    __)_   /   |   \   Y   /  |    __)_  |       _/',13,10
                  db'                    \    \_\  \/    |    \/    Y    \|        \ /    |    \     /   |        \ |    |   \',13,10
                  db'                     \______  /\____|__  /\____|__  /_______  / \_______  /\___/   /_______  / |____|_  /',13,10
                  db'                            \/         \/         \/        \/          \/                 \/         \/ ',13,10
                  db 0
menuSelect db 1

ground BYTE "------------------------------------------------------------------------------------------------------------------------",0
ground1 BYTE "|",0ah,0
ground2 BYTE "|",0
ground3 db '_',0



temp byte ?
temporary dw ?
temp2 dd ?
temp3 byte ?
addressTemp dd ?
x db 0
y db 0

strScore BYTE "Your score is: ",0
score db 0


level1 BYTE "Level: ",0
levelVal db 1


loopVarCoin db 30
xCoinPos BYTE ?
yCoinPos BYTE ?

name1 BYTE "Name: ",0
prompt1 db "Enter your name:",0
names db 20 dup (32)
strName db "Name:",0

livesString db "Lives:",0
lives3 db "$$$",0
lives2 db "$$",0
lives1 db "$",0
lives db 3

  ; Level layout

    walls BYTE " _____________________________________________________________________________ ", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                    ---                                      |", 0
          BYTE "|                                   |   |                                     |", 0
          BYTE "|                                   |   |                                     |", 0
          BYTE "|                                   |   |                                     |", 0
          BYTE "|                                    ---                                      |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|_____________________________________________________________________________|", 0




    ; Player sprite
    player_right BYTE "   ", 0
                 BYTE " O-", 0
                 BYTE "   ", 0

    player_left BYTE "   ", 0
                BYTE "-O ", 0
                BYTE "   ", 0

    player_up BYTE " | ", 0
              BYTE " O ", 0
              BYTE "   ", 0

    player_down BYTE "   ", 0
                BYTE " O ", 0
                BYTE " | ", 0

    player_upright BYTE "  /", 0
                   BYTE " O ", 0
                   BYTE "   ", 0

    player_upleft BYTE "\  ", 0
                  BYTE " O ", 0
                  BYTE "   ", 0

    player_downright BYTE "   ", 0
                     BYTE " O ", 0
                     BYTE "  \", 0

    player_downleft BYTE "   ", 0
                    BYTE " O ", 0
                    BYTE "/  ", 0

    ; Player's starting position (center)
    xPos db 56      ; Column (X)
    yPos db 14      ; Row (Y)

    xDir db 0
    yDir db 0

    ; Default character (initial direction)
    inputChar db 0
    direction db "d"

    ; Colors for the emitter and player
    color_black      dd 0
    color_blue       dd 1
    color_green      dd 2
    color_cyan       dd 3
    color_red        dd 4
    color_magenta    dd 5
    color_brown      dd 6
    color_lightGray  dd 7
    color_gray       dd 8
    color_lightBlue  dd 9
    color_lightGreen dd 10
    color_lightCyan  dd 11
    color_lightRed   dd 12
    color_lightMagenta dd 13
    color_yellow     dd 14
    color_white      dd 15

    ;ball color 1
    current_color db 4   ; Default player color (red)

    emitter_color1 db 2  ; Green
    emitter_color2 db 4  ; Red

    ;ball color 2
    fire_color db 14     ; Fire symbol color (Yellow)
    old_fire_color db 14     ; Fire symbol color (Yellow)
    dummy_old_fire_color db 0     ; Fire symbol color (Yellow)
    bullet_x_value db 0
    bullet_y_value db 0
    bool_hit_check db 0


    ; Emitter properties
    emitter_symbol db "#"
    emitter_row db 0    ; Two rows above player (fixed row for emitter)
    emitter_col db 1    ; Starting column of the emitter

    ; Fire symbol properties (fired from player)
    fire_symbol db "0", 0
    fire_row db 0        ; Fire will be fired from the player's position
    fire_col db 0        ; Initial fire column will be set in the update logic

    ; Interface variables
    levelInfo db 1
    
    ; Counter variables for loops
    counter1 db 0
    counter2 db 0

    randomValues3 DW 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15      ; Array of possible values
    count3 EQU 15             ; Number of elements in the array

    randomValues1 DW 1, 2, 3, 4,5, 6, 7, 8      ; Array of possible values
    count1 EQU 8             ; Number of elements in the array

    randomValues2 DW 1, 2, 3, 4,5, 6, 7, 8, 9, 10, 11, 12      ; Array of possible values
    count2 EQU 12             ; Number of elements in the array

    currX dw ?
    currY dw ?


    BallArray DW 200 DUP(?)   ; Array to hold x, y, and color (maximum 33 balls)
    CurrentBallIndex DW 0     ; Tracks the next free slot
    currentBalls db 0
    move_to db 0

    RightBoundary DW 97      ; Right-most x position (adjust as needed)
    RightBoundary2 DW 96      ; Right-most x position (adjust as needed)
    orgRightBoundary2 DW 96      ; Right-most x position (adjust as needed)
    orgRightBoundary DW 97      ; Right-most x position (adjust as needed)
    LeftBoundary DW 19         ; Left-most x position (adjust as needed)
    LeftBoundary2 DW 20         ; Left-most x position (adjust as needed)
    orgLeftBoundary2 DW 20         ; Left-most x position (adjust as needed)
    orgLeftBoundary DW 19         ; Left-most x position (adjust as needed)
    xDirection DB 1           ; 1 = moving right, -1 = moving left
    yDirection DB 1           ; 1 = moving right, -1 = moving left
    bool_right_check db 0
    bool_left_check db 0

    DownBoundary DW 26      ; Right-most x position (adjust as needed)
    orgDownBoundary DW 26      ; Right-most x position (adjust as needed)
    UpBoundary DW 5         ; Left-most x position (adjust as needed)
    orgUpBoundary DW 5         ; Left-most x position (adjust as needed)

    tempval dw 0
    change_temp db 0
    case_bool db 0
    l11_count db 0
    check_bit db 0
    check_bool_bit db 0

    continue db 0

    temp_vals db 0, 0, 0, 0

    RightBoundary_bool db 0
    DownBoundary_bool db 0
    LeftBoundary_bool db 0
    UpBoundary_bool db 0

    yes_change_bit db 0
    level_2_count db 0
    change_bit_2 db 0
    level_1_end_bit db 0
    level_2_end_bit db 0
    level_3_end_bit db 0


    l_tunnel db 30 dup(0)
    l_count db  0 
    l_count_out db  0 

    r_tunnel db 30 dup(0)
    r_count db  0 
    r_count_out db  0 

    t_bit db 0
    power_up_counter db 0
    power_bit db 0

    pause_bit db 0

    ballSpeed dd 50
    shouldDec db 0

    level_pass_fail db 3 dup(0)


    filename db "output.txt",0
    filehandle dd ?
    readfile1 db 255 dup(?)
    dataread db 255 dup(?)
    datareadbytes db ?
    bytesread dd ?

.code

 
;MAKE SQUARE
make_square proc
    ; draw ground at (0,29):
    mov eax,blue ;(black * 16)
    call SetTextColor
    mov dl,0
    mov dh,29
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    mov dl,0
    mov dh,1
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString

    mov ecx,27
    mov dh,2
    l1:
    mov temp,dh
    mov dl,0
    call Gotoxy
    mov edx,OFFSET ground1
    call WriteString
    inc temp
    mov dh,temp
    loop l1


    mov ecx,27
    mov dh,2
    mov temp,dh
    l2:
    mov dh,temp
    mov dl,119
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2
    ret
make_square endp

;UPDATE SCORE
draw_update_score proc

mov dl,0
mov dh,0
mov eax, yellow
call settextcolor
call gotoxy
mov edx, offset strScore
call writestring
mov eax, cyan
call settextcolor
mov al, score
call writeint;

ret

draw_update_score endp

;END SCREEN
diplay_end_screen proc

    call clrscr
    mov dl,0 
    mov dh,12
    mov eax, cyan
    call settextcolor
    call gotoxy
    mov edx,offset gameOverScreen
    call writestring

    mov dl, 40
    mov dh, 20
    call gotoxy
    mov eax, yellow
    call settextcolor
    mwrite" Name : "
    mov eax, white
    call settextcolor
    mov edx, offset names
    call writestring

    mov dl, 70
    mov dh, 20
    call gotoxy
    mov eax, yellow
    call settextcolor
    mwrite" Score : "
    mov eax, white
    call settextcolor
    mov al, Score 
    call writeint
    call crlf

    mov eax,1000
    call delay
    call waitmsg
    call clrscr

    ret
diplay_end_screen endp

;LIVES UPDATE
lives_update proc

 mov dl,110
 mov dh,0
 call gotoxy
 mov eax, yellow
 call settextcolor
 mov edx,offset livesString
 mov ecx,lengthof livesString
 call writestring
  mov eax, cyan
 call settextcolor
 mov dl,116
 mov dh,0
 call gotoxy
 mov al,32
 call writechar
 call writechar
 call writechar
 mov dl,116
 mov dh,0
 call gotoxy
 mov cl, lives
 mov al,'$'
 loop2:
     call writechar
 loop loop2
  ret

lives_update endp

;INITAL SCREEN
InitialiseScreen proc

    ;INVOKE PlaySound, OFFSET deviceConnect, NULL, 0
    ;MAIN SCREEN
    mov dl,10 
    mov dh,10
    ;mov eax,offset ZUMA_ART
    mov eax,red
    call settextcolor
    call gotoxy
    mov edx,offset ZUMA_ART
    call writestring
    call waitmsg
    call clrscr

    ;NAME INPUT
    mov dh,0
    mov dl,0
    mov eax,yellow
    call settextcolor
    call gotoxy
    mov edx,offset prompt1
    mov ecx,lengthof prompt1
    call writestring
    mov edx,offset names
    mov ecx,20
    mov eax,cyan
    call settextcolor
    call readstring
    call clrscr

    ;START MENU
    point1:
        mov dl,70
        mov dh,3
        mov eax,red
        call settextcolor
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,1
    jmp start_tab

    point2:
        mov dl,80
        mov dh,12
        mov eax,blue
        call settextcolor
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,2
    jmp start_tab

    point3:
        mov dl,70
        mov dh,22
        mov eax,green
        call settextcolor
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,3
    jmp start_tab


    start_tab:
    mov dl,0
    mov dh,1
    mov eax,red
    call settextcolor
    call gotoxy
    mov edx,offset START
    call writestring

    mov dl,0
    mov dh,10
    mov eax,blue
    call settextcolor
    call gotoxy
    mov edx,offset INSTRUCTIONS
    call writestring

    mov dl,0
    mov dh,20
    mov eax,green
    call settextcolor
    call gotoxy
    mov edx,offset EXITED
    call writestring
    

    call readchar
    call clrscr
    cmp al,'1'
    je point1
    cmp al,'2'
    je point2
    cmp al,'3'
    je point3
    cmp al,13
    je selection


    selection:
    cmp menuSelect,1
    je startGame
    cmp menuSelect,2
    je INSTRUCTIONSSCREEN
    cmp menuSelect,3
    je exitGame


    INSTRUCTIONSSCREEN:
    mov dl,0 
    mov dh,0
    call gotoxy
    mov edx,offset INSTRUCTIONS_SCREEN
    call writestring
    call readchar
    call clrscr
    cmp al,27
    je point2
    jmp INSTRUCTIONSSCREEN


    startGame:
    call level_changer



    exitGame:
    call diplay_end_screen
    ret

InitialiseScreen endp

level_1 proc
    call draw_balls

    call make_square
    call DrawWall
    call lives_update
    call draw_update_score
    mov eax, brown + (black * 16)
    mov fire_color, al
    call PrintPlayer
    call draw_name
    call draw_level 

    ; Call Player Cannon movement function(this function is recursive, and will repeat until the game is either won or lost)
    call MovePlayer
    
    ret
level_1 endp


reInitialize proc

mov temp,0
mov temporary,0
mov temp2,0
mov temp3,0
mov addressTemp,0
mov x ,0
mov y,0

    mov xDir ,0
    mov yDir ,0

    mov inputChar , 0
    mov direction , "d"


    ;ball color 1
    mov current_color, 4   ; Default player color (red)

    mov emitter_color1, 0  ; Green
    mov emitter_color2, 0  ; Red

    ;ball color 2
    mov fire_color ,14     ; Fire symbol color (Yellow)
    mov old_fire_color ,14     ; Fire symbol color (Yellow)
    mov dummy_old_fire_color , 0     ; Fire symbol color (Yellow)
    mov bullet_x_value , 0
    mov bullet_y_value, 0
    mov bool_hit_check , 0


    ; Emitter properties
    mov emitter_symbol , "#"
    mov emitter_row ,0    ; Two rows above player (fixed row for emitter)
    mov emitter_col , 1    ; Starting column of the emitter

    ; Fire symbol properties (fired from player)

    mov fire_row ,0        ; Fire will be fired from the player's position
    mov fire_col ,0        ; Initial fire column will be set in the update logic

    
    ; Counter variables for loops
    mov counter1 ,0
    mov counter2 ,0

    mov currX , 0
    mov currY , 0

    ;BallArray DW 200 DUP(?)   ; Array to hold x, y, and color (maximum 33 balls)



    mov CurrentBallIndex , 0     ; Tracks the next free slot
    mov currentBalls , 0
    mov move_to , 0

    mov RightBoundary , 97      ; Right-most x position (adjust as needed)
    mov orgRightBoundary , 97      ; Right-most x position (adjust as needed)
    mov RightBoundary2, 96      ; Right-most x position (adjust as needed)
    mov orgRightBoundary2, 96      ; Right-most x position (adjust as needed)

    mov LeftBoundary , 19         ; Left-most x position (adjust as needed)
    mov orgLeftBoundary , 19         ; Left-most x position (adjust as needed)
    mov LeftBoundary2, 20         ; Left-most x position (adjust as needed)
    mov orgLeftBoundary2, 20         ; Left-most x position (adjust as needed)

    mov DownBoundary, 26      ; Right-most x position (adjust as needed)
    mov orgDownBoundary, 26      ; Right-most x position (adjust as needed)
    mov UpBoundary, 5         ; Left-most x position (adjust as needed)
    mov orgUpBoundary, 5         ; Left-most x position (adjust as needed)

    mov xDirection , 1           ; 1 = moving right, -1 = moving left
    mov yDirection , 1           ; 1 = moving right, -1 = moving left
    mov bool_right_check , 0
    mov bool_left_check , 0

    mov tempval , 0
    mov change_temp , 0
    mov case_bool , 0
    mov l11_count , 0
    mov check_bit , 0
    mov check_bool_bit , 0

    mov continue ,0


    mov RightBoundary_bool, 0
    mov DownBoundary_bool, 0
    mov LeftBoundary_bool, 0
    mov UpBoundary_bool, 0

    mov yes_change_bit, 0
    mov level_2_count, 0
    mov change_bit_2, 0

    
    mov level_1_end_bit, 0
    mov level_2_end_bit, 0
    mov shouldDec, 0
    mov pause_bit, 0

    ret
reInitialize endp

continue_screen proc

call clrscr
mov dl,50
mov dh,10
mov eax, yellow
call settextcolor
call gotoxy
mov edx,offset CONTINUE_ART
call writestring
call waitmsg
call clrscr

ret

continue_screen endp

level_2 proc

    call draw_balls
    call make_square
    call DrawWall
    call lives_update
    call draw_update_score
    mov eax, brown + (black * 16)
    mov fire_color, al
    call PrintPlayer
    call draw_name
    call draw_level 

    ; Call Player Cannon movement function(this function is recursive, and will repeat until the game is either won or lost)
    call MovePlayer
    
    ret



level_2 endp

right_down proc

mov esi, offset temp_vals
mov [esi] ,bl
mov [esi + 1], dl

push dx

mov dh, dl
mov dl, bl
call gotoxy
mwrite " "

pop dx

comment @
cmp yes_change_bit, 1
jne simple
add bl, 4
jmp not_simple
simple:
inc bl
not_simple:
inc dl
@

inc bl

mov word ptr[BallArray + ax - 8], bx  ;x
mov word ptr[BallArray + ax - 6], dx  ;y

mov cl, currentBalls
dec cl
sub ax, 8
l1:

push dx

mov dl, byte ptr[BallArray + ax - 8]
mov dh, byte ptr[BallArray + ax - 6]
call gotoxy
mwrite " "

pop dx

mov bx, word ptr[BallArray + ax - 8] ;x
mov dx, word ptr[BallArray + ax - 6] ;y
mov [esi + 2], bl
mov [esi + 3], dl
mov bl, [esi] ;x
mov dl, [esi + 1] ;y
mov word ptr[BallArray + ax - 8], bx ;x
mov word ptr[BallArray + ax - 6], dx ;y
mov bl, [esi + 2] ;x
mov dl, [esi + 3] ;y
mov [esi ], bl ;x
mov [esi + 1], dl ;y
sub ax, 8

loop l1

ret
right_down endp


left_down proc

cmp yes_change_bit, 1
jne pin
mov yes_change_bit, 0

pin:
push ecx
mov cl,0
mov esi, offset temp_vals
mov byte ptr[esi], cl
mov byte ptr[esi+1], cl
mov byte ptr[esi+2], cl
mov byte ptr[esi+3], cl
pop ecx

mov [esi] ,bl
mov [esi + 1], dl

push dx

mov dh, dl
mov dl, bl
call gotoxy
mwrite " "

pop dx



;sub bl, 3
inc dl

mov word ptr[BallArray + ax - 8], bx  ;x
mov word ptr[BallArray + ax - 6], dx  ;y

mov cl, currentBalls
dec cl
sub ax, 8
l1:

push dx

mov dl, byte ptr[BallArray + ax - 8]
mov dh, byte ptr[BallArray + ax - 6]
call gotoxy
mwrite " "

pop dx

mov bx, word ptr[BallArray + ax - 8] ;x
mov dx, word ptr[BallArray + ax - 6] ;y
mov [esi + 2], bl
mov [esi + 3], dl
mov bl, [esi] ;x
mov dl, [esi + 1] ;y
mov word ptr[BallArray + ax - 8], bx ;x
mov word ptr[BallArray + ax - 6], dx ;y
mov bl, [esi + 2] ;x
mov dl, [esi + 3] ;y
mov [esi ], bl ;x
mov [esi + 1], dl ;y
sub ax, 8

loop l1

ret
left_down endp

left_up proc

push ecx
mov cl,0
mov esi, offset temp_vals
mov byte ptr[esi], cl
mov byte ptr[esi+1], cl
mov byte ptr[esi+2], cl
mov byte ptr[esi+3], cl
pop ecx

mov [esi] ,bl
mov [esi + 1], dl

push dx

mov dh, dl
mov dl, bl
call gotoxy
mwrite " "

pop dx


sub bl, 1
;dec dl

mov word ptr[BallArray + ax - 8], bx  ;x
mov word ptr[BallArray + ax - 6], dx  ;y

mov cl, currentBalls
dec cl
sub ax, 8
l1:

push dx

mov dl, byte ptr[BallArray + ax - 8]
mov dh, byte ptr[BallArray + ax - 6]
call gotoxy
mwrite " "

pop dx

mov bx, word ptr[BallArray + ax - 8] ;x
mov dx, word ptr[BallArray + ax - 6] ;y
mov [esi + 2], bl
mov [esi + 3], dl
mov bl, [esi] ;x
mov dl, [esi + 1] ;y
mov word ptr[BallArray + ax - 8], bx ;x
mov word ptr[BallArray + ax - 6], dx ;y
mov bl, [esi + 2] ;x
mov dl, [esi + 3] ;y
mov [esi ], bl ;x
mov [esi + 1], dl ;y
sub ax, 8

loop l1

ret
left_up endp

right_up proc

push ecx
mov cl,0
mov esi, offset temp_vals
mov byte ptr[esi], cl
mov byte ptr[esi+1], cl
mov byte ptr[esi+2], cl
mov byte ptr[esi+3], cl
pop ecx

mov [esi] ,bl
mov [esi + 1], dl

push dx

mov dh, dl
mov dl, bl
call gotoxy
mwrite " "

pop dx


;add bl, 4
dec dl

mov word ptr[BallArray + ax - 8], bx  ;x
mov word ptr[BallArray + ax - 6], dx  ;y

mov cl, currentBalls
dec cl
sub ax, 8
l1:

push dx

mov dl, byte ptr[BallArray + ax - 8]
mov dh, byte ptr[BallArray + ax - 6]
call gotoxy
mwrite " "

pop dx

mov bx, word ptr[BallArray + ax - 8] ;x
mov dx, word ptr[BallArray + ax - 6] ;y
mov [esi + 2], bl
mov [esi + 3], dl
mov bl, [esi] ;x
mov dl, [esi + 1] ;y
mov word ptr[BallArray + ax - 8], bx ;x
mov word ptr[BallArray + ax - 6], dx ;y
mov bl, [esi + 2] ;x
mov dl, [esi + 3] ;y
mov [esi ], bl ;x
mov [esi + 1], dl ;y
sub ax, 8

loop l1

ret
right_up endp


move_balls_level_2 proc

mov al, currentBalls
mov bl, 8
mul bl
mov bx, word ptr[BallArray + ax - 8] ;x
mov dx, word ptr[BallArray + ax - 6] ;y


cmp dx, 15
jne nah
cmp bx, 80
jne nah
mov level_2_end_bit, 1
jmp noin
nah:

cmp bx, RightBoundary2
jge case_2
cmp RightBoundary_bool, 1
je case_2
call right_down
call draw_moved_balls
jmp end_case

case_2:
mov RightBoundary_bool, 1

cmp dx, DownBoundary
jge case_3
cmp DownBoundary_bool, 1
jge case_3
call left_down
call draw_moved_balls
jmp end_case

case_3:
mov DownBoundary_bool, 1

cmp bx, LeftBoundary2
jle case_4
cmp LeftBoundary_bool, 1
je case_4
call left_up
call draw_moved_balls
jmp end_case

case_4:
mov LeftBoundary_bool, 1

cmp dx, UpBoundary
jle change_b
jmp noin1
change_b:
mov change_bit_2, 1
jmp end_case
noin1:
cmp UpBoundary_bool, 1
je end_case
call right_up
call draw_moved_balls

end_case:

cmp change_bit_2, 1
jne noin
mov UpBoundary_bool, 0
mov DownBoundary_bool, 0
mov RightBoundary_bool, 0
mov LeftBoundary_bool, 0

sub RightBoundary2, 1
sub DownBoundary, 1
add LeftBoundary2, 1
add UpBoundary, 1
mov change_bit_2, 0

noin:
ret
ret
move_balls_level_2 endp



move_balls_level_3 proc

mov al, currentBalls
mov bl, 8
mul bl
mov bx, word ptr[BallArray + ax - 8] ;x
mov dx, word ptr[BallArray + ax - 6] ;y


cmp dx, 15
jne nah
cmp bx, 59
jne nah
mov level_3_end_bit, 1
jmp noin
nah:


;yellow
cmp dx, 18
je checkch
cmp dx, 13
je checkch
jmp nahnop

checkch:

cmp bx, 25
jl nahnop
cmp bx, 36
jg nahnop

push eax
push ebx
push ecx
push edx
call make_tunnels
pop edx
pop ecx
pop ebx
pop eax
jmp nahnop2
nahnop:

;red
cmp dx, 18
je chch1
cmp dx, 13
je chch1
jmp nahnop2

chch1:
cmp bx, 83
jl nahnop2
cmp bx, 93
jg nahnop2

push eax
push ebx
push ecx
push edx
call make_tunnels
pop edx
pop ecx
pop ebx
pop eax

nahnop2:



cmp bx, RightBoundary2
jge case_2
cmp RightBoundary_bool, 1
je case_2
call right_down
call draw_moved_balls
jmp end_case

case_2:
mov RightBoundary_bool, 1

cmp dx, DownBoundary
jge case_3
cmp DownBoundary_bool, 1
jge case_3
call left_down
call draw_moved_balls
jmp end_case

case_3:
mov DownBoundary_bool, 1

cmp bx, LeftBoundary2
jle case_4
cmp LeftBoundary_bool, 1
je case_4
call left_up
call draw_moved_balls
jmp end_case

case_4:
mov LeftBoundary_bool, 1

cmp dx, UpBoundary
jle change_b
jmp noin1
change_b:
mov change_bit_2, 1
jmp end_case
noin1:
cmp UpBoundary_bool, 1
je end_case
call right_up
cmp t_bit, 1 
jne simsim
mov t_bit,0 
simsim:
call draw_moved_balls

end_case:

cmp change_bit_2, 1
jne noin
mov UpBoundary_bool, 0
mov DownBoundary_bool, 0
mov RightBoundary_bool, 0
mov LeftBoundary_bool, 0

sub RightBoundary2, 2
sub DownBoundary, 1
add LeftBoundary2, 2 
add UpBoundary, 1
mov change_bit_2, 0
sub ballSpeed, 3

noin:
ret
ret
move_balls_level_3 endp

make_tunnels proc
    mov dl, 83          ; Starting X position
    mov dh, 13          ; Starting Y position
    mov eax, red
    call settextcolor    ; Set color

    ; Print each line of the tunnel
    call gotoxy

    call gotoxy
    mwrite '|_-_-_-_-_|'
    inc dh
    call gotoxy
    mwrite '|_-_-_-_-_|'
    inc dh
    call gotoxy
    mwrite '|_-_-_-_-_|'
    inc dh
    call gotoxy
    mwrite '|_-_-_-_-_|'
    inc dh
    call gotoxy
    mwrite '|_-_-_-_-_|'
    inc dh



    mov dl, 25          ; Starting X position
    mov dh, 13          ; Starting Y position
    mov eax, yellow
    call settextcolor    ; Set color

    ; Print each line of the tunnel
    call gotoxy

    call gotoxy
    mwrite '|_-_-_-_-_|'
    inc dh
    call gotoxy
    mwrite '|_-_-_-_-_|'
    inc dh
    call gotoxy
    mwrite '|_-_-_-_-_|'
    inc dh
    call gotoxy
    mwrite '|_-_-_-_-_|'
    inc dh
    call gotoxy
    mwrite '|_-_-_-_-_|'
    inc dh

    ret
make_tunnels endp


level_3 proc

    call draw_balls
    call make_square
    call DrawWall
    call lives_update
    call draw_update_score
    mov eax, brown + (black * 16)
    mov fire_color, al
    call PrintPlayer
   call make_tunnels
    call draw_name
    call draw_level 


    ; Call Player Cannon movement function(this function is recursive, and will repeat until the game is either won or lost)
    call MovePlayer
    
    ret

level_3 endp

level_changer proc


;LEVEL 1
mov dl,50
mov dh,10
mov eax, cyan
call settextcolor
call gotoxy
mov edx,offset level_1_ascii
call writestring
call waitmsg
call clrscr
call level_1

cmp pause_bit, -1
jne go_simple
ret
go_simple:

cmp shouldDec, 1
je dont_dec1
sub lives, 1
mov [level_pass_fail], 0
jmp didnt_pass
dont_dec1:
mov [level_pass_fail], 1
didnt_pass:

call reInitialize
call continue_screen


inc levelVal

;LEVEL 2
mov dl,50
mov dh,10
mov eax, cyan
call settextcolor
call gotoxy
mov edx,offset level_2_ascii
call writestring
call waitmsg
call clrscr
call level_2

cmp pause_bit, -1
jne go_simple1
ret
go_simple1:

cmp shouldDec, 1
je dont_dec
sub lives, 1
mov [level_pass_fail + 1], 0
jmp didnt_pass1
dont_dec:
mov [level_pass_fail + 1], 1
didnt_pass1:

call reInitialize
call continue_screen

inc levelVal

;LEVEL 3
mov dl,50
mov dh,10
mov eax, cyan
call settextcolor
call gotoxy
mov edx,offset level_3_ascii
call writestring
call waitmsg
call clrscr
call level_3


cmp shouldDec, 1
je dont_dec2
sub lives, 1
mov [level_pass_fail + 2], 0
jmp didnt_pass2
dont_dec2:
mov [level_pass_fail + 2], 1
didnt_pass2:


ret

level_changer endp


comment @
name1 BYTE "Name : ",0
nameStr db 10 dup(0);

level1 BYTE "Level : ",0
levelVal db 1

name1 BYTE "Name : ",0
prompt1 db "Enter your name:",0
names db 20 dup (32)
strName db "Name:",0
@

draw_name proc

mov dl,40
mov dh,0
mov eax, yellow
call settextcolor
call gotoxy
mov edx, offset name1
call writestring
mov eax, cyan
call settextcolor
mov edx, offset names
call writestring;

ret

draw_name  endp

draw_level proc

mov dl,80
mov dh,0
mov eax, yellow
call settextcolor
call gotoxy
mov edx, offset level1
call writestring
mov eax, cyan
call settextcolor
mov al, levelVal
call writeint;

ret

draw_level endp

pause_screen proc
mov pause_bit, 1

    call clrscr
    point1:
        mov dl,85
        mov dh,7
        mov eax,red
        call settextcolor
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,1
    jmp start_tab

    point2:
        mov dl,88
        mov dh, 14
        mov eax,blue
        call settextcolor
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,2
    jmp start_tab

     point3:
        mov dl,63
        mov dh, 22
        mov eax,yellow
        call settextcolor
        call gotoxy
        mov edx,offset POINTER
        call writestring
        mov menuSelect,3
    jmp start_tab


    start_tab:
    mov dl,0
    mov dh,5
    mov eax,red
    call settextcolor
    call gotoxy
    mov edx,offset RESUME
    call writestring

    mov dl,0
    mov dh,12
    mov eax,blue
    call settextcolor
    call gotoxy
    mov edx,offset SKIP_LEVEL
    call writestring

    mov dl,0
    mov dh,19
    mov eax,yellow
    call settextcolor
    call gotoxy
    mov edx,offset EXITED11
    call writestring

    call readchar
    call clrscr
    cmp al,'1'
    je point1
    cmp al,'2'
    je point2
    cmp al,'3'
    je point3
    cmp al,13
    je selection


    selection:
    cmp menuSelect,1
    je resumeGame

    cmp menuSelect,2
    jne check_other

    mov pause_bit, -2
    ret

    check_other:
    mov pause_bit, -1
    jmp bas

    resumeGame:
    mov pause_bit, 0
    call make_square
    call DrawWall
    call lives_update
    call draw_update_score
    call PrintPlayer
    cmp levelVal, 3
    jne simo
    call make_tunnels
    simo:
    call draw_name
    call draw_level 

    bas:
    ret


pause_screen endp

;MOVE PLAYER
MovePlayer PROC
    

    ;call clrscr
    ;call make_square
    ;call DrawWall
    ;call PrintPlayer
    ;call lives_update
    ;call draw_update_score
    ;call draw_balls

    mov dx, 0
    call GoToXY

    checkInput:

    cmp currentBalls, 0
    jne check_other
    jmp donedone
    check_other:
    jg endedfirst
    donedone:
    mov shouldDec,1
    jmp ended
    endedfirst:

    cmp level_1_end_bit, 1
    je ended

    cmp level_2_end_bit, 1
    je ended

    cmp level_3_end_bit, 1
    je ended

    cmp levelVal, 1
    jne check_level_2
    mov eax, 50
    call Delay
    call move_balls
    jmp nothing

    check_level_2:
    cmp levelVal, 2
    jne check_level_3
    mov eax, 50
    call Delay
    call move_balls_level_2
    jmp nothing

    check_level_3:
    cmp levelVal, 3
    jne ended
    mov eax, ballSpeed
    call Delay
    call move_balls_level_3

    nothing:


    ; Check for key press
    mov eax, 0
    call ReadKey
    mov inputChar, al

    cmp inputChar, VK_SPACE
    jne pass
    cmp levelVal, 3
    jne smpl
    cmp power_up_counter, 2
    jne smpl
    mov power_bit, 1
    smpl:
    jmp shoot
    pass:

    cmp inputChar, VK_ESCAPE
    je paused

    cmp inputChar, "w"
    je move

    cmp inputChar, "a"
    je move

    cmp inputChar, "x"
    je move

    cmp inputChar, "d"
    je move

    cmp inputChar, "q"
    je move

    cmp inputChar, "e"
    je move

    cmp inputChar, "z"
    je move

    cmp inputChar, "c"
    je move

    ; if character is invalid, check for a new keypress
    jmp checkInput

    move:
        mov al, inputChar
        mov direction, al
        jmp chosen

    paused:

        call pause_screen
        
        cmp pause_bit, -2
        jne choth
        mov pause_bit, 0
        ret
        choth:
        cmp pause_bit, -1
        jne res
        ret
        res:
        jmp checkInput



        
    shoot:
        call FireBall

    chosen:
        call PrintPlayer
        call MovePlayer


        ended:
    ret
MovePlayer ENDP

;FIRE BALL
FireBall PROC
    ; Fire a projectile from the player's current face direction

    mov dl, xPos      ; Fire column starts at the player's X position
    mov dh, yPos      ; Fire row starts at the player's Y position

    mov fire_col, dl  ; Save the fire column position
    mov fire_row, dh  ; Save the fire row position

    mov al, direction
    cmp al, "w"
    je fire_up

    cmp al, "x"
    je fire_down

    cmp al, "a"
    je fire_left

    cmp al, "d"
    je fire_right

    cmp al, "q"
    je fire_upleft

    cmp al, "e"
    je fire_upright

    cmp al, "z"
    je fire_downleft

    cmp al, "c"
    je fire_downright

    jmp end_fire

fire_up:
    mov fire_row, 13         ; Move fire position upwards
    mov fire_col, 57         ; Center fire position
    mov xDir, 0
    mov yDir, -1
    jmp fire_loop

fire_down:
    mov fire_row, 17         ; Move fire position downwards
    mov fire_col, 57         ; Center fire position
    mov xDir, 0
    mov yDir, 1
    jmp fire_loop

fire_left:
    mov fire_col, 55         ; Move fire position leftwards
    mov fire_row, 15         ; Center fire position
    mov xDir, -1
    mov yDir, 0
    jmp fire_loop

fire_right:
    mov fire_col, 59         ; Move fire position rightwards
    mov fire_row, 15         ; Center fire position
    mov xDir, 1
    mov yDir, 0
    jmp fire_loop

fire_upleft:
    mov fire_row, 13         ; Move fire position upwards
    mov fire_col, 55         ; Move fire position leftwards
    mov xDir, -1
    mov yDir, -1
    jmp fire_loop

fire_upright:
    mov fire_row, 13         ; Move fire position upwards
    mov fire_col, 59         ; Move fire position rightwards
    mov xDir, 1
    mov yDir, -1
    jmp fire_loop

fire_downleft:
    mov fire_row, 17         ; Move fire position downwards
    mov fire_col, 55         ; Move fire position leftwards
    mov xDir, -1
    mov yDir, 1
    jmp fire_loop

fire_downright:
    mov fire_row, 17         ; Move fire position downwards
    mov fire_col, 59         ; Move fire position rightwards
    mov xDir, 1
    mov yDir, 1
    jmp fire_loop

fire_loop:
    ; Initialise fire position
    mov dl, fire_col
    mov dh, fire_row
    call GoToXY
   

    ; Loop to move the fireball in the current direction
    L1:

        ; Ensure fire stays within the bounds of the emitter wall
        cmp dl, 20            ; Left wall boundary
        jle end_fire

        cmp dl, 96            ; Right wall boundary
        jge end_fire

        cmp dh, 4             ; Upper wall boundary
        jle end_fire

        cmp dh, 26            ; Lower wall boundary
        jge end_fire

        cmp levelVal, 3
        jne keep_on

        cmp dh, 13
        jl dont_check

        cmp dh, 15
        jg dont_check

        cmp dl, 36
        jne check2nd
        jmp end_fire

        check2nd:
        cmp dl, 82
        je end_fire        
        dont_check:

        keep_on:

        ; Print the fire symbol at the current position
        movzx eax, fire_color    ; Set fire color
        mov old_fire_color,al
        call SetTextColor

        add dl, xDir
        add dh, yDir
        call Gotoxy
        mov bullet_x_value, dl
        mov bullet_y_value, dh

        mWrite "O"

        ; Continue moving fire in the current direction (recursive)
        mov eax, 15
        call Delay

        ; erase the fire before redrawing it
        call GoToXY
        mWrite " "

        push dx
        call check_collison
        pop dx
        cmp bool_hit_check, 1
        jne nops
        push eax
        mov eax, 50
        call Delay
        call move_balls
        pop eax
        mov bool_hit_check, 0
        jmp end_fire
        nops:

        jmp L1

    end_fire:


        call ChooseValue
        mov fire_color, al
        mov dx, 0
        call GoToXY

    ret
FireBall ENDP

check_collison proc

comment @
    mov cl,currentBalls 
mov ax ,0
mov bx, 0

l1:

mov dl, byte ptr[BallArray + ax]
add ax, 2
mov dh, byte ptr[BallArray + ax]
add ax, 2
mov ax, word ptr[BallArray + ax]
call gotoxy
call settextcolor
mwrite "O"
add bx, 8
mov ax, bx

loop l1


  bullet_x_value db 0
            bullet_y_value db 0
@

    movzx cx,currentBalls 
    mov ax, 0
    push bx
    mov bl, currentBalls
    mov l11_count, bl
    pop bx

    l11:

      mov dl, byte ptr[BallArray + ax]
      mov dh, byte ptr[BallArray + ax + 2]

      cmp dh, bullet_y_value
      jne doesnt_hit
      cmp dl, bullet_x_value
      jne doesnt_hit
      mov bool_hit_check,1

      push cx
      push ax
      push bx
      mov bl, old_fire_color
      mov dummy_old_fire_color, bl
      pop bx

      l22:

      mov bl, byte ptr[BallArray + ax + 4]
      push bx
      mov bl,old_fire_color 
      mov byte ptr[BallArray + ax + 4], bl
      pop bx
      mov old_fire_color, bl

      add ax, 8

      loop l22

      jmp nop_bud

      yes_bud:
      loop l11

      nop_bud:

      ;cords
      mov dl, byte ptr[BallArray + ax - 8]
      mov dh, byte ptr[BallArray + ax - 16]

      cmp dh, dl
      ja yess
      inc dl
      jmp done_yess

      yess:
      dec dl
      done_yess:
      mov dh, byte ptr[BallArray + ax - 6]
      mov byte ptr[BallArray + ax], dl
      mov byte ptr[BallArray + ax + 2], dh

      ;color
      push bx
      mov bl, old_fire_color
      mov byte ptr[BallArray + ax + 4], bl
      pop bx
      
      ;xy
      mov dl, byte ptr[BallArray + ax - 2]
      mov dh, byte ptr[BallArray + ax -1]
      mov byte ptr[BallArray + ax + 6], dl
      mov byte ptr[BallArray + ax + 7], dh


      pop ax

      add currentBalls, 1 
      call chain_reaction

      pop cx

      jmp end_loop

      doesnt_hit:
      sub l11_count,1

      add ax, 8
    
    cmp ecx, 1
    jne yes_bud

end_loop:
ret

check_collison endp


chain_reaction proc

push eax
mov eax, 50
call Delay
call move_balls
pop eax

call check_case1
cmp case_bool, 1
je done_with_chain

call check_case2
cmp case_bool, 1
je done_with_chain

call check_case3
cmp case_bool, 1
je done_with_chain

;add currentBalls,1
jmp not_done_case

done_with_chain:
cmp power_bit, 1
jne simple_score
add score, 5
mov power_up_counter, 0
mov power_bit, 0
jmp added
simple_score:
add score, 1
cmp levelVal, 3
jne noppower
add power_up_counter, 1
noppower:
added:
call draw_update_score
mov case_bool, 0
;add currentBalls,1
push eax
mov eax, 50
call Delay
call move_balls
pop eax


not_done_case:
ret

chain_reaction endp

check_case1 proc

cmp power_bit, 1
jne simple_case
jmp done_done
simple_case:
mov dl, byte ptr[BallArray + ax - 4]
mov dh, byte ptr[BallArray + ax + 12]
cmp dummy_old_fire_color, dl
jne nopnop
cmp dummy_old_fire_color, dh
jne nopnop

done_done:
sub ax, 8
mov case_bool, 1
movzx cx, l11_count

push edx
l1:
push ecx


mov cx, word ptr[BallArray + ax + 28]
mov word ptr[BallArray + ax + 4], cx

pop ecx
add ax, 8
loop l1

pop edx
sub currentBalls, 4

nopnop:
ret

check_case1 endp

check_case2 proc
push ax

mov dl, byte ptr[BallArray + ax + 12]
mov dh, byte ptr[BallArray + ax + 20]
cmp dummy_old_fire_color, dl
jne nopnop
cmp dummy_old_fire_color, dh
jne nopnop

mov case_bool, 1
movzx cx, l11_count

push edx
l1:
push ecx

mov cx, word ptr[BallArray + ax + 28]
mov word ptr[BallArray + ax + 4], cx

pop ecx
add ax, 8
loop l1

pop edx
sub currentBalls, 4

nopnop:
pop ax
ret

check_case2 endp

check_case3 proc
push ax

mov dl, byte ptr[BallArray + ax - 4]
mov dh, byte ptr[BallArray + ax - 12]
cmp dummy_old_fire_color, dl
jne nopnop
cmp dummy_old_fire_color, dh
jne nopnop
sub ax, 16

mov case_bool, 1
movzx cx, l11_count

push edx
l1:
push ecx


mov cx, word ptr[BallArray + ax + 28]
mov word ptr[BallArray + ax + 4], cx

pop ecx
add ax, 8
loop l1

pop edx
sub currentBalls, 4

nopnop:
pop ax
ret

check_case3 endp


;DRAW WALL
DrawWall PROC

    mov eax, gray + (black*16)
	call SetTextColor

	mov dl, 19
	mov dh, 3
	call Gotoxy

	mov esi, offset walls

	mov counter1, 50
	mov counter2, 80
	movzx ecx, counter1
	printcolumn:
		mov counter1, cl
		movzx ecx, counter2
		printrow:
			mov eax, [esi]
			call WriteChar
            
			inc esi
		loop printrow
		
        dec counter1
		movzx ecx, counter1

		mov dl, 19
		inc dh
		call Gotoxy
	loop printcolumn

	ret
DrawWall ENDP

;PLAYER PRINTING
PrintPlayer PROC
    movzx eax, fire_color
    call SetTextColor

    mov al, direction
    cmp al, "w"
    je print_up

    cmp al, "x"
    je print_down

    cmp al, "a"
    je print_left

    cmp al, "d"
    je print_right

    cmp al, "q"
    je print_upleft

    cmp al, "e"
    je print_upright

    cmp al, "z"
    je print_downleft

    cmp al, "c"
    je print_downright

    ret

    print_up:
        mov esi, offset player_up
        jmp print

    print_down:
        mov esi, offset player_down
        jmp print

    print_left:
        mov esi, offset player_left
        jmp print

    print_right:
        mov esi, offset player_right
        jmp print

    print_upleft:
        mov esi, offset player_upleft
        jmp print

    print_upright:
        mov esi, offset player_upright
        jmp print

    print_downleft:
        mov esi, offset player_downleft
        jmp print

    print_downright:
        mov esi, offset player_downright
        jmp print

    print:
    mov dl, xPos
    mov dh, yPos
    call GoToXY

    mov counter1, 3
	mov counter2, 4
	movzx ecx, counter1
	printcolumn:
		mov counter1, cl
		movzx ecx, counter2
		printrow:
			mov eax, [esi]
			call WriteChar
            
			inc esi
		loop printrow

		movzx ecx, counter1

		mov dl, xPos
		inc dh
		call Gotoxy
	loop printcolumn
    
ret
PrintPlayer ENDP

draw_balls proc
    
    ;    BallArray DW 100 DUP(?)   ; Array to hold x, y, and color (maximum 33 balls)
    ;    CurrentBallIndex DW 0     ; Tracks the next free slot
    ;	mov dl, 19
	;   mov dh, 3


    cmp levelVal, 1
    jne check_l2
    mov ecx, 20
    mov ax, 20   ;x
    mov dx, 5  ;y
    jmp noing

    check_l2:
    cmp levelVal, 2
    jne check_l3
    mov ecx, 20
    mov ax, 20  ;x
    mov dx, 4  ;y
    jmp noing

    check_l3:
    cmp levelVal, 3
    jne nopinop
    mov ecx, 20
    mov ax, 20  ;x
    mov dx, 4  ;y

    noing:

    l1:

    mov bx, CurrentBallIndex
    shl bx,1
    mov tempval, cx
    mov cx, bx

    mov word ptr[BallArray + cx], ax ; x-cord
    mov currX, ax
    add cx,2

    mov word ptr[BallArray + cx], dx ; y-cord
    mov currY, dx
    add cx,2

    push cx
    call ChooseValue
    call settextcolor
    pop cx
    mov word ptr[BallArray + cx], ax  ; col
    add cx, 2

    mov al, xDirection
    mov byte ptr[BallArray + cx], al  ; x-direction
    add cx, 1

    mov al, yDirection
    mov byte ptr[BallArray + cx], al  ; y-direction

    add currentBalls, 1

    call gettextcolor
    
    jmp buddy
    buddy_again:

    loop l1

    buddy:

; Check and set color
cmp al, 0
je choose_color_black
cmp al, 1
je choose_color_blue
cmp al, 2
je choose_color_green
cmp al, 3
je choose_color_cyan
cmp al, 4
je choose_color_red
cmp al, 5
je choose_color_magenta
cmp al, 6
je choose_color_brown
cmp al, 7
je choose_color_lightGray
cmp al, 8
je choose_color_gray
cmp al, 9
je choose_color_lightBlue
cmp al, 10
je choose_color_lightGreen
cmp al, 11
je choose_color_lightCyan
cmp al, 12
je choose_color_lightRed
cmp al, 13
je choose_color_lightMagenta
cmp al, 14
je choose_color_yellow
cmp al, 15
je choose_color_white


choose_color_black:
mov eax, color_black
call settextcolor
jmp choosen

choose_color_blue:
mov eax, color_blue
call settextcolor
jmp choosen

choose_color_green:
mov eax, color_green
call settextcolor
jmp choosen

choose_color_cyan:
mov eax, color_cyan
call settextcolor
jmp choosen

choose_color_red:
mov eax, color_red
call settextcolor
jmp choosen

choose_color_magenta:
mov eax, color_magenta
call settextcolor
jmp choosen

choose_color_brown:
mov eax, color_brown
call settextcolor
jmp choosen

choose_color_lightGray:
mov eax, color_lightGray
call settextcolor
jmp choosen

choose_color_gray:
mov eax, color_gray
call settextcolor
jmp choosen

choose_color_lightBlue:
mov eax, color_lightBlue
call settextcolor
jmp choosen

choose_color_lightGreen:
mov eax, color_lightGreen
call settextcolor
jmp choosen

choose_color_lightCyan:
mov eax, color_lightCyan
call settextcolor
jmp choosen

choose_color_lightRed:
mov eax, color_lightRed
call settextcolor
jmp choosen

choose_color_lightMagenta:
mov eax, color_lightMagenta
call settextcolor
jmp choosen

choose_color_yellow:
mov eax, color_yellow
call settextcolor
jmp choosen

choose_color_white:
mov eax, color_white
call settextcolor
jmp choosen

choosen:
    

    call settextcolor
    mov dl, byte ptr[currX]
    mov dh, byte ptr[currY]
    call gotoxy
    mwrite "O"

    add CurrentBallIndex, 4
    mov ax, currX
    inc ax
    mov dx, currY
    mov cx, tempval

    cmp cx, 1
    jne buddy_again


nopinop:
    ret
draw_balls endp

change_index proc

;push eax
;push ecx

;push ebx
mov bx, RightBoundary
;movzx cx, currentBalls

;l10:

sub bl, 1
mov byte ptr[BallArray + ax], bl
mov byte ptr[BallArray + ax + 2], 19
mov byte ptr[BallArray + ax + 6], -1

;sub ax, 8

;loop l10

;pop ebx
;pop ecx
;pop eax
ret

change_index endp

sub_left proc

cmp check_bit, 0
jne done_with
push ecx
mov cx, orgLeftBoundary
mov LeftBoundary, cx
mov cx, orgRightBoundary 
mov RightBoundary, cx
pop ecx
mov check_bit, 1
mov check_bool_bit, 1
;mov move_to, 0
jmp dondone
done_with:
mov check_bool_bit, 0
dondone:
ret

sub_left endp


move_balls proc

movzx cx,currentBalls 
mov ax ,0

l1:

mov bx, word ptr[BallArray + ax]
mov dx, word ptr[BallArray + ax + 2]

push bx
push dx

; Erase previous ball position (write a blank space)
mov dl, byte ptr [BallArray + ax]
mov dh, byte ptr [BallArray + ax + 2]
call gotoxy
mwrite " "    ; Erase ball by overwriting with space

pop dx
pop bx

add bl, byte ptr[BallArray + ax + 6]

jmp bud
nobody:

loop l1

bud:

cmp bx, RightBoundary
jl check_most_left
add move_to, 1
mov bool_right_check,1
mov bool_left_check,0

;push cx
;mov cx, 1
mov byte ptr[BallArray + ax + 6], -1

add dl, byte ptr[BallArray + ax + 7]
;right_zigzag:
add bl, byte ptr[BallArray + ax + 6]
;loop right_zigzag

;pop cx



jmp no_worries

check_most_left:
cmp bx, LeftBoundary
jg no_worries


cmp byte ptr[BallArray + ax + 2], 25
jne npp
mov level_1_end_bit, 1
;mov dword ptr[BallArray + ax], 0
;mov dword ptr[BallArray + ax + 4], 0
;sub currentBalls, 1
jmp ball_ended

npp:
cmp dl, 12
jne np
call sub_left
cmp check_bool_bit, 1
je yes_body
np:
add move_to, 1

mov bool_right_check,0
mov bool_left_check,1

;push cx
;mov cx, 3
mov byte ptr[BallArray + ax + 6], 1
cmp dl, 12
jne simple_add

push ecx
mov ecx, 7
l14:
add dl, byte ptr[BallArray + ax + 7]
loop l14
;mov byte ptr[BallArray + ax + 6], -1

call change_index

pop ecx

mov bool_right_check, 0
mov bool_left_check, 0
jmp nothing_at_all

;left_zigzag:
add dl, byte ptr[BallArray + ax + 7]
;loop left_zigzag
simple_add:
add dl, byte ptr[BallArray + ax + 7]
added:
add bl, byte ptr[BallArray + ax + 6]

;pop cx

no_worries:
push ecx
mov cl, currentBalls
cmp move_to,cl
pop ecx
jne nothing
cmp bool_right_check, 1
je yes_right
cmp bool_left_check, 1
je yes_left
jmp nothing

yes_right:
add LeftBoundary, 3
mov move_to,0
jmp nothing

yes_left:
sub RightBoundary, 3
mov move_to,0

nothing:

mov word ptr[BallArray + ax],bx
mov word ptr[BallArray + ax + 2],dx
nothing_at_all:

ball_ended:
add ax, 8
yes_body:
cmp ecx, 1
jne nobody

    cmp level_1_end_bit, 1
    je everything_ended
     
    ;call clrscr
    ;call make_square
    ;call DrawWall
    ;call PrintPlayer
    ;call lives_update
    ;call draw_update_score
    call draw_moved_balls


    everything_ended:

ret
move_balls endp

draw_moved_balls proc

mov cl,currentBalls 
mov ax ,0
mov bx, 0

l1:

mov dl, byte ptr[BallArray + ax]
add ax, 2
mov dh, byte ptr[BallArray + ax]
add ax, 2
mov ax, word ptr[BallArray + ax]
call gotoxy
call settextcolor
mwrite "O"
add bx, 8
mov ax, bx

loop l1
ret

draw_moved_balls endp

Random PROC
    rdtsc                 ; Read the CPU timestamp
    xor edx, eax          ; Combine high and low parts for variability

    cmp levelVal, 1
    jne check22
    mov ecx, count1        ; Set the range (0 to count-1)
    jmp sett

    check22:
    cmp levelVal, 2
    jne check33
    mov ecx, count2        ; Set the range (0 to count-1)
    jmp sett

    check33:
    cmp levelVal, 3
    jne sett
    mov ecx, count3        ; Set the range (0 to count-1)

    sett:




    xor edx, edx          ; Clear EDX for division
    div ecx               ; Divide EAX by count
    mov eax, edx          ; EDX contains the remainder (random index)
    ret
Random ENDP

ChooseValue PROC
    call Random           ; Get a random index in EAX
    movzx eax, ax         ; Ensure EAX is zero-extended (index)

    cmp levelVal, 1
    jne check2
    mov ebx, offset randomValues1 ; Point to the start of the array
    jmp set

    check2:
    cmp levelVal, 2
    jne check3
    mov ebx, offset randomValues2 ; Point to the start of the array
    jmp set

    check3:
    cmp levelVal, 3
    jne set
    mov ebx, offset randomValues3 ; Point to the start of the array

    set:



    mov ax, [ebx + eax*2] ; Fetch the value at the random index
    ret
ChooseValue ENDP

fileHandlingFunction proc

mov ecx,20
mov ax,0
mov bx,0

l56:
mov bl, [names + ax]
cmp bl, 0
je done_with_name
mov [dataread + ax], bl
inc ax
loop l56

done_with_name:

mov bl, ','
mov [dataread + ax], bl
inc ax

mov bl, score
add bl, '0'
mov [dataread + ax], bl
inc ax

mov bl, ','
mov [dataread + ax], bl
inc ax


mov bl, [level_pass_fail]
cmp bl, 0
je write_failed

mov bl, 'p'
mov [dataread + ax], bl
inc ax
mov bl, 'a'
mov [dataread + ax], bl
inc ax
mov bl, 's'
mov [dataread + ax], bl
inc ax
mov bl, 's'
mov [dataread + ax], bl
inc ax
mov bl, 'e'
mov [dataread + ax], bl
inc ax
mov bl, 'd'
mov [dataread + ax], bl
inc ax
jmp written
write_failed:

mov bl, 'f'
mov [dataread + ax], bl
inc ax
mov bl, 'a'
mov [dataread + ax], bl
inc ax
mov bl, 'i'
mov [dataread + ax], bl
inc ax
mov bl, 'l'
mov [dataread + ax], bl
inc ax
mov bl, 'e'
mov [dataread + ax], bl
inc ax
mov bl, 'd'
mov [dataread + ax], bl
inc ax

written:
mov bl, '-'
mov [dataread + ax], bl
inc ax


mov bl, [level_pass_fail + 1]
cmp bl, 0
je write_failed1

mov bl, 'p'
mov [dataread + ax], bl
inc ax
mov bl, 'a'
mov [dataread + ax], bl
inc ax
mov bl, 's'
mov [dataread + ax], bl
inc ax
mov bl, 's'
mov [dataread + ax], bl
inc ax
mov bl, 'e'
mov [dataread + ax], bl
inc ax
mov bl, 'd'
mov [dataread + ax], bl
inc ax
jmp written1
write_failed1:

mov bl, 'f'
mov [dataread + ax], bl
inc ax
mov bl, 'a'
mov [dataread + ax], bl
inc ax
mov bl, 'i'
mov [dataread + ax], bl
inc ax
mov bl, 'l'
mov [dataread + ax], bl
inc ax
mov bl, 'e'
mov [dataread + ax], bl
inc ax
mov bl, 'd'
mov [dataread + ax], bl
inc ax

written1:
mov bl, '-'
mov [dataread + ax], bl
inc ax


mov bl, [level_pass_fail + 2]
cmp bl, 0
je write_failed3

mov bl, 'p'
mov [dataread + ax], bl
inc ax
mov bl, 'a'
mov [dataread + ax], bl
inc ax
mov bl, 's'
mov [dataread + ax], bl
inc ax
mov bl, 's'
mov [dataread + ax], bl
inc ax
mov bl, 'e'
mov [dataread + ax], bl
inc ax
mov bl, 'd'
mov [dataread + ax], bl
inc ax
jmp written3
write_failed3:

mov bl, 'f'
mov [dataread + ax], bl
inc ax
mov bl, 'a'
mov [dataread + ax], bl
inc ax
mov bl, 'i'
mov [dataread + ax], bl
inc ax
mov bl, 'l'
mov [dataread + ax], bl
inc ax
mov bl, 'e'
mov [dataread + ax], bl
inc ax
mov bl, 'd'
mov [dataread + ax], bl
inc ax

written3:

mov bl, ' '
mov [dataread + ax], bl
inc ax

mov datareadbytes,al
mov edx,offset filename
call openinputfile
mov eax,filehandle
mov edx,offset readfile1
mov ecx,255
call readfromfile
jc showreaderror
mov bytesread,eax
mwrite "file read"
mov eax,filehandle
call closefile
jmp writetof
showreaderror:
;mwrite "Error to read"
writetof:
mov esi,offset readfile1
sub esi,1
mov ebx, bytesread
inc ebx
add esi,ebx
mov edi,offset dataread
mov ecx,0
mov cl,datareadbytes
l1:
mov dl,[edi]
mov [esi],dl
inc esi
inc edi
loop l1
mov edx,offset filename
call createoutputfile
mov filehandle,eax
mov edx,offset readfile1
mov ecx,lengthof readfile1
call writetofile
mov eax,filehandle
call closefile
ret

fileHandlingFunction endp

main proc

    ; Initialize screen and emitter
    call InitialiseScreen

    call fileHandlingFunction

main endp
end main
