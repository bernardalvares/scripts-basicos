#!/bin/bash


MEMTOTAL=$(expr $(cat /proc/meminfo | grep MemTotal | tr -d ' ' | cut -d: -f2 | tr -d kB) / 1024) #EM MB


echo "A memória total é: $MEMTOTAL MB"
