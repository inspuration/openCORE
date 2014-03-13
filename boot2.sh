#! /bin/bash

nios2-elf-gcc -Os -I ./libtomcrypt-1.17/src/headers/ -I ./libtommath-0.42.0/ -L. test.c -ltomcrypt -ltommath -DLTM_DESC -o boot2.elf



