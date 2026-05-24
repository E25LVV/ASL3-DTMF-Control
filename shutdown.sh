#!/bin/bash

# ==================================================
# E25LVV ASL3 DTMF Shutdown Script
# ไม่ใช่กูรู แต่รู้แล้วแบ่งปัน
# ==================================================

# Root permission check
if [ "$(id -u)" -ne 0 ]; then
    logger "[E25LVV] shutdown.sh requires root privilege"
    exit 1
fi

LOGFILE="/var/log/asterisk/dtmf_shutdown.log"

echo "=========================================" >> $LOGFILE
echo "$(date): DTMF shutdown command received" >> $LOGFILE
echo "System will shutdown in 3 seconds" >> $LOGFILE

logger "[E25LVV] DTMF shutdown command received"

sleep 3

/sbin/shutdown now

exit 0
