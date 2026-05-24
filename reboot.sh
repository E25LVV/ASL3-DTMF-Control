#!/bin/bash

# ==================================================
# E25LVV ASL3 DTMF Reboot Script
# Production-safe reboot control for AllStarLink 3
# ==================================================

LOGFILE="/var/log/asterisk/dtmf_reboot.log"

echo "=========================================" >> $LOGFILE
echo "$(date): DTMF reboot command received" >> $LOGFILE
echo "System will reboot in 3 seconds" >> $LOGFILE

logger "[E25LVV] DTMF reboot command received"

sleep 3

/sbin/reboot
