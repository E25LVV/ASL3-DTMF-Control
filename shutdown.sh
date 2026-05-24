#!/bin/bash

# ==================================================
# E25LVV ASL3 DTMF Shutdown Script
# Production-safe shutdown control for AllStarLink 3
# ==================================================

LOGFILE="/var/log/asterisk/dtmf_shutdown.log"

echo "=========================================" >> $LOGFILE
echo "$(date): DTMF shutdown command received" >> $LOGFILE
echo "System will shutdown in 3 seconds" >> $LOGFILE

logger "[E25LVV] DTMF shutdown command received"

sleep 3

/sbin/shutdown now

exit 0
