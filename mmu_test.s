.section .text

.global _start
_start:
movhi r2, 0xF000
ori r3, r0, 0x79
stw r3, 16(r2)
LOOP:
    br LOOP
