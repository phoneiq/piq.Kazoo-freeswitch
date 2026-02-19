#!/bin/bash
#
# Compilador simple para mod_cdr_csv_rtp
# PhoneIQ Infrastructure Team - Noviembre 2025
#

set -e

echo '🚀 Compilando mod_cdr_csv_rtp...'

cd /usr/src/freeswitch/src/mod/event_handlers/mod_cdr_csv

# Verificar que mod_cdr_csv_rtp.c existe
if [ ! -f 'mod_cdr_csv_rtp.c' ]; then
    echo '❌ Error: mod_cdr_csv_rtp.c no encontrado'
    exit 1
fi

# Compilar
gcc -shared -fPIC -o mod_cdr_csv_rtp.so     -DHAVE_CONFIG_H     -D_REENTRANT     -D_GNU_SOURCE     -I../../../include     -I../../../include/private     -I../../../libs/libteletone/src     -I../../../libs/apr/include     mod_cdr_csv_rtp.c     -lrt -ldl -lpthread -luuid

if [ -f 'mod_cdr_csv_rtp.so' ]; then
    echo '✅ Compilación exitosa!'
    ls -la mod_cdr_csv_rtp.so
    file mod_cdr_csv_rtp.so
else
    echo '❌ Error en compilación'
    exit 1
fi
