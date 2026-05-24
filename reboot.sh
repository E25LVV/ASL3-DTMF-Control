#!/bin/bash

# ==================================================
# E25LVV ASL3 DTMF Reboot Script
# ไม่ใช่กูรู แต่รู้แล้วแบ่งปัน
# ==================================================

# Root permission check
if [ "$(id -u)" -ne 0 ]; then
    logger "[E25LVV] reboot.sh requires root privilege"
    exit 1
fi

LOGFILE="/var/log/asterisk/dtmf_reboot.log"

echo "=========================================" >> $LOGFILE
echo "$(date): DTMF reboot command received" >> $LOGFILE
echo "System will reboot in 3 seconds" >> $LOGFILE

logger "[E25LVV] DTMF reboot command received"

sleep 3

/sbin/reboot

exit 0
