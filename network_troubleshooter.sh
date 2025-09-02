#!/bin/bash
# =========================================
# Network Troubleshooter Script
# Author: Rudra
# =========================================

echo "======================================"
echo "       Linux Network Troubleshooter"
echo "======================================"

# 1. Show Hostname & IP
echo -e "\n Hostname & IP Information:"
hostname
hostname -I

# 2. Test Internet Connectivity
echo -e "\n Checking Internet Connectivity..."
ping -c 2 8.8.8.8 > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo " Internet is reachable (Google DNS 8.8.8.8)"
else
    echo " No Internet connection"
fi

# 3. Ping a User-Given Host
echo -n "Enter a host to ping (example: google.com): "
read host
ping -c 3 $host > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo " $host is reachable"
else
    echo " $host is not reachable"
fi

# 4. Show Open TCP/UDP Ports
echo -e "\n Open Ports (ss command):"
ss -tuln

# 5. Show Routing Table
echo -e "\n Routing Table:"
ip route

# 6. Optional: Bandwidth Monitoring
echo -e "\n (Optional) Run iftop or nload for live bandwidth monitoring."
echo "   Example: sudo iftop -i eth0 OR nload"

echo -e "\n Network Troubleshooting Completed!"
