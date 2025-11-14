; Interface tables: 10/26 (38%)
; Virtual methods: 0 / 7
; generated code sizes (bytes): 9656 (incl. 7730 user, 1272 helpers, 326 vtables, 328 lits); src size 0
; assembly: 7613 lines; density: 29.96 bytes/stmt; (258 stmts)
; total bytes: 228792 (94.3% of 237.0k flash with 13896 free)
; peep hole pass: 126 instructions removed and 263 updated
; peep hole pass: 101 instructions removed and 0 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x35800
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 6507908B28A61E59 ; hex template hash
    .hex 873266330af9dbdb ; replaced in binary by program hash
    .short 64   ; num. globals
    .short 0 ; patched with number of 64 bit words resulting from assembly
    .word _pxt_config_data
    .short 0 ; patched with comm section size
    .short 1 ; number of globals that are not pointers (they come first)
    .word _pxt_iface_member_names
    .word _pxt_lambda_trampoline@fn
    .word _pxt_perf_counters
    .word _pxt_restore_exception_state@fn
    .word _str6 ; name
    ;
; Function pxt-nezha/main.ts(1,1): <main>
    ;
    .object _main___P3828 "pxt-nezha/main.ts(1,1): <main>"
_main___P3828_pre:
    .section code
    .balign 4
_main___P3828_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word _main___P3828_args@fn
_main___P3828_args:
    .section code
_main___P3828:
_main___P3828_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
_main___P3828_locals:
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #4]
    @stackempty locals
    movs r0, #241
    movs r1, #224
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #8]
    @stackempty locals
    movs r0, #9
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    movs r0, #237
    movs r1, #252
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #17
    push {r0} ; proc-arg
    bl PlanetX_Basic_getUInt16LE__P4041
_proccall7:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #16]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #21
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall8:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #20]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #25
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall9:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #24]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #29
    push {r0} ; proc-arg
    bl PlanetX_Basic_getUInt16LE__P4041
_proccall10:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #28]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #33
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall11:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #32]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #37
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall12:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #36]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #41
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall13:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #40]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall14:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #44]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #49
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall15:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #48]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #53
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall16:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #52]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #57
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall17:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #56]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #61
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall18:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #60]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #67
    push {r0} ; proc-arg
    bl PlanetX_Basic_getreg__P4091
_proccall19:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #64]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #195
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt16LE__P4046
_proccall20:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #68]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #199
    push {r0} ; proc-arg
    bl PlanetX_Basic_getreg__P4091
_proccall21:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #72]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #203
    push {r0} ; proc-arg
    bl PlanetX_Basic_getreg__P4091
_proccall22:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #76]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #201
    push {r0} ; proc-arg
    bl PlanetX_Basic_getreg__P4091
_proccall23:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    movs r1, #9
    bl _numops_lsls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #76]
    push {r0} ; proc-arg
    movs r1, #33
    mov r7, sp
    str r7, [r6, #4]
    bl numops::mod
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    ldr r7, [r6, #0]
    str r0, [r7, #80]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #205
    push {r0} ; proc-arg
    bl PlanetX_Basic_getreg__P4091
_proccall24:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    movs r1, #9
    bl _numops_lsls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #76]
    push {r0} ; proc-arg
    movs r1, #9
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    ldr r7, [r6, #0]
    str r0, [r7, #84]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #207
    push {r0} ; proc-arg
    bl PlanetX_Basic_getInt8LE__P4128
_proccall25:
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #88]
    @stackempty locals
    movs r0, #9
    push {r0} ; proc-arg
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #229
    push {r0} ; proc-arg
    bl PlanetX_Basic_setreg__P4136
_proccall26:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #95
    push {r0} ; proc-arg
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #233
    push {r0} ; proc-arg
    bl PlanetX_Basic_setreg__P4136
_proccall27:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #25
    push {r0} ; proc-arg
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #235
    push {r0} ; proc-arg
    bl PlanetX_Basic_setreg__P4136
_proccall28:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #95
    push {r0} ; proc-arg
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #233
    push {r0} ; proc-arg
    bl PlanetX_Basic_setreg__P4136
_proccall29:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    ldr r7, [r6, #0]
    str r0, [r7, #92]
    @stackempty locals
    movs r0, #6
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    ldr r7, [r6, #0]
    str r0, [r7, #96]
    @stackempty locals
    movs r0, #253
    ldr r7, [r6, #0]
    str r0, [r7, #104]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #255
    ldr r7, [r6, #0]
    str r0, [r7, #108]
    @stackempty locals
    movs r0, #13
    ldr r7, [r6, #0]
    str r0, [r7, #112]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #223
    movs r1, #140
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #120]
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #116]
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #124]
    @stackempty locals
    movs r0, #1
    movs r1, #128
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #1
    movs r1, #132
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #1
    movs r1, #136
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #104]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*2 ; pop locals 2
    ldr r7, [r6, #0]
    ldr r0, [r7, #108]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    ldr r0, [r7, #112]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    ldr r0, [r7, #116]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    ldr r0, [r7, #120]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    ldr r0, [r7, #124]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    movs r0, #128
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    movs r0, #132
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    movs r0, #136
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    movs r0, #140
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #100]
    @stackempty locals
    movs r0, #73
    movs r1, #144
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #32
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    movs r1, #148
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #8
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    movs r1, #152
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #6
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    movs r1, #156
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #4
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    movs r1, #160
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #6
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    movs r1, #164
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #16
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    movs r1, #168
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #156
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #1
    movs r2, #0
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #156
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #3
    movs r2, #0
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #156
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #5
    movs r2, #255
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #156
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #7
    movs r2, #0
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #156
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #9
    movs r2, #255
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #156
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #11
    movs r2, #0
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #164
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #1
    movs r2, #255
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #164
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #3
    movs r2, #255
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #164
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #5
    movs r2, #255
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #164
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #7
    movs r2, #255
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #164
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #9
    movs r2, #255
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #164
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r1, #11
    movs r2, #255
    bl _pxt_buffer_set
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #1
    negs r0, r0
    movs r1, #172
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #3
    negs r0, r0
    movs r1, #176
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    ldr r0, _ldlit_2 ; PlanetX_Basic_PAJ7620__C3523_VT      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::mkClassInstance
    movs r1, #180
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mkMap
    push {r0}; tmpstore @1
    movs r1, #1
    movs r2, #3
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapSet
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #2
    movs r2, #5
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapSet
    pop {r0} ; tmpref @1
    movs r1, #184
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #17
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    movs r1, #188
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mkMap
    movs r1, #192
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mkMap
    movs r1, #196
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mkMap
    movs r1, #200
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #10
    movs r1, #232
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    ldr r0, _ldlit_3 ; on_button_pressed_ab__P5181_Lit      
    push {r0} ; proc-arg
    bl _conv_1
    movs r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl input::onButtonPressed
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_4 ; on_received_string__P5187_Lit      
    push {r0} ; proc-arg
    bl radio_onReceivedString__P3773
_proccall30:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_5 ; on_button_pressed_b__P5194_Lit      
    push {r0} ; proc-arg
    bl _conv_1
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl input::onButtonPressed
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_6 ; on_received_number__P5201_Lit      
    push {r0} ; proc-arg
    bl radio_onReceivedNumber__P3771
_proccall31:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #1
    movs r1, #208
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #10
    movs r1, #204
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #10
    movs r1, #212
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #10
    movs r1, #212
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #161
    mov r7, sp
    str r7, [r6, #4]
    bl radio::setGroup
    @stackempty locals
    movs r0, #121
    push {r0} ; proc-arg
    bl music_setTempo__P2691
_proccall32:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    bl midi_useRawSerial__P3001
_proccall33:
    @stackempty locals
    ldr r0, _ldlit_7 ; on_forever__P5224_Lit      
    push {r0} ; proc-arg
    bl _conv_2
    mov r7, sp
    str r7, [r6, #4]
    bl basic::forever
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_8 ; on_forever2__P5241_Lit      
    push {r0} ; proc-arg
    bl _conv_2
    mov r7, sp
    str r7, [r6, #4]
    bl basic::forever
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_9 ; on_forever3__P5258_Lit      
    push {r0} ; proc-arg
    bl _conv_2
    mov r7, sp
    str r7, [r6, #4]
    bl basic::forever
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3828:
    @stackempty locals
    movs r0, #0
.final_0_1:
_main___P3828_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(1,34): on_button_pressed_ab
    ;
    .object on_button_pressed_ab__P5181 "main.ts(1,34): on_button_pressed_ab"
on_button_pressed_ab__P5181_pre:
    .section code
    .balign 4
on_button_pressed_ab__P5181_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word on_button_pressed_ab__P5181_args@fn
on_button_pressed_ab__P5181_args:
    .section code
on_button_pressed_ab__P5181:
on_button_pressed_ab__P5181_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
on_button_pressed_ab__P5181_locals:
    movs r0, #10
    movs r1, #204
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
.cont.5184:
    movs r0, #66
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .brk.5184      
.jmpz34:
    movs r0, #204
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_2      
.jmpz35:
    b .brk.5184      
.else_0_2:
.afterif_1_2:
    b .cont.5184      
.brk.5184:
.ret.5181:
    @stackempty locals
    movs r0, #0
.final_2_2:
on_button_pressed_ab__P5181_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(11,24): on_received_string
    ;
    .object on_received_string__P5187 "main.ts(11,24): on_received_string"
on_received_string__P5187_pre:
    .section code
    .balign 4
on_received_string__P5187_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word on_received_string__P5187_args@fn
on_received_string__P5187_args:
    cmp r4, #1
    bge on_received_string__P5187_nochk
    push {lr}
    bl _expand_args_1_3
    bl on_received_string__P5187_nochk
    @dummystack 1
    add sp, #4*1
    pop {pc}
    .section code
on_received_string__P5187:
on_received_string__P5187_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
on_received_string__P5187_locals:
    ldr r0, [sp, args@0]
    ldr r1, _ldlit_10 ; _str1      
    bl _cmp_eq
    beq .else_0_3      
.jmpz36:
    movs r0, #66
    movs r1, #204
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
.else_0_3:
.afterif_1_3:
.ret.5187:
    @stackempty locals
    movs r0, #0
.final_2_3:
on_received_string__P5187_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(17,33): on_button_pressed_b
    ;
    .object on_button_pressed_b__P5194 "main.ts(17,33): on_button_pressed_b"
on_button_pressed_b__P5194_pre:
    .section code
    .balign 4
on_button_pressed_b__P5194_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word on_button_pressed_b__P5194_args@fn
on_button_pressed_b__P5194_args:
    .section code
on_button_pressed_b__P5194:
on_button_pressed_b__P5194_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
on_button_pressed_b__P5194_locals:
    movs r0, #66
    movs r1, #204
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    ldr r0, _ldlit_11 ; _str2      
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    @stackempty locals
.ret.5194:
    @stackempty locals
    movs r0, #0
.final_0_4:
on_button_pressed_b__P5194_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(22,24): on_received_number
    ;
    .object on_received_number__P5201 "main.ts(22,24): on_received_number"
on_received_number__P5201_pre:
    .section code
    .balign 4
on_received_number__P5201_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word on_received_number__P5201_args@fn
on_received_number__P5201_args:
    cmp r4, #1
    bge on_received_number__P5201_nochk
    push {lr}
    bl _expand_args_1_3
    bl on_received_number__P5201_nochk
    @dummystack 1
    add sp, #4*1
    pop {pc}
    .section code
on_received_number__P5201:
on_received_number__P5201_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
on_received_number__P5201_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl music_setTempo__P2691
_proccall37:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #199
    negs r0, r0
    push {r0} ; proc-arg
    movs r0, #159
    negs r0, r0
    push {r0} ; proc-arg
    movs r0, #201
    push {r0} ; proc-arg
    movs r0, #81
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl Math_map__P10
_proccall38:
    add sp, #4*5 ; pop locals 5
    movs r1, #208
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
.ret.5201:
    @stackempty locals
    movs r0, #0
.final_0_5:
on_received_number__P5201_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(39,15): on_forever
    ;
    .object on_forever__P5224 "main.ts(39,15): on_forever"
on_forever__P5224_pre:
    .section code
    .balign 4
on_forever__P5224_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word on_forever__P5224_args@fn
on_forever__P5224_args:
    .section code
on_forever__P5224:
on_forever__P5224_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
on_forever__P5224_locals:
    movs r0, #1
    push {r0} ; proc-arg
    bl PlanetX_Basic_Crash__P3506
_proccall40:
    add sp, #4*1 ; pop locals 1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_6      
.jmpz39:
    ldr r0, _ldlit_12 ; _dbl3      
    push {r0} ; proc-arg
    bl midi_toneOn__P3021
_proccall41:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #33
    push {r0} ; proc-arg
    bl music_beat__P2688
_proccall42:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_12 ; _dbl3      
    push {r0} ; proc-arg
    bl midi_toneOff__P3022
_proccall43:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #17
    push {r0} ; proc-arg
    bl music_beat__P2688
_proccall44:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.else_0_6:
.afterif_1_6:
.ret.5224:
    @stackempty locals
    movs r0, #0
.final_2_6:
on_forever__P5224_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(48,15): on_forever2
    ;
    .object on_forever2__P5241 "main.ts(48,15): on_forever2"
on_forever2__P5241_pre:
    .section code
    .balign 4
on_forever2__P5241_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word on_forever2__P5241_args@fn
on_forever2__P5241_args:
    .section code
on_forever2__P5241:
on_forever2__P5241_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
on_forever2__P5241_locals:
    movs r0, #5
    push {r0} ; proc-arg
    bl PlanetX_Basic_Crash__P3506
_proccall46:
    add sp, #4*1 ; pop locals 1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_7      
.jmpz45:
    ldr r0, _ldlit_13 ; _dbl4      
    push {r0} ; proc-arg
    bl midi_toneOn__P3021
_proccall47:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #33
    push {r0} ; proc-arg
    bl music_beat__P2688
_proccall48:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_13 ; _dbl4      
    push {r0} ; proc-arg
    bl midi_toneOff__P3022
_proccall49:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #17
    push {r0} ; proc-arg
    bl music_beat__P2688
_proccall50:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.else_0_7:
.afterif_1_7:
.ret.5241:
    @stackempty locals
    movs r0, #0
.final_2_7:
on_forever2__P5241_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(57,15): on_forever3
    ;
    .object on_forever3__P5258 "main.ts(57,15): on_forever3"
on_forever3__P5258_pre:
    .section code
    .balign 4
on_forever3__P5258_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word on_forever3__P5258_args@fn
on_forever3__P5258_args:
    .section code
on_forever3__P5258:
on_forever3__P5258_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
on_forever3__P5258_locals:
    movs r0, #3
    push {r0} ; proc-arg
    bl PlanetX_Basic_Crash__P3506
_proccall52:
    add sp, #4*1 ; pop locals 1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    bne .jmpz51
    b .else_0_8      
.object PUSH
.balign 4
_ldlit_2:
 .word PlanetX_Basic_PAJ7620__C3523_VT
_ldlit_3:
 .word on_button_pressed_ab__P5181_Lit
_ldlit_4:
 .word on_received_string__P5187_Lit
_ldlit_5:
 .word on_button_pressed_b__P5194_Lit
_ldlit_6:
 .word on_received_number__P5201_Lit
_ldlit_7:
 .word on_forever__P5224_Lit
_ldlit_8:
 .word on_forever2__P5241_Lit
_ldlit_9:
 .word on_forever3__P5258_Lit
_ldlit_10:
 .word _str1
_ldlit_11:
 .word _str2
_ldlit_12:
 .word _dbl3
_ldlit_13:
 .word _dbl4
.object POP
.jmpz51:
    ldr r0, _ldlit_15 ; _dbl5      
    push {r0} ; proc-arg
    bl midi_toneOn__P3021
_proccall53:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #33
    push {r0} ; proc-arg
    bl music_beat__P2688
_proccall54:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_15 ; _dbl5      
    push {r0} ; proc-arg
    bl midi_toneOff__P3022
_proccall55:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #17
    push {r0} ; proc-arg
    bl music_beat__P2688
_proccall56:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.else_0_8:
.afterif_1_8:
.ret.5258:
    @stackempty locals
    movs r0, #0
.final_2_8:
on_forever3__P5258_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(347,5): midi.toneOff
    ;
    .object midi_toneOff__P3022 "pxt-midi/midi.ts(347,5): midi.toneOff"
midi_toneOff__P3022_pre:
    .section code
    .balign 4
    .section code
midi_toneOff__P3022:
midi_toneOff__P3022_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
midi_toneOff__P3022_locals:
    movs r0, #3
    push {r0} ; proc-arg
    bl midi_channel__P3003
_proccall57:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl midi_frequencyToKey__P3024
_proccall58:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    pop {r1, r2}
    movs r0, #1
    push {r0} ; proc-arg
    push {r1}
    push {r2}
    bl midi_MidiController_noteOff__P3010
_proccall59:
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.ret.3022:
    @stackempty locals
    movs r0, #0
.final_0_9:
midi_toneOff__P3022_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(369,5): midi.frequencyToKey
    ;
    .object midi_frequencyToKey__P3024 "pxt-midi/midi.ts(369,5): midi.frequencyToKey"
midi_frequencyToKey__P3024_pre:
    .section code
    .balign 4
    .section code
midi_frequencyToKey__P3024:
midi_frequencyToKey__P3024_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
midi_frequencyToKey__P3024_locals:
    ldr r0, [sp, args@0]
    movs r1, #1
    bl _numops_orrs
    str r0, [sp, args@0]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r1, #3
    lsls r1, r1, #8
    adds r1, #113
    mov r7, sp
    str r7, [r6, #4]
    bl numops::div
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::log
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r1, _ldlit_16 ; _dbl0      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::div
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    movs r1, #25
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    movs r1, #139
    bl _numops_adds
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::round
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    movs r0, #255
    push {r0} ; proc-arg
    bl Math_min__P2160
_proccall60:
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    movs r0, #1
    push {r0} ; proc-arg
    bl Math_max__P2159
_proccall61:
    add sp, #4*2 ; pop locals 2
.ret.3024:
    @stackempty locals
.final_0_10:
midi_frequencyToKey__P3024_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(569,5): Math.min
    ;
    .object Math_min__P2160 "core/pxt-helpers.ts(569,5): Math.min"
Math_min__P2160_pre:
    .section code
    .balign 4
    .section code
Math_min__P2160:
Math_min__P2160_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
Math_min__P2160_locals:
    ldr r0, [sp, args@0]
    ldr r1, [sp, args@1]
    bl _cmp_le
    beq .else_0_11      
.jmpz62:
    ldr r0, [sp, args@0]
    b .ret.2160      
.else_0_11:
.afterif_1_11:
    ldr r0, [sp, args@1]
.ret.2160:
    @stackempty locals
.final_2_11:
Math_min__P2160_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(559,5): Math.max
    ;
    .object Math_max__P2159 "core/pxt-helpers.ts(559,5): Math.max"
Math_max__P2159_pre:
    .section code
    .balign 4
    .section code
Math_max__P2159:
Math_max__P2159_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
Math_max__P2159_locals:
    ldr r0, [sp, args@0]
    ldr r1, [sp, args@1]
    bl _cmp_ge
    beq .else_0_12      
.jmpz63:
    ldr r0, [sp, args@0]
    b .ret.2159      
.else_0_12:
.afterif_1_12:
    ldr r0, [sp, args@1]
.ret.2159:
    @stackempty locals
.final_2_12:
Math_max__P2159_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(119,5): midi.channel
    ;
    .object midi_channel__P3003 "pxt-midi/midi.ts(119,5): midi.channel"
midi_channel__P3003_pre:
    .section code
    .balign 4
    .section code
midi_channel__P3003:
midi_channel__P3003_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
midi_channel__P3003_locals:
    ldr r0, [sp, args@0]
    movs r1, #3
    bl _numops_subs
    str r0, [sp, args@0]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r0, #31
    push {r0} ; proc-arg
    bl Math_min__P2160
_proccall64:
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    movs r0, #1
    push {r0} ; proc-arg
    bl Math_max__P2159
_proccall65:
    add sp, #4*2 ; pop locals 2
    str r0, [sp, args@0]
    @stackempty locals
    movs r0, #216
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_13      
.jmpz66:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    movs r1, #216
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
.else_0_13:
.afterif_1_13:
    movs r0, #216
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_2_13      
.jmpz67:
    ldr r0, _ldlit_17 ; midi_MidiController__C3004_VT      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::mkClassInstance
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; tmpref @1
    push {r0} ; proc-arg
    bl midi_MidiController_constructor__P3007
_proccall68:
    add sp, #4*2 ; pop locals 2
    movs r0, #216
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*2] ; tmpref @1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*2] ; estack
    ldr r1, [sp, #4*1] ; estack
    ldr r2, [sp, #4*0] ; estack
    bl _pxt_array_set
    add sp, #4*3 ; pop locals 3
    pop {r0} ; tmpref @1
    str r0, [sp, locals@0]
    @stackempty locals
.else_2_13:
.afterif_3_13:
    ldr r0, [sp, locals@0]
.ret.3003:
    @stackempty locals
.final_4_13:
    add sp, #4*1 ; pop locals 1
midi_channel__P3003_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(138,9): midi.MidiController.constructor
    ;
    .object midi_MidiController_constructor__P3007 "pxt-midi/midi.ts(138,9): midi.MidiController.constructor"
midi_MidiController_constructor__P3007_pre:
    .section code
    .balign 4
    .section code
midi_MidiController_constructor__P3007:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_midi_MidiController__C3004_validate_5
    mov lr, r7
midi_MidiController_constructor__P3007_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
midi_MidiController_constructor__P3007_locals:
    ldr r0, [sp, args@0]
    ldr r1, [sp, args@1]
    str r1, [r0, #4]
    @stackempty locals
    ldr r0, [sp, args@0]
    movs r1, #255
    str r1, [r0, #8]
    @stackempty locals
    movs r0, #0
.ret.3007:
    @stackempty locals
.final_0_14:
midi_MidiController_constructor__P3007_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(184,9): midi.MidiController.noteOff
    ;
    .object midi_MidiController_noteOff__P3010 "pxt-midi/midi.ts(184,9): midi.MidiController.noteOff"
midi_MidiController_noteOff__P3010_pre:
    .section code
    .balign 4
midi_MidiController_noteOff__P3010_args:
    cmp r4, #3
    bge midi_MidiController_noteOff__P3010_nochk
    push {lr}
    bl _expand_args_3_6
    bl midi_MidiController_noteOff__P3010_nochk
    @dummystack 3
    add sp, #4*3
    pop {pc}
    .section code
midi_MidiController_noteOff__P3010:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_midi_MidiController__C3004_validate_5
    mov lr, r7
midi_MidiController_noteOff__P3010_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
midi_MidiController_noteOff__P3010_locals:
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #1
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    str r0, [sp, args@1]
    @stackempty locals
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_2_15      
.jmpz69:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_1_15      
.lazySkip_2_15:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #255
    mov r7, sp
    str r7, [r6, #4]
    bl numops::gt
    add sp, #4*1 ; pop locals 1
.lazy_1_15:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_15      
.jmpz70:
    b .ret.3010      
.else_0_15:
.afterif_3_15:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    mov r1, r0
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #1
    bl _numops_orrs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*2 ; pop locals 2
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@2]
    push {r0}; tmpstore @2
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_5_15      
.jmpz71:
    ldr r0, [sp, #4*0] ; tmpref @2
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_4_15      
.lazySkip_5_15:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    ldr r0, [r0, #8]
    b .lazy_4_15      
.object PUSH
.balign 4
_ldlit_15:
 .word _dbl5
_ldlit_16:
 .word _dbl0
_ldlit_17:
 .word midi_MidiController__C3004_VT
.object POP
.lazy_4_15:
; jmp value (already in r0)
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    bl midi_sendMessage__P3000
_proccall72:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3010:
    @stackempty locals
    movs r0, #0
.final_6_15:
midi_MidiController_noteOff__P3010_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(66,5): midi.sendMessage
    ;
    .object midi_sendMessage__P3000 "pxt-midi/midi.ts(66,5): midi.sendMessage"
midi_sendMessage__P3000_pre:
    .section code
    .balign 4
    .section code
midi_sendMessage__P3000:
midi_sendMessage__P3000_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
midi_sendMessage__P3000_locals:
    movs r0, #220
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_16      
.jmpz73:
    b .ret.3000      
.else_0_16:
.afterif_1_16:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_8
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@1]
    @stackempty locals
.fortop.5374:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_8
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _cmp_lt
    add sp, #4*2 ; pop locals 2
    beq .brk.5374      
.jmpz74:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_10
    movs r1, #2
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::setNumber
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.cont.5374:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.5374      
.brk.5374:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_11
    mov r7, sp
    str r7, [r6, #4]
    bl control::__midiSend
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #220
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    bl _lambda_call1_12
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.3000:
    @stackempty locals
    movs r0, #0
.final_2_16:
    add sp, #4*2 ; pop locals 2
midi_sendMessage__P3000_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/music.ts(262,5): music.beat
    ;
    .object music_beat__P2688 "core/music.ts(262,5): music.beat"
music_beat__P2688_pre:
    .section code
    .balign 4
    .section code
music_beat__P2688:
music_beat__P2688_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
music_beat__P2688_locals:
    bl music_init__P3945
_proccall76:
    @stackempty locals
    ldr r0, [sp, args@0]
    movs r1, #6
    bl _cmp_eq
    beq .else_0_17      
.jmpz77:
    movs r0, #3
    str r0, [sp, args@0]
    @stackempty locals
.else_0_17:
.afterif_1_17:
    movs r0, #224
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl _conv_13
    movs r0, #234
    lsls r0, r0, #8
    adds r0, #96
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::idiv
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @1
    mov r1, r0
    movs r0, #5
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz78
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_17      
.jmpz78:
    movs r0, #9
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz79
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_17      
.jmpz79:
    movs r0, #17
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz80
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_17      
.jmpz80:
    movs r0, #33
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz81
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_17      
.jmpz81:
    movs r0, #65
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz82
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_17      
.jmpz82:
    movs r0, #129
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz83
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_17      
.jmpz83:
    pop {r0} ; tmpref @1
    b .switch_8_17      
.switch_2_17:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r1, #3
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    b .ret.2688      
.switch_3_17:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r1, #5
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    b .ret.2688      
.switch_4_17:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r1, #7
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    b .ret.2688      
.switch_5_17:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r1, #9
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    b .ret.2688      
.switch_6_17:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r1, #3
    bl _numops_lsls
    add sp, #4*1 ; pop locals 1
    b .ret.2688      
.switch_7_17:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r1, #5
    bl _numops_lsls
    add sp, #4*1 ; pop locals 1
    b .ret.2688      
.switch_8_17:
    ldr r0, [sp, locals@0]
    b .ret.2688      
.brk.5405:
    movs r0, #0
.ret.2688:
    @stackempty locals
.final_9_17:
    add sp, #4*1 ; pop locals 1
music_beat__P2688_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/music.ts(251,5): music.init
    ;
    .object music_init__P3945 "core/music.ts(251,5): music.init"
music_init__P3945_pre:
    .section code
    .balign 4
    .section code
music_init__P3945:
music_init__P3945_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
music_init__P3945_locals:
    movs r0, #224
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    movs r1, #1
    bl _cmp_le
    beq .else_0_18      
.jmpz84:
    movs r0, #241
    movs r1, #224
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
.else_0_18:
.afterif_1_18:
.ret.3945:
    @stackempty locals
    movs r0, #0
.final_2_18:
music_init__P3945_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(336,5): midi.toneOn
    ;
    .object midi_toneOn__P3021 "pxt-midi/midi.ts(336,5): midi.toneOn"
midi_toneOn__P3021_pre:
    .section code
    .balign 4
    .section code
midi_toneOn__P3021:
midi_toneOn__P3021_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
midi_toneOn__P3021_locals:
    movs r0, #3
    push {r0} ; proc-arg
    bl midi_channel__P3003
_proccall85:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl midi_frequencyToKey__P3024
_proccall86:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    pop {r1, r2}
    movs r0, #1
    push {r0} ; proc-arg
    push {r1}
    push {r2}
    bl midi_MidiController_noteOn__P3009
_proccall87:
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.ret.3021:
    @stackempty locals
    movs r0, #0
.final_0_19:
midi_toneOn__P3021_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(169,9): midi.MidiController.noteOn
    ;
    .object midi_MidiController_noteOn__P3009 "pxt-midi/midi.ts(169,9): midi.MidiController.noteOn"
midi_MidiController_noteOn__P3009_pre:
    .section code
    .balign 4
midi_MidiController_noteOn__P3009_args:
    cmp r4, #3
    bge midi_MidiController_noteOn__P3009_nochk
    push {lr}
    bl _expand_args_3_6
    bl midi_MidiController_noteOn__P3009_nochk
    @dummystack 3
    add sp, #4*3
    pop {pc}
    .section code
midi_MidiController_noteOn__P3009:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_midi_MidiController__C3004_validate_5
    mov lr, r7
midi_MidiController_noteOn__P3009_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
midi_MidiController_noteOn__P3009_locals:
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #1
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    str r0, [sp, args@1]
    @stackempty locals
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_2_20      
.jmpz88:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_1_20      
.lazySkip_2_20:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #255
    mov r7, sp
    str r7, [r6, #4]
    bl numops::gt
    add sp, #4*1 ; pop locals 1
.lazy_1_20:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_20      
.jmpz89:
    b .ret.3009      
.else_0_20:
.afterif_3_20:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    mov r1, r0
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #33
    bl _numops_orrs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*2 ; pop locals 2
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@2]
    push {r0}; tmpstore @2
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_5_20      
.jmpz90:
    ldr r0, [sp, #4*0] ; tmpref @2
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_4_20      
.lazySkip_5_20:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    ldr r0, [r0, #8]
.lazy_4_20:
; jmp value (already in r0)
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    bl midi_sendMessage__P3000
_proccall91:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3009:
    @stackempty locals
    movs r0, #0
.final_6_20:
midi_MidiController_noteOn__P3009_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-planetx/basic.ts(1454,5): PlanetX_Basic.Crash
    ;
    .object PlanetX_Basic_Crash__P3506 "pxt-planetx/basic.ts(1454,5): PlanetX_Basic.Crash"
PlanetX_Basic_Crash__P3506_pre:
    .section code
    .balign 4
    .section code
PlanetX_Basic_Crash__P3506:
PlanetX_Basic_Crash__P3506_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
PlanetX_Basic_Crash__P3506_locals:
    movs r0, #203
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl PlanetX_Basic_RJpin_to_digital__P4993
_proccall92:
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_4
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl pins::setPull
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalReadPin
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    movs r1, #1
    bl _cmp_eq
    beq .else_0_21      
.jmpz93:
    movs r0, #66
    b .ret.3506      
    b .afterif_1_21      
.else_0_21:
    movs r0, #10
    b .ret.3506      
.afterif_1_21:
    movs r0, #0
.ret.3506:
    @stackempty locals
.final_2_21:
    add sp, #4*1 ; pop locals 1
PlanetX_Basic_Crash__P3506_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-planetx/basic.ts(999,5): PlanetX_Basic.RJpin_to_digital
    ;
    .object PlanetX_Basic_RJpin_to_digital__P4993 "pxt-planetx/basic.ts(999,5): PlanetX_Basic.RJpin_to_digital"
PlanetX_Basic_RJpin_to_digital__P4993_pre:
    .section code
    .balign 4
    .section code
PlanetX_Basic_RJpin_to_digital__P4993:
PlanetX_Basic_RJpin_to_digital__P4993_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
PlanetX_Basic_RJpin_to_digital__P4993_locals:
    movs r0, #203
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @1
    mov r1, r0
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz94
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_22      
.jmpz94:
    movs r0, #3
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz95
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_22      
.jmpz95:
    movs r0, #5
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz96
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_22      
.jmpz96:
    movs r0, #7
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz97
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_22      
.jmpz97:
    pop {r0} ; tmpref @1
    b .brk.5477      
.switch_0_22:
    movs r0, #217
    str r0, [sp, locals@0]
    @stackempty locals
    b .brk.5477      
.switch_1_22:
    movs r0, #225
    str r0, [sp, locals@0]
    @stackempty locals
    b .brk.5477      
.switch_2_22:
    movs r0, #229
    str r0, [sp, locals@0]
    @stackempty locals
    b .brk.5477      
.switch_3_22:
    movs r0, #233
    str r0, [sp, locals@0]
    @stackempty locals
.brk.5477:
    ldr r0, [sp, locals@0]
.ret.4993:
    @stackempty locals
.final_4_22:
    add sp, #4*1 ; pop locals 1
PlanetX_Basic_RJpin_to_digital__P4993_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(82,5): midi.useRawSerial
    ;
    .object midi_useRawSerial__P3001 "pxt-midi/midi.ts(82,5): midi.useRawSerial"
midi_useRawSerial__P3001_pre:
    .section code
    .balign 4
    .section code
midi_useRawSerial__P3001:
midi_useRawSerial__P3001_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
midi_useRawSerial__P3001_locals:
    ldr r0, _ldlit_19 ; send__P5493_Lit      
    push {r0} ; proc-arg
    bl midi_setTransport__P2999
_proccall98:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3001:
    @stackempty locals
    movs r0, #0
.final_0_23:
midi_useRawSerial__P3001_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(83,9): send
    ;
    .object send__P5493 "pxt-midi/midi.ts(83,9): send"
send__P5493_pre:
    .section code
    .balign 4
send__P5493_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word send__P5493_args@fn
send__P5493_args:
    cmp r4, #1
    bge send__P5493_nochk
    push {lr}
    bl _expand_args_1_3
    bl send__P5493_nochk
    @dummystack 1
    add sp, #4*1
    pop {pc}
    .section code
send__P5493:
send__P5493_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
send__P5493_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_11
    mov r7, sp
    str r7, [r6, #4]
    bl serial::writeBuffer
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.5493:
    @stackempty locals
    movs r0, #0
.final_0_24:
send__P5493_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-midi/midi.ts(57,5): midi.setTransport
    ;
    .object midi_setTransport__P2999 "pxt-midi/midi.ts(57,5): midi.setTransport"
midi_setTransport__P2999_pre:
    .section code
    .balign 4
    .section code
midi_setTransport__P2999:
midi_setTransport__P2999_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
midi_setTransport__P2999_locals:
    ldr r0, [sp, args@0]
    movs r1, #220
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
.ret.2999:
    @stackempty locals
    movs r0, #0
.final_0_25:
midi_setTransport__P2999_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/math.ts(38,5): Math.map
    ;
    .object Math_map__P10 "core/math.ts(38,5): Math.map"
Math_map__P10_pre:
    .section code
    .balign 4
    .section code
Math_map__P10:
Math_map__P10_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
Math_map__P10_locals:
    ldr r0, [sp, args@0]
    ldr r1, [sp, args@1]
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, args@4]
    ldr r1, [sp, args@3]
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    ldr r1, [sp, args@1]
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::div
    add sp, #4*2 ; pop locals 2
    ldr r1, [sp, args@3]
    bl _numops_adds
.ret.10:
    @stackempty locals
.final_0_26:
Math_map__P10_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/music.ts(311,5): music.setTempo
    ;
    .object music_setTempo__P2691 "core/music.ts(311,5): music.setTempo"
music_setTempo__P2691_pre:
    .section code
    .balign 4
    .section code
music_setTempo__P2691:
music_setTempo__P2691_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
music_setTempo__P2691_locals:
    bl music_init__P3945
_proccall99:
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl isNaN__P2122
_proccall101:
    add sp, #4*1 ; pop locals 1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_27      
.jmpz100:
    b .ret.2691      
.else_0_27:
.afterif_1_27:
    ldr r0, [sp, args@0]
    movs r1, #1
    bl _cmp_gt
    beq .else_2_27      
.jmpz102:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r0, #3
    push {r0} ; proc-arg
    bl Math_max__P2159
_proccall103:
    add sp, #4*2 ; pop locals 2
    movs r1, #224
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
.else_2_27:
.afterif_3_27:
.ret.2691:
    @stackempty locals
    movs r0, #0
.final_4_27:
music_setTempo__P2691_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(13,1): isNaN
    ;
    .object isNaN__P2122 "core/pxt-helpers.ts(13,1): isNaN"
isNaN__P2122_pre:
    .section code
    .balign 4
    .section code
isNaN__P2122:
isNaN__P2122_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
isNaN__P2122_locals:
    ldr r0, [sp, args@0]
    movs r1, #1
    bl _numops_subs
    str r0, [sp, args@0]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::neqq
    add sp, #4*2 ; pop locals 2
.ret.2122:
    @stackempty locals
.final_0_28:
isNaN__P2122_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(100,5): radio.onReceivedNumber
    ;
    .object radio_onReceivedNumber__P3771 "radio/radio.ts(100,5): radio.onReceivedNumber"
radio_onReceivedNumber__P3771_pre:
    .section code
    .balign 4
    .section code
radio_onReceivedNumber__P3771:
radio_onReceivedNumber__P3771_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
radio_onReceivedNumber__P3771_locals:
    bl radio_init__P5170
_proccall104:
    @stackempty locals
    ldr r0, [sp, args@0]
    movs r1, #228
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
.ret.3771:
    @stackempty locals
    movs r0, #0
.final_0_29:
radio_onReceivedNumber__P3771_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(57,5): radio.init
    ;
    .object radio_init__P5170 "radio/radio.ts(57,5): radio.init"
radio_init__P5170_pre:
    .section code
    .balign 4
    .section code
radio_init__P5170:
radio_init__P5170_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
radio_init__P5170_locals:
    movs r0, #232
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_30      
.jmpz105:
    b .ret.5170      
.else_0_30:
.afterif_1_30:
    movs r0, #66
    movs r1, #232
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    ldr r0, _ldlit_20 ; radio_handleDataReceived__P5171_Lit      
    push {r0} ; proc-arg
    bl _conv_2
    mov r7, sp
    str r7, [r6, #4]
    bl radio::onDataReceived
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.5170:
    @stackempty locals
    movs r0, #0
.final_2_30:
radio_init__P5170_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(63,5): radio.handleDataReceived
    ;
    .object radio_handleDataReceived__P5171 "radio/radio.ts(63,5): radio.handleDataReceived"
radio_handleDataReceived__P5171_pre:
    .section code
    .balign 4
radio_handleDataReceived__P5171_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word radio_handleDataReceived__P5171_args@fn
radio_handleDataReceived__P5171_args:
    .section code
radio_handleDataReceived__P5171:
radio_handleDataReceived__P5171_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
radio_handleDataReceived__P5171_locals:
    mov r7, sp
    str r7, [r6, #4]
    bl radio::readRawPacket
    str r0, [sp, locals@0]
    @stackempty locals
.cont.5552:
    ldr r0, [sp, locals@0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    bne .jmpz106
    b .brk.5552      
.jmpz106:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl radio_RadioPacket_getPacket__P3778
_proccall107:
    add sp, #4*1 ; pop locals 1
    movs r1, #236
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
    movs r0, #236
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    movs r1, #1
    bl _pxt_buffer_get
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r1, r0
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz108
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_31      
.jmpz108:
    movs r0, #9
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz109
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_31      
.jmpz109:
    movs r0, #3
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz110
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_31      
.jmpz110:
    movs r0, #11
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz111
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_31      
.jmpz111:
    movs r0, #7
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz112
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_31      
.jmpz112:
    movs r0, #5
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz113
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_31      
.jmpz113:
    pop {r0} ; tmpref @1
    b .brk.5557      
.switch_0_31:
.switch_1_31:
    movs r0, #228
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_6_31      
.jmpz114:
    movs r0, #228
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r0, #236
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl radio_RadioPacket_numberPayload__P3788
_proccall115:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    pop {r1, r2}
    push {r2}
    push {r1}
    ldr r0, [sp, #4*1] ; estack
    bl _lambda_call1_12
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.else_6_31:
.afterif_7_31:
    b .brk.5557      
.switch_2_31:
.switch_3_31:
    movs r0, #240
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_8_31      
.jmpz117:
    movs r0, #240
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r0, #236
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl radio_RadioPacket_stringPayload__P3786
_proccall118:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    movs r0, #236
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl radio_RadioPacket_numberPayload__P3788
_proccall119:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    pop {r1, r2, r3}
    push {r3}
    push {r1}
    push {r2}
    ldr r0, [sp, #4*2] ; estack
    bl _lambda_call2_14
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.else_8_31:
.afterif_9_31:
    b .brk.5557      
.switch_4_31:
    movs r0, #244
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_10_31      
.jmpz121:
    movs r0, #244
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r0, #236
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl radio_RadioPacket_bufferPayload__P3790
_proccall122:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    pop {r1, r2}
    push {r2}
    push {r1}
    ldr r0, [sp, #4*1] ; estack
    bl _lambda_call1_12
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.else_10_31:
.afterif_11_31:
    b .brk.5557      
.switch_5_31:
    movs r0, #248
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    bne .jmpz124
    b .else_12_31      
.object PUSH
.balign 4
_ldlit_19:
 .word send__P5493_Lit
_ldlit_20:
 .word radio_handleDataReceived__P5171_Lit
.object POP
.jmpz124:
    movs r0, #248
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    movs r0, #236
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl radio_RadioPacket_stringPayload__P3786
_proccall125:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    pop {r1, r2}
    push {r2}
    push {r1}
    ldr r0, [sp, #4*1] ; estack
    bl _lambda_call1_12
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.else_12_31:
.afterif_13_31:
.brk.5557:
    mov r7, sp
    str r7, [r6, #4]
    bl radio::readRawPacket
    str r0, [sp, locals@0]
    @stackempty locals
    b .cont.5552      
.brk.5552:
.ret.5171:
    @stackempty locals
    movs r0, #0
.final_14_31:
    add sp, #4*1 ; pop locals 1
radio_handleDataReceived__P5171_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(252,9): radio.RadioPacket.bufferPayload
    ;
    .object radio_RadioPacket_bufferPayload__P3790 "radio/radio.ts(252,9): radio.RadioPacket.bufferPayload"
radio_RadioPacket_bufferPayload__P3790_pre:
    .section code
    .balign 4
radio_RadioPacket_bufferPayload__P3790_args:
    cmp r4, #1
    bge radio_RadioPacket_bufferPayload__P3790_nochk
    push {lr}
    bl _expand_args_1_3
    bl radio_RadioPacket_bufferPayload__P3790_nochk
    @dummystack 1
    add sp, #4*1
    pop {pc}
    .section code
radio_RadioPacket_bufferPayload__P3790:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_radio_RadioPacket__C3777_validate_15
    mov lr, r7
radio_RadioPacket_bufferPayload__P3790_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
radio_RadioPacket_bufferPayload__P3790_locals:
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    movs r1, #19
    bl _pxt_buffer_get
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_16
    movs r1, #10
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::slice
    add sp, #4*2 ; pop locals 2
.ret.3790:
    @stackempty locals
.final_0_32:
    add sp, #4*1 ; pop locals 1
radio_RadioPacket_bufferPayload__P3790_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(213,9): radio.RadioPacket.stringPayload
    ;
    .object radio_RadioPacket_stringPayload__P3786 "radio/radio.ts(213,9): radio.RadioPacket.stringPayload"
radio_RadioPacket_stringPayload__P3786_pre:
    .section code
    .balign 4
radio_RadioPacket_stringPayload__P3786_args:
    cmp r4, #1
    bge radio_RadioPacket_stringPayload__P3786_nochk
    push {lr}
    bl _expand_args_1_3
    bl radio_RadioPacket_stringPayload__P3786_nochk
    @dummystack 1
    add sp, #4*1
    pop {pc}
    .section code
radio_RadioPacket_stringPayload__P3786:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_radio_RadioPacket__C3777_validate_15
    mov lr, r7
radio_RadioPacket_stringPayload__P3786_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
radio_RadioPacket_stringPayload__P3786_locals:
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    movs r1, #1
    bl _pxt_buffer_get
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    bl radio_getStringOffset__P5175
_proccall127:
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .condexprz_0_33      
.jmpz128:
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_buffer_get
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_17
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::slice
    add sp, #4*3 ; pop locals 3
    push {r0} ; proc-arg
    bl _conv_11
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::toString
    add sp, #4*1 ; pop locals 1
    b .condexprfin_1_33      
.condexprz_0_33:
    movs r0, #0
.condexprfin_1_33:
; jmp value (already in r0)
.ret.3786:
    @stackempty locals
.final_2_33:
    add sp, #4*1 ; pop locals 1
radio_RadioPacket_stringPayload__P3786_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(382,5): radio.getStringOffset
    ;
    .object radio_getStringOffset__P5175 "radio/radio.ts(382,5): radio.getStringOffset"
radio_getStringOffset__P5175_pre:
    .section code
    .balign 4
    .section code
radio_getStringOffset__P5175:
radio_getStringOffset__P5175_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
radio_getStringOffset__P5175_locals:
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @1
    mov r1, r0
    movs r0, #5
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz129
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_34      
.jmpz129:
    movs r0, #3
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz130
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_34      
.jmpz130:
    movs r0, #11
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz131
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_34      
.jmpz131:
    pop {r0} ; tmpref @1
    b .switch_3_34      
.switch_0_34:
    movs r0, #19
    b .ret.5175      
.switch_1_34:
    movs r0, #27
    b .ret.5175      
.switch_2_34:
    movs r0, #35
    b .ret.5175      
.switch_3_34:
    movs r0, #0
    b .ret.5175      
.brk.5624:
    movs r0, #0
.ret.5175:
    @stackempty locals
.final_4_34:
radio_getStringOffset__P5175_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(227,9): radio.RadioPacket.numberPayload
    ;
    .object radio_RadioPacket_numberPayload__P3788 "radio/radio.ts(227,9): radio.RadioPacket.numberPayload"
radio_RadioPacket_numberPayload__P3788_pre:
    .section code
    .balign 4
radio_RadioPacket_numberPayload__P3788_args:
    cmp r4, #1
    bge radio_RadioPacket_numberPayload__P3788_nochk
    push {lr}
    bl _expand_args_1_3
    bl radio_RadioPacket_numberPayload__P3788_nochk
    @dummystack 1
    add sp, #4*1
    pop {pc}
    .section code
radio_RadioPacket_numberPayload__P3788:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_radio_RadioPacket__C3777_validate_15
    mov lr, r7
radio_RadioPacket_numberPayload__P3788_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
radio_RadioPacket_numberPayload__P3788_locals:
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    movs r1, #1
    bl _pxt_buffer_get
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r1, r0
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz132
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_35      
.jmpz132:
    movs r0, #3
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz133
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_35      
.jmpz133:
    movs r0, #9
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz134
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_35      
.jmpz134:
    movs r0, #11
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz135
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_35      
.jmpz135:
    pop {r0} ; tmpref @1
    b .brk.5634      
.switch_0_35:
.switch_1_35:
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    bl _conv_11
    movs r1, #5
    movs r2, #9
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::getNumber
    add sp, #4*1 ; pop locals 1
    b .ret.3788      
.switch_2_35:
.switch_3_35:
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    bl _conv_11
    movs r1, #14
    movs r2, #9
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::getNumber
    add sp, #4*1 ; pop locals 1
    b .ret.3788      
.brk.5634:
    movs r0, #0
.ret.3788:
    @stackempty locals
.final_4_35:
radio_RadioPacket_numberPayload__P3788_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(193,9): radio.RadioPacket.packetType
    ;
    .object radio_RadioPacket_packetType__P3781 "radio/radio.ts(193,9): radio.RadioPacket.packetType"
radio_RadioPacket_packetType__P3781_pre:
    .section code
    .balign 4
radio_RadioPacket_packetType__P3781_args:
    cmp r4, #1
    bge radio_RadioPacket_packetType__P3781_nochk
    push {lr}
    bl _expand_args_1_3
    bl radio_RadioPacket_packetType__P3781_nochk
    @dummystack 1
    add sp, #4*1
    pop {pc}
    .section code
radio_RadioPacket_packetType__P3781:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_radio_RadioPacket__C3777_validate_15
    mov lr, r7
radio_RadioPacket_packetType__P3781_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
radio_RadioPacket_packetType__P3781_locals:
    ldr r0, [sp, args@0]
    ldr r0, [r0, #4]
    push {r0} ; proc-arg
    movs r1, #1
    bl _pxt_buffer_get
    add sp, #4*1 ; pop locals 1
.ret.3781:
    @stackempty locals
.final_0_36:
radio_RadioPacket_packetType__P3781_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(173,9): radio.RadioPacket.getPacket
    ;
    .object radio_RadioPacket_getPacket__P3778 "radio/radio.ts(173,9): radio.RadioPacket.getPacket"
radio_RadioPacket_getPacket__P3778_pre:
    .section code
    .balign 4
radio_RadioPacket_getPacket__P3778_args:
    cmp r4, #1
    bge radio_RadioPacket_getPacket__P3778_nochk
    push {lr}
    bl _expand_args_1_3
    bl radio_RadioPacket_getPacket__P3778_nochk
    @dummystack 1
    add sp, #4*1
    pop {pc}
    .section code
radio_RadioPacket_getPacket__P3778:
radio_RadioPacket_getPacket__P3778_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
radio_RadioPacket_getPacket__P3778_locals:
    ldr r0, [sp, args@0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_37      
.jmpz136:
    movs r0, #0
    b .ret.3778      
.else_0_37:
.afterif_1_37:
    ldr r0, _ldlit_22 ; radio_RadioPacket__C3777_VT      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::mkClassInstance
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; tmpref @1
    push {r0} ; proc-arg
    bl radio_RadioPacket_constructor__P5172
_proccall137:
    add sp, #4*2 ; pop locals 2
    pop {r0} ; tmpref @1
.ret.3778:
    @stackempty locals
.final_2_37:
radio_RadioPacket_getPacket__P3778_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(185,9): radio.RadioPacket.constructor
    ;
    .object radio_RadioPacket_constructor__P5172 "radio/radio.ts(185,9): radio.RadioPacket.constructor"
radio_RadioPacket_constructor__P5172_pre:
    .section code
    .balign 4
    .section code
radio_RadioPacket_constructor__P5172:
    mov r7, lr
    ldr r0, [sp, #0]
    bl _inst_radio_RadioPacket__C3777_validate_15
    mov lr, r7
radio_RadioPacket_constructor__P5172_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
radio_RadioPacket_constructor__P5172_locals:
    ldr r0, [sp, args@0]
    ldr r1, [sp, args@1]
    str r1, [r0, #4]
    ldr r0, [sp, args@1]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_38      
.jmpz138:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r0, #36
    mov r7, sp
    str r7, [r6, #4]
    bl control::createBuffer
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    str r1, [r0, #4]
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.else_0_38:
.afterif_1_38:
    movs r0, #0
.ret.5172:
    @stackempty locals
.final_2_38:
radio_RadioPacket_constructor__P5172_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function radio/radio.ts(126,5): radio.onReceivedString
    ;
    .object radio_onReceivedString__P3773 "radio/radio.ts(126,5): radio.onReceivedString"
radio_onReceivedString__P3773_pre:
    .section code
    .balign 4
    .section code
radio_onReceivedString__P3773:
radio_onReceivedString__P3773_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
radio_onReceivedString__P3773_locals:
    bl radio_init__P5170
_proccall139:
    @stackempty locals
    ldr r0, [sp, args@0]
    movs r1, #248
    ldr r7, [r6, #0]
    str r0, [r7, r1]
    @stackempty locals
.ret.3773:
    @stackempty locals
    movs r0, #0
.final_0_39:
radio_onReceivedString__P3773_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-planetx/basic.ts(35,5): PlanetX_Basic.setreg
    ;
    .object PlanetX_Basic_setreg__P4136 "pxt-planetx/basic.ts(35,5): PlanetX_Basic.setreg"
PlanetX_Basic_setreg__P4136_pre:
    .section code
    .balign 4
    .section code
PlanetX_Basic_setreg__P4136:
PlanetX_Basic_setreg__P4136_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
PlanetX_Basic_setreg__P4136_locals:
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_18
    movs r1, #1
    bl _pxt_buffer_set
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_18
    movs r1, #3
    bl _pxt_buffer_set
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #252
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    push {r0} ; proc-arg
    bl _conv_19
    mov r7, sp
    str r7, [r6, #4]
    bl pins::i2cWriteBuffer
    add sp, #4*3 ; pop locals 3
    bl _numops_fromInt
    @stackempty locals
.ret.4136:
    @stackempty locals
    movs r0, #0
.final_0_40:
    add sp, #4*1 ; pop locals 1
PlanetX_Basic_setreg__P4136_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-planetx/basic.ts(45,5): PlanetX_Basic.getInt8LE
    ;
    .object PlanetX_Basic_getInt8LE__P4128 "pxt-planetx/basic.ts(45,5): PlanetX_Basic.getInt8LE"
PlanetX_Basic_getInt8LE__P4128_pre:
    .section code
    .balign 4
    .section code
PlanetX_Basic_getInt8LE__P4128:
PlanetX_Basic_getInt8LE__P4128_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
PlanetX_Basic_getInt8LE__P4128_locals:
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #15
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r0, #252
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl pins_i2cWriteNumber__P2740
_proccall140:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #3
    push {r0} ; proc-arg
    movs r0, #252
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl pins_i2cReadNumber__P2739
_proccall141:
    add sp, #4*3 ; pop locals 3
.ret.4128:
    @stackempty locals
.final_0_41:
PlanetX_Basic_getInt8LE__P4128_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pins.ts(112,5): pins.i2cReadNumber
    ;
    .object pins_i2cReadNumber__P2739 "core/pins.ts(112,5): pins.i2cReadNumber"
pins_i2cReadNumber__P2739_pre:
    .section code
    .balign 4
    .section code
pins_i2cReadNumber__P2739:
pins_i2cReadNumber__P2739_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
pins_i2cReadNumber__P2739_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl pins_sizeOf__P2764
_proccall142:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    push {r0} ; proc-arg
    bl _conv_20
    mov r7, sp
    str r7, [r6, #4]
    bl pins::i2cReadBuffer
    add sp, #4*3 ; pop locals 3
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_21
    movs r2, #0
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::getNumber
    add sp, #4*2 ; pop locals 2
.ret.2739:
    @stackempty locals
.final_0_42:
    add sp, #4*1 ; pop locals 1
pins_i2cReadNumber__P2739_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/buffer.ts(3,5): pins.sizeOf
    ;
    .object pins_sizeOf__P2764 "core/buffer.ts(3,5): pins.sizeOf"
pins_sizeOf__P2764_pre:
    .section code
    .balign 4
    .section code
pins_sizeOf__P2764:
pins_sizeOf__P2764_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
pins_sizeOf__P2764_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl Buffer_sizeOfNumberFormat__P2804
_proccall143:
    add sp, #4*1 ; pop locals 1
.ret.2764:
    @stackempty locals
.final_0_43:
pins_sizeOf__P2764_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/buffer.ts(509,5): Buffer.sizeOfNumberFormat
    ;
    .object Buffer_sizeOfNumberFormat__P2804 "core/buffer.ts(509,5): Buffer.sizeOfNumberFormat"
Buffer_sizeOfNumberFormat__P2804_pre:
    .section code
    .balign 4
    .section code
Buffer_sizeOfNumberFormat__P2804:
Buffer_sizeOfNumberFormat__P2804_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
Buffer_sizeOfNumberFormat__P2804_locals:
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @1
    mov r1, r0
    movs r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz144
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_44      
.jmpz144:
    movs r0, #5
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz145
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_44      
.jmpz145:
    movs r0, #13
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz146
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_44      
.jmpz146:
    movs r0, #15
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz147
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_44      
.jmpz147:
    movs r0, #7
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz148
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_44      
.jmpz148:
    movs r0, #9
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz149
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_44      
.jmpz149:
    movs r0, #17
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz150
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_44      
.jmpz150:
    movs r0, #19
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz151
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_44      
.jmpz151:
    movs r0, #11
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz152
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_8_44      
.jmpz152:
    movs r0, #21
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz153
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_9_44      
.jmpz153:
    movs r0, #25
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz154
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_10_44      
.jmpz154:
    movs r0, #23
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz155
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_11_44      
.jmpz155:
    movs r0, #31
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz156
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_12_44      
.jmpz156:
    movs r0, #27
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz157
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_13_44      
.jmpz157:
    movs r0, #33
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz158
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_14_44      
.jmpz158:
    movs r0, #29
    ldr r1, [sp, #4*0] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::switch_eq
    cmp r0, #0
    beq .jmpz159
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_15_44      
.jmpz159:
    pop {r0} ; tmpref @1
    b .brk.5731      
.switch_0_44:
.switch_1_44:
.switch_2_44:
.switch_3_44:
    movs r0, #3
    b .ret.2804      
.switch_4_44:
.switch_5_44:
.switch_6_44:
.switch_7_44:
    movs r0, #5
    b .ret.2804      
.switch_8_44:
.switch_9_44:
.switch_10_44:
.switch_11_44:
.switch_12_44:
.switch_13_44:
    movs r0, #9
    b .ret.2804      
.switch_14_44:
.switch_15_44:
    movs r0, #17
    b .ret.2804      
.brk.5731:
    movs r0, #1
.ret.2804:
    @stackempty locals
.final_16_44:
Buffer_sizeOfNumberFormat__P2804_end:
    pop {pc}
.object PUSH
.balign 4
_ldlit_22:
 .word radio_RadioPacket__C3777_VT
.object POP
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pins.ts(124,5): pins.i2cWriteNumber
    ;
    .object pins_i2cWriteNumber__P2740 "core/pins.ts(124,5): pins.i2cWriteNumber"
pins_i2cWriteNumber__P2740_pre:
    .section code
    .balign 4
    .section code
pins_i2cWriteNumber__P2740:
pins_i2cWriteNumber__P2740_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
pins_i2cWriteNumber__P2740_locals:
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    bl pins_sizeOf__P2764
_proccall160:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_22
    movs r2, #0
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::setNumber
    add sp, #4*3 ; pop locals 3
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@3]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    push {r0} ; proc-arg
    bl _conv_19
    mov r7, sp
    str r7, [r6, #4]
    bl pins::i2cWriteBuffer
    add sp, #4*3 ; pop locals 3
    bl _numops_fromInt
    @stackempty locals
.ret.2740:
    @stackempty locals
    movs r0, #0
.final_0_45:
    add sp, #4*1 ; pop locals 1
pins_i2cWriteNumber__P2740_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-planetx/basic.ts(41,5): PlanetX_Basic.getreg
    ;
    .object PlanetX_Basic_getreg__P4091 "pxt-planetx/basic.ts(41,5): PlanetX_Basic.getreg"
PlanetX_Basic_getreg__P4091_pre:
    .section code
    .balign 4
    .section code
PlanetX_Basic_getreg__P4091:
PlanetX_Basic_getreg__P4091_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
PlanetX_Basic_getreg__P4091_locals:
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #15
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r0, #252
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl pins_i2cWriteNumber__P2740
_proccall161:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #15
    push {r0} ; proc-arg
    movs r0, #252
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl pins_i2cReadNumber__P2739
_proccall162:
    add sp, #4*3 ; pop locals 3
.ret.4091:
    @stackempty locals
.final_0_46:
PlanetX_Basic_getreg__P4091_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-planetx/basic.ts(53,5): PlanetX_Basic.getInt16LE
    ;
    .object PlanetX_Basic_getInt16LE__P4046 "pxt-planetx/basic.ts(53,5): PlanetX_Basic.getInt16LE"
PlanetX_Basic_getInt16LE__P4046_pre:
    .section code
    .balign 4
    .section code
PlanetX_Basic_getInt16LE__P4046:
PlanetX_Basic_getInt16LE__P4046_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
PlanetX_Basic_getInt16LE__P4046_locals:
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #15
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r0, #252
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl pins_i2cWriteNumber__P2740
_proccall163:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #7
    push {r0} ; proc-arg
    movs r0, #252
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl pins_i2cReadNumber__P2739
_proccall164:
    add sp, #4*3 ; pop locals 3
.ret.4046:
    @stackempty locals
.final_0_47:
PlanetX_Basic_getInt16LE__P4046_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function pxt-planetx/basic.ts(49,5): PlanetX_Basic.getUInt16LE
    ;
    .object PlanetX_Basic_getUInt16LE__P4041 "pxt-planetx/basic.ts(49,5): PlanetX_Basic.getUInt16LE"
PlanetX_Basic_getUInt16LE__P4041_pre:
    .section code
    .balign 4
    .section code
PlanetX_Basic_getUInt16LE__P4041:
PlanetX_Basic_getUInt16LE__P4041_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
PlanetX_Basic_getUInt16LE__P4041_locals:
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #15
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r0, #252
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl pins_i2cWriteNumber__P2740
_proccall165:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #9
    push {r0} ; proc-arg
    movs r0, #252
    ldr r7, [r6, #0]
    ldr r0, [r7, r0]
    push {r0} ; proc-arg
    bl pins_i2cReadNumber__P2739
_proccall166:
    add sp, #4*3 ; pop locals 3
.ret.4041:
    @stackempty locals
.final_0_48:
PlanetX_Basic_getUInt16LE__P4041_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    .object _pxt_helper_trampoline "helper: trampoline"
    .section code
_pxt_lambda_trampoline:
    push { r4, r5, r6, r7, lr}
    mov r4, r8
    mov r5, r9
    mov r6, r10
    mov r7, r11
    push {r4, r5, r6, r7} ; save high registers
    mov r4, r1
    mov r5, r2
    mov r6, r3
    mov r7, r0
    bl _inst_builtin4_validate_0
    mov r0, sp
    push {r4, r5, r6, r7} ; push args and the lambda
    mov r1, sp
    bl pxt::pushThreadContext
    mov r6, r0          ; save ctx or globals
    mov r5, r7          ; save lambda for closure
    mov r0, r5          ; also save lambda pointer in r0 - needed by pxt::bindMethod
    ldr r1, [r5, #8]    ; ld fnptr
    movs r4, #3         ; 3 args
    blx r1              ; execute the actual lambda
    mov r7, r0          ; save result
    @dummystack 4
    add sp, #4*4        ; remove arguments and lambda
    mov r0, r6   ; or pop the thread context
    bl pxt::popThreadContext
    mov r0, r7 ; restore result
    pop {r4, r5, r6, r7} ; restore high registers
    mov r8, r4
    mov r9, r5
    mov r10, r6
    mov r11, r7
    pop { r4, r5, r6, r7, pc}
    .object _pxt_helper_exn "helper: exn"
    .section code
; r0 - try frame
; r1 - handler PC
_pxt_save_exception_state:
    push {r0, lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::beginTry
    pop {r1, r4}
    str r1, [r0, #1*4] ; PC
    mov r1, sp
    str r1, [r0, #2*4] ; SP
    str r5, [r0, #3*4] ; lambda ptr
    bx r4
    .section code
; r0 - try frame
; r1 - thread context
_pxt_restore_exception_state:
    mov r6, r1
    ldr r1, [r0, #2*4] ; SP
    mov sp, r1
    ldr r5, [r0, #3*4] ; lambda ptr
    ldr r1, [r0, #1*4] ; PC
    movs r0, #1
    orrs r1, r0
    bx r1
    .object _pxt_helper_stringconv "helper: stringconv"
    .section code
_pxt_stringConv:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #1
    bne .notstring
    bx lr
.notstring:
    ldr r7, [r3, #4*8]
    cmp r7, #0
    beq .fail
    push {r0, lr}
    movs r4, #1
    blx r7
    str r0, [sp, #0]
    b .numops
.fail:
    push {r0, lr}
.numops:
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toString
    pop {r1, pc}      
    .object _pxt_helper_get_buffer "helper: get buffer"
    .section code
_pxt_buffer_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #3
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldr r4, [r0, #4]
    cmp r1, r4
    bhs .oob
    adds r4, r0, r1
    ldrb r0, [r4, #8]
    lsls r0, r0, #1
    adds r0, #1
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::getAt
    lsls r0, r0, #1
    adds r0, #1
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    movs r0, #1 ; 0 or undefined
    bx lr
    .object _pxt_helper_get_array "helper: get array"
    .section code
_pxt_array_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #6
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldrh r4, [r0, #8]
    cmp r1, r4
    bhs .oob
    lsls r1, r1, #2
    ldr r4, [r0, #4]
    ldr r0, [r4, r1]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::getAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    movs r0, #0 ; 0 or undefined
    bx lr
    .object _pxt_helper_set_buffer "helper: set buffer"
    .section code
_pxt_buffer_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #3
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldr r4, [r0, #4]
    cmp r1, r4
    bhs .oob
    adds r4, r0, r1
    strb r2, [r4, #8]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::setAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    push {lr}
    b .doop
    .object _pxt_helper_set_array "helper: set array"
    .section code
_pxt_array_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #6
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldrh r4, [r0, #8]
    cmp r1, r4
    bhs .oob
    lsls r1, r1, #2
    ldr r4, [r0, #4]
    str r2, [r4, r1]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::setAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    push {lr}
    b .doop
    .object _pxt_helper_get "helper: get"
    .section code
_pxt_map_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #8
    bne .notmap
    push {lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapGetByString
    pop {pc}
.notmap:
    mov r4, r3 ; save VT
    push {r0, lr}
    mov r0, r1
    bl pxtrt::lookupMapKey
    mov r1, r0 ; put key index in r1
    ldr r0, [sp, #0] ; restore obj pointer
    mov r3, r4 ; restore vt
    bl .dowork
    add sp, #4*1 ; pop locals 1
    pop {pc}
.dowork:
    ldr r2, [r3, #12] ; load mult
    movs r7, r2
    beq .objlit ; built-in types have mult=0
    muls r7, r1
    lsrs r7, r2
    lsls r7, r7, #1 ; r7 - hash offset
    ldr r3, [r3, #4] ; iface table
    adds r3, r3, r7
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    movs r0, #0 ; undefined
    bx lr
.hit:
    adds r3, r3, r2 ; r3-descriptor
    ldr r2, [r3, #4]
    lsls r7, r2, #31
    beq .field
; check if it's getter
    ldrh r7, [r3, #2]
    cmp r7, #1
    bne .bind
    movs r4, #1
    bx r2
.bind:
    mov r4, lr
    bl _pxt_bind_helper
.field:
    ldr r0, [r0, r2] ; load field
    bx lr
.objlit:
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.fail2:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::missingProperty
    .object _pxt_helper_set "helper: set"
    .section code
_pxt_map_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #8
    bne .notmap
    push {lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapSetByString
    pop {pc}
.notmap:
    mov r4, r3 ; save VT
    push {r0, r2, lr}
    mov r0, r1
    bl pxtrt::lookupMapKey
    mov r1, r0 ; put key index in r1
    ldr r0, [sp, #0] ; restore obj pointer
    mov r3, r4 ; restore vt
    bl .dowork
    add sp, #4*2 ; pop locals 2
    pop {pc}
.dowork:
    ldr r2, [r3, #12] ; load mult
    movs r7, r2
    beq .objlit ; built-in types have mult=0
    muls r7, r1
    lsrs r7, r2
    lsls r7, r7, #1 ; r7 - hash offset
    ldr r3, [r3, #4] ; iface table
    adds r3, r3, r7
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    bne .fail2      
.hit:
    adds r3, r3, r2 ; r3-descriptor
    ldr r2, [r3, #4]
    lsls r7, r2, #31
    beq .field
; check for next descriptor
    ldrh r7, [r3, #8]
    cmp r7, r1
    bne .fail2 ; no setter!
    ldr r2, [r3, #12]
    movs r4, #2
    bx r2
.field:
    ldr r3, [sp, #4] ; ld-val
    str r3, [r0, r2] ; store field
    bx lr
.objlit:
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.fail2:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::missingProperty
    .object _pxt_helper_bind "helper: bind"
    .section code
_pxt_bind_helper:
    push {r0, r2}
    movs r0, #2
    ldr r1, _ldlit_24 ; _pxt_bind_lit      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::mkAction
    pop {r1, r2}
    str r1, [r0, #12]
    str r2, [r0, #16]
    bx r4 ; return
_pxt_bind_lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word .bindCode@fn
.bindCode:
; r0-bind object, r4-#args
    cmp r4, #12
    bge .fail
    lsls r3, r4, #2
    ldr r2, _ldlit_25 ; _pxt_copy_list      
    ldr r1, [r2, r3]
    ldr r3, [r0, #12]
    ldr r2, [r0, #16]
    adds r4, r4, #1
    bx r1
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
_pxt_copy_list:
    .word _pxt_bind_0@fn
    .word _pxt_bind_1@fn
    .word _pxt_bind_2@fn
    .word _pxt_bind_3@fn
    .word _pxt_bind_4@fn
    .word _pxt_bind_5@fn
    .word _pxt_bind_6@fn
    .word _pxt_bind_7@fn
    .word _pxt_bind_8@fn
    .word _pxt_bind_9@fn
    .word _pxt_bind_10@fn
    .word _pxt_bind_11@fn
_pxt_bind_0:
    sub sp, #4
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*1] ; store LR
    blx r2
    ldr r1, [sp, #4*1]
    add sp, #8
    bx r1
_pxt_bind_1:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*2] ; store LR
    blx r2
    ldr r1, [sp, #4*2]
    add sp, #8
    bx r1
_pxt_bind_2:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*3] ; store LR
    blx r2
    ldr r1, [sp, #4*3]
    add sp, #8
    bx r1
_pxt_bind_3:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*4] ; store LR
    blx r2
    ldr r1, [sp, #4*4]
    add sp, #8
    bx r1
_pxt_bind_4:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*5] ; store LR
    blx r2
    ldr r1, [sp, #4*5]
    add sp, #8
    bx r1
_pxt_bind_5:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*6] ; store LR
    blx r2
    ldr r1, [sp, #4*6]
    add sp, #8
    bx r1
_pxt_bind_6:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*7] ; store LR
    blx r2
    ldr r1, [sp, #4*7]
    add sp, #8
    bx r1
_pxt_bind_7:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*8] ; store LR
    blx r2
    ldr r1, [sp, #4*8]
    add sp, #8
    bx r1
_pxt_bind_8:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*9] ; store LR
    blx r2
    ldr r1, [sp, #4*9]
    add sp, #8
    bx r1
_pxt_bind_9:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*10] ; store LR
    blx r2
    ldr r1, [sp, #4*10]
    add sp, #8
    bx r1
_pxt_bind_10:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    ldr r1, [sp, #4*10]
    str r1, [sp, #4*9]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*11] ; store LR
    blx r2
    ldr r1, [sp, #4*11]
    add sp, #8
    bx r1
_pxt_bind_11:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    ldr r1, [sp, #4*10]
    str r1, [sp, #4*9]
    ldr r1, [sp, #4*11]
    str r1, [sp, #4*10]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*12] ; store LR
    blx r2
    ldr r1, [sp, #4*12]
    add sp, #8
    bx r1
_code_end:
    .section code
    .object _code_helper__inst_builtin4_validate_0
_inst_builtin4_validate_0:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #4
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_1
_conv_1:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin4_validate_0
    mov r1, r0      
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_2
_conv_2:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin4_validate_0
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__expand_args_1_3
_expand_args_1_3:
    movs r0, #0
    movs r1, #0
    push {r0}
    bx lr
    .section code
    .object _code_helper__conv_4
_conv_4:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__inst_midi_MidiController__C3004_validate_5
_inst_midi_MidiController__C3004_validate_5:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #17
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__expand_args_3_6
_expand_args_3_6:
    movs r0, #0
    movs r1, #0
    push {r0}
    cmp r4, #2
    blt .zero2
    ldr r0, [sp, #3*4]
    str r1, [sp, #3*4] ; clear existing
.zero2:
    push {r0}
    cmp r4, #1
    blt .zero1
    ldr r0, [sp, #3*4]
    str r1, [sp, #3*4] ; clear existing
.zero1:
    push {r0}
    bx lr
    .section code
    .object _code_helper__inst_builtin6_validate_7
_inst_builtin6_validate_7:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #6
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_8
_conv_8:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin6_validate_7
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__inst_builtin3_validate_9
_inst_builtin3_validate_9:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #3
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_10
_conv_10:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    bl _inst_builtin3_validate_9
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r2, r0      
    pop {r0}
    ldr r3, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_11
_conv_11:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin3_validate_9
    pop {pc}
.object PUSH
.balign 4
_ldlit_24:
 .word _pxt_bind_lit
_ldlit_25:
 .word _pxt_copy_list
.object POP
    @stackempty args
    .section code
    .object _code_helper__lambda_call1_12
_lambda_call1_12:
; lambda call
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #4
    bne .fail
    movs r4, #1
    ldrh r1, [r0, #4]
    cmp r1, #0
    bne .pushR5
    ldr r1, [r0, #8]
    bx r1 ; keep lr from the caller
.pushR5:
    sub sp, #8
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*0]
    str r5, [sp, #4*1]
    mov r1, lr
    str r1, [sp, #4*2]
    mov r5, r0
    ldr r7, [r5, #8]
    blx r7 ; exec actual lambda
    ldr r4, [sp, #4*2] ; restore what was in LR
    ldr r5, [sp, #4*1] ; restore lambda ctx
    ldr r1, [sp, #4*0]
    str r1, [sp, #4*2]
    add sp, #8
    bx r4
; end lambda call
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_13
_conv_13:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    mov r1, r0      
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__lambda_call2_14
_lambda_call2_14:
; lambda call
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #4
    bne .fail
    movs r4, #2
    ldrh r1, [r0, #4]
    cmp r1, #0
    bne .pushR5
    ldr r1, [r0, #8]
    bx r1 ; keep lr from the caller
.pushR5:
    sub sp, #8
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*1]
    str r5, [sp, #4*2]
    mov r1, lr
    str r1, [sp, #4*3]
    mov r5, r0
    ldr r7, [r5, #8]
    blx r7 ; exec actual lambda
    ldr r4, [sp, #4*3] ; restore what was in LR
    ldr r5, [sp, #4*2] ; restore lambda ctx
    ldr r1, [sp, #4*0]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*3]
    add sp, #8
    bx r4
; end lambda call
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__inst_radio_RadioPacket__C3777_validate_15
_inst_radio_RadioPacket__C3777_validate_15:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #18
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_16
_conv_16:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin3_validate_9
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r2, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_17
_conv_17:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    bl _inst_builtin3_validate_9
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint3
    lsls r0, r0, #1
    bl _numops_toInt
.isint3:
    mov r2, r0      
    pop {r1}
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_18
_conv_18:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    mov r2, r0      
    ldr r0, [sp, #4*2] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_19
_conv_19:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    bl _inst_builtin3_validate_9
    mov r1, r0      
    pop {r0}
    ldr r2, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_20
_conv_20:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0}
    ldr r2, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_21
_conv_21:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin3_validate_9
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_22
_conv_22:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    bl _inst_builtin3_validate_9
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0}
    ldr r3, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
_numops_adds:
    @scope _numops_adds
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r2, r1, #1
    adds r2, r0, r2
    bvs .boxed
    movs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::adds
                    add sp, #8
                    pop {pc}
_numops_subs:
    @scope _numops_subs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r2, r1, #1
    subs r2, r0, r2
    bvs .boxed
    movs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::subs
                    add sp, #8
                    pop {pc}
_numops_ands:
    @scope _numops_ands
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ands r0, r1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::ands
                    add sp, #8
                    pop {pc}
_numops_orrs:
    @scope _numops_orrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    orrs r0, r1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::orrs
                    add sp, #8
                    pop {pc}
_numops_eors:
    @scope _numops_eors
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    eors r0, r1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::eors
                    add sp, #8
                    pop {pc}
_numops_lsls:
    @scope _numops_lsls
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r2, r0, #1
    lsls r2, r3
    lsrs r3, r2, #30
    beq .ok
    cmp r3, #3
    bne .boxed
.ok:
    lsls r0, r2, #1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::lsls
                    add sp, #8
                    pop {pc}
_numops_lsrs:
    @scope _numops_lsrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r2, r0, #1
    lsrs r2, r3
    lsrs r3, r2, #30
    bne .boxed
    lsls r0, r2, #1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::lsrs
                    add sp, #8
                    pop {pc}
_numops_asrs:
    @scope _numops_asrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r0, r3
    movs r2, #1
    orrs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::asrs
                    add sp, #8
                    pop {pc}
@scope _numops_toInt
_numops_toInt:
    asrs r0, r0, #1
    bcc .over
    blx lr
.over:
    lsls r0, r0, #1
    push {lr}
mov r7, sp
    str r7, [r6, #4]
bl pxt::toInt
pop {pc}
_numops_fromInt:
    lsls r2, r0, #1
    asrs r1, r2, #1
    cmp r0, r1
    bne .over2
    adds r0, r2, #1
    blx lr
.over2:
    push {lr}
mov r7, sp
    str r7, [r6, #4]
bl pxt::fromInt
pop {pc}
.section code
.object _pxt_helper_cmp_lt
_cmp_lt:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    blt .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::lt
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_gt
_cmp_gt:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bgt .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::gt
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_le
_cmp_le:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    ble .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::le
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_ge
_cmp_ge:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bge .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::ge
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_eq
_cmp_eq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::eq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_eqq
_cmp_eqq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::eqq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_neq
_cmp_neq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bne .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::neq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_neqq
_cmp_neqq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bne .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::neqq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
_helpers_end:
        .object PlanetX_Basic_PAJ7620__C3523_VT
        .balign 4
PlanetX_Basic_PAJ7620__C3523_VT:
        .short 4  ; size in bytes
        .byte 4, 249 ; magic
        .word PlanetX_Basic_PAJ7620__C3523_IfaceVT
        .short 16 ; class-id
        .short 0 ; reserved
        .word 1101023519 ; hash-mult
        .word pxt::RefRecord_destroy@fn
        .word pxt::RefRecord_print@fn
        .word pxt::RefRecord_scan@fn
        .word pxt::RefRecord_gcsize@fn
        .word 0
        .balign 4
PlanetX_Basic_PAJ7620__C3523_IfaceVT:
  .short 12, 10, 8, 6, 4, 2
  .word 0, 0 ; the end
        .object midi_MidiController__C3004_VT
        .balign 4
midi_MidiController__C3004_VT:
        .short 12  ; size in bytes
        .byte 4, 249 ; magic
        .word midi_MidiController__C3004_IfaceVT
        .short 17 ; class-id
        .short 0 ; reserved
        .word 698755870 ; hash-mult
        .word pxt::RefRecord_destroy@fn
        .word pxt::RefRecord_print@fn
        .word pxt::RefRecord_scan@fn
        .word pxt::RefRecord_gcsize@fn
        .word 0
        .balign 4
midi_MidiController__C3004_IfaceVT:
  .short 40, 30, 12, 18, 8, 6, 4, 2
  .short 4, 0 ; channel
  .word 4
  .short 12, 0 ; velocity
  .word 8
  .short 8, 2 ; noteOn
  .word midi_MidiController_noteOn__P3009_args@fn
  .short 7, 2 ; noteOff
  .word midi_MidiController_noteOff__P3010_args@fn
  .word 0, 0 ; the end
        .object radio_RadioPacket__C3777_VT
        .balign 4
radio_RadioPacket__C3777_VT:
        .short 8  ; size in bytes
        .byte 4, 249 ; magic
        .word radio_RadioPacket__C3777_IfaceVT
        .short 18 ; class-id
        .short 0 ; reserved
        .word 1703617821 ; hash-mult
        .word pxt::RefRecord_destroy@fn
        .word pxt::RefRecord_print@fn
        .word pxt::RefRecord_scan@fn
        .word pxt::RefRecord_gcsize@fn
        .word 0
        .balign 4
radio_RadioPacket__C3777_IfaceVT:
  .short 24, 62, 44, 26, 48, 14, 12, 10, 24, 6, 4, 2
  .short 5, 0 ; data
  .word 4
  .short 6, 2 ; getPacket
  .word radio_RadioPacket_getPacket__P3778_args@fn
  .short 10, 1 ; packetType
  .word radio_RadioPacket_packetType__P3781_args@fn
  .short 11, 1 ; stringPayload
  .word radio_RadioPacket_stringPayload__P3786_args@fn
  .short 9, 1 ; numberPayload
  .word radio_RadioPacket_numberPayload__P3788_args@fn
  .short 3, 1 ; bufferPayload
  .word radio_RadioPacket_bufferPayload__P3790_args@fn
  .word 0, 0 ; the end
.balign 4
.object _pxt_iface_member_names
_pxt_iface_member_names:
    .word 13
    .word _str167  ; 0 .
    .word _str168  ; 1 .CD_pressed
    .word _str169  ; 2 .CD_unpressed
    .word _str170  ; 3 .bufferPayload
    .word _str171  ; 4 .channel
    .word _str172  ; 5 .data
    .word _str173  ; 6 .getPacket
    .word _str174  ; 7 .noteOff
    .word _str175  ; 8 .noteOn
    .word _str176  ; 9 .numberPayload
    .word _str177  ; 10 .packetType
    .word _str178  ; 11 .stringPayload
    .word _str179  ; 12 .velocity
    .word 0
_vtables_end:
.balign 4
.object _pxt_config_data
_pxt_config_data:
    .word 0
            .balign 4
            .object _str167
_str167:
 .word pxt::string_inline_ascii_vt
    .short 0
    .string ""
            .balign 4
            .object _str168
_str168:
 .word pxt::string_inline_ascii_vt
    .short 10
    .string "CD_pressed"
            .balign 4
            .object _str169
_str169:
 .word pxt::string_inline_ascii_vt
    .short 12
    .string "CD_unpressed"
            .balign 4
            .object _str170
_str170:
 .word pxt::string_inline_ascii_vt
    .short 13
    .string "bufferPayload"
            .balign 4
            .object _str171
_str171:
 .word pxt::string_inline_ascii_vt
    .short 7
    .string "channel"
            .balign 4
            .object _str172
_str172:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "data"
            .balign 4
            .object _str173
_str173:
 .word pxt::string_inline_ascii_vt
    .short 9
    .string "getPacket"
            .balign 4
            .object _str174
_str174:
 .word pxt::string_inline_ascii_vt
    .short 7
    .string "noteOff"
            .balign 4
            .object _str175
_str175:
 .word pxt::string_inline_ascii_vt
    .short 6
    .string "noteOn"
            .balign 4
            .object _str176
_str176:
 .word pxt::string_inline_ascii_vt
    .short 13
    .string "numberPayload"
            .balign 4
            .object _str177
_str177:
 .word pxt::string_inline_ascii_vt
    .short 10
    .string "packetType"
            .balign 4
            .object _str178
_str178:
 .word pxt::string_inline_ascii_vt
    .short 13
    .string "stringPayload"
            .balign 4
            .object _str179
_str179:
 .word pxt::string_inline_ascii_vt
    .short 8
    .string "velocity"
            .balign 4
            .object _str1
_str1:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "stop"
            .balign 4
            .object _str2
_str2:
 .word pxt::string_inline_ascii_vt
    .short 7
    .string "Stopped"
            .balign 4
            .object _str6
_str6:
 .word pxt::string_inline_ascii_vt
    .short 17
    .string "Robotic Drummer 2"
.object _dbl0
.balign 4
_dbl0:
 .word pxt::number_vt
        .hex ef39fafe422ee63f
.object _dbl3
.balign 4
_dbl3:
 .word pxt::number_vt
        .hex 0ad7a3703d5a5040
.object _dbl4
.balign 4
_dbl4:
 .word pxt::number_vt
        .hex 0000000000205740
.object _dbl5
.balign 4
_dbl5:
 .word pxt::number_vt
        .hex 7b14ae47e15a5240
.balign 4
.section code
.object _perf_counters
_pxt_perf_counters:
    .word 0
_literals_end:
