## 1.CREATE A PROJECT FILE
Open terminal and type:
```
mkdir linux_system_info
cd linux_system_info
nano system_info.sh
```
## 2.WRITE BASH SCRIPT CODE
```
#!/bin/bash

clear
echo "---------------------------------------"
echo "      LINUX SYSTEM INFORMATION TOOL    "
echo "---------------------------------------"

echo ""
echo "SYSTEM INFORMATION"
uname -a

echo ""
echo "CPU INFORMATION"
lscpu | head -10

echo ""
echo "MEMORY (RAM) USAGE"
free -h

echo ""
echo "DISK USAGE"
df -h

echo ""
echo "SYSTEM UPTIME"
uptime

echo ""
echo "TOP RUNNING PROCESSES"
top -b -n 1 | head -15

echo ""
echo "---------------------------------------"
echo "        END OF REPORT                  "
echo "---------------------------------------"
```
## 3.GIVE EXECUTION PERMISSION
```
chmod +x system_info.sh
```
## 5.RUN THE PROJECT
```
./system_info.sh
```


