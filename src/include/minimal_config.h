#ifndef MINIMAL_FREESWITCH_CONFIG_H
#define MINIMAL_FREESWITCH_CONFIG_H

#define SWITCH_INT_16  short
#define SWITCH_INT_32  int
#define SWITCH_INT_64  long long
#define SWITCH_SIZE_T  size_t
#define SWITCH_SSIZE_T ssize_t
#define SWITCH_SIZEOF_VOIDP 8

#define SWITCH_SSIZE_T_FMT "%ld"
#define SWITCH_SIZE_T_FMT "%lu"
#define SWITCH_INT64_T_FMT "%lld"
#define SWITCH_UINT64_T_FMT "%llu"

#define SWITCH_PREFIX_DIR "/usr/local/freeswitch"

#include <stdint.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

typedef size_t switch_size_t;
typedef ssize_t switch_ssize_t;

