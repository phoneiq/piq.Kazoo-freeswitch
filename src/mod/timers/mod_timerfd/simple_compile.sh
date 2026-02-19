#!/bin/bash

# Compilar mod_timerfd con dependencias mínimas
gcc -shared -fPIC -o mod_timerfd.so     -DHAVE_CONFIG_H     -D_REENTRANT     -D_GNU_SOURCE     -DSWITCH_HAVE_TIMERFD     -I../../../include     -I../../../include/private     -I../../../libs/libteletone/src     -I../../../libs/apr/include     -I../../../libs/apr/include/arch/unix     mod_timerfd.c     -lrt -ldl -lpthread -luuid

echo "Compilación completada: $(ls -la mod_timerfd.so)"
