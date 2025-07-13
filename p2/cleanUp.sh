#!/bin/bash
# Script para borrar!
find /tmp/backup/ -type f -name backup-* -mtime +3 -exec rm {} \;