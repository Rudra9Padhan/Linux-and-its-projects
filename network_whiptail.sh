#!/bin/bash
# =========================================
# Network Troubleshooter Script (Whiptail UI)
# Author: Rudra
# =========================================

while true; do
    CHOICE=$(whiptail --title "🐧 Linux Network Troubleshooter" --menu "Choose an option:" 20 70 10 \
    "1" "Show Hostname & IP" \
    "2" "Check Internet Connectivity" \
    "3" "Ping a Host" \
    "4" "Show Open Ports" \
    "5" "Show Routing Table" \
    "6" "Bandwidth Monitoring" \
    "7" "Exit" 3>&1 1>&2 2>&3)

    case $CHOICE in
        1)
            INFO="Hostname: $(hostname)\nIP: $(hostname -I)"
            whiptail --msgbox "$INFO" 12 60
            ;;
        2)
            ping -c 2 8.8.8.8 > /dev/null 2>&1
            if [ $? -eq 0 ]; then
                whiptail --msgbox "✅ Internet is reachable (Google DNS 8.8.8.8)" 10 60
            else
                whiptail --msgbox "❌ No Internet connection" 10 60
            fi
            ;;
        3)
            HOST=$(whiptail --inputbox "Enter host to ping:" 10 60 "google.com" 3>&1 1>&2 2>&3)
            if ping -c 3 "$HOST" > /dev/null 2>&1; then
                whiptail --msgbox "✅ $HOST is reachable" 10 60
            else
                whiptail --msgbox "❌ $HOST is not reachable" 10 60
            fi
            ;;
        4)
            OUTPUT=$(ss -tuln)
            whiptail --msgbox "Open Ports:\n\n$OUTPUT" 20 70
            ;;
        5)
            OUTPUT=$(ip route)
            whiptail --msgbox "Routing Table:\n\n$OUTPUT" 20 70
            ;;
        6)
            whiptail --msgbox "👉 Run 'sudo iftop -i eth0' or 'nload' for live bandwidth monitoring." 10 70
            ;;
        7)
            whiptail --msgbox "✅ Exiting Network Troubleshooter. Goodbye!" 10 50
            exit 0
            ;;
        *)
            whiptail --msgbox "⚠️ Invalid choice!" 10 40
            ;;
    esac
done
