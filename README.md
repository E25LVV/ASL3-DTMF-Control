# ASL3-DTMF-Control

Remote Reboot / Shutdown สำหรับ AllStarLink 3 ผ่านระบบ DTMF

---

## ไม่ใช่กูรู แต่รู้แล้วแบ่งปัน

โปรเจคนี้เกิดจากการทดลองใช้งานจริงบนระบบ AllStarLink ของ E25LVV

ทั้ง Mini Node, Hotspot และ Raspberry Pi สำหรับ ASL3 บน Debian 12

หลายอย่างใน repo นี้
เกิดจากการลองผิดลองถูก
อ่าน
ศึกษา
ทดลองใช้งานจริง
แล้วนำกลับมาแบ่งปันต่อให้เพื่อนๆนักวิทยุสมัครเล่น

เพื่อให้มือใหม่สามารถเรียนรู้และต่อยอดได้ง่ายขึ้น

---

# แนวคิดของโปรเจค

แนวทางนี้พัฒนาต่อยอดจากแนวคิดเดิมของ KD5FMU

แล้วนำมาปรับให้เหมาะกับการใช้งานจริงในปัจจุบัน
โดยเฉพาะ AllStarLink 3 และ Debian 12

สิ่งที่พยายามโฟกัสคือ

* ใช้งานจริงได้
* ไม่ซับซ้อนเกินไป
* มือใหม่อ่านตามได้
* ดูแลง่าย
* เหมาะกับงานภาคสนาม

---

# Features

* Reboot Node ผ่าน DTMF
* Shutdown Node ผ่าน DTMF
* Logging เบื้องต้น
* Deploy ผ่าน GitHub Raw URL
* ใช้งานร่วมกับ ASL3 ได้
* ไม่ต้องติดตั้ง package เพิ่ม

---

# Security Warning

ระบบนี้สามารถสั่ง Reboot หรือ Shutdown เครื่องได้จริง

หากใช้งานบน RF สาธารณะ
หรือระบบที่มีผู้ใช้งานหลายคน
ควรใช้งานด้วยความระมัดระวัง

คำแนะนำเบื้องต้น

* ไม่ใช้ DTMF code ที่เดาง่าย
* ไม่เผยแพร่ code ควบคุมสู่สาธารณะ
* ทดลองกับเครื่องทดสอบก่อน
* หากเป็นไปได้ ควรใช้กับระบบส่วนตัว

---

# Tested Environment

ทดลองใช้งานบน

* AllStarLink 3 (ASL3)
* Debian 12
* Raspberry Pi
* Mini Node
* Hotspot

---

# Installation

## Create local directory

```bash id="1x2y3z"
sudo mkdir -p /etc/asterisk/local
cd /etc/asterisk/local
```

---

## Download reboot.sh

```bash id="4a5b6c"
sudo wget -O reboot.sh https://raw.githubusercontent.com/E25LVV/ASL3-DTMF-Control/main/reboot.sh
```

---

## Download shutdown.sh

```bash id="7d8e9f"
sudo wget -O shutdown.sh https://raw.githubusercontent.com/E25LVV/ASL3-DTMF-Control/main/shutdown.sh
```

---

## Set executable permission

```bash id="0g1h2i"
sudo chmod +x reboot.sh
sudo chmod +x shutdown.sh
```

---

# Example rpt.conf Functions

ตัวอย่าง config อยู่ที่

```text id="3j4k5l"
examples/rpt.functions.example
```

---

# Example

```ini id="6m7n8o"
[functions]

990 = cmd,/etc/asterisk/local/shutdown.sh

991 = cmd,/etc/asterisk/local/reboot.sh
```

---

# หมายเหตุ

แนวทางนี้

* ไม่ต้องใช้ crontab
* ไม่ต้องติดตั้ง package เพิ่ม
* ใช้ความสามารถเดิมของ app_rpt ร่วมกับ Linux shell script

เหมาะสำหรับเพื่อนๆที่ต้องการแนวทางเรียบง่าย
และอยากเรียนรู้ระบบ AllStarLink เพิ่มเติมจากการใช้งานจริง

---

# เครดิตต้นแบบแนวคิด

KD5FMU

---

# เรียบเรียงและทดลองใช้งานจริง

E25LVV
AllStarLink Thailand Community

“ไม่ใช่กูรู แต่รู้แล้วแบ่งปัน”
