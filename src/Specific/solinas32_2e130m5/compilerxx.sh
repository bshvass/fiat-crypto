#!/bin/sh
set -eu

g++ -march=native -mtune=native -std=gnu++11 -O3 -flto -fomit-frame-pointer -fwrapv -Wno-attributes -Dmodulus_bytes_val='26' -Dlimb_t=uint32_t -Dq_mpz='(1_mpz<<130) - 5 ' -Dmodulus_limbs='5' -Dlimb_weight_gaps_array='{26,26,26,26,26}' -Dmodulus_array='{0x03,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xfb}' "$@"