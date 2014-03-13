#!/bin/sh
#================================================================================
# ELF to Intel HEX Converter
#
# ** Note **
# This script converts file format with keeping ELF file structure.
#================================================================================

sections="-j.entry -j.exceptions -j.text -j.rodata -j.rwdata -j.bss"

if [[ -z "$1" || -z "$2" ]]; then
  echo "usage: $0 <input-file> <output-file>"
  exit 1
fi
if [[ -z "$3" ]]; then
  temp=`mktemp`
else
  temp="$3"
fi

nios2-linux-objcopy $sections $1 $temp
result=$?
if [[ $result -ne 0 ]]; then
  if [[ -z "$3" ]]; then
    rm -f $temp
  fi
  exit $result
fi

nios2-linux-objcopy -Ibinary -Oihex $temp $2
result=$?
if [[ -z "$3" ]]; then
  rm -f $temp
fi
exit $result

