# Linux Networking Commands
🔹 Basic Network Information

ifconfig → Show network interfaces and IP addresses (deprecated, replaced by ip).

ip addr → Display IP addresses and interfaces.

ip link → Show/modify network interfaces.

ip route → Display or set routing table.

hostname → Show or set system hostname.

hostname -I → Display all assigned IP addresses.

🔹 Connectivity Testing

ping <host> → Test connectivity to a host.

traceroute <host> → Show the route packets take to a destination.

tracepath <host> → Similar to traceroute (usually pre-installed).

curl <url> → Test HTTP/HTTPS connectivity.

wget <url> → Download files over HTTP/FTP.

🔹 DNS Tools :

nslookup <domain> → Query DNS records (simple).

dig <domain> → Detailed DNS lookup.

host <domain> → Resolve a domain name to an IP.

🔹 Network Monitoring :

netstat -tulnp → Show active connections, listening ports, and processes (deprecated).

ss -tulnp → Replacement for netstat; show sockets and listening ports.

lsof -i → List open network connections.

tcpdump -i eth0 → Capture packets on an interface.

wireshark → GUI packet analyzer.

iftop → Monitor bandwidth usage per connection.

nload → Real-time incoming/outgoing traffic monitor.

🔹 File Transfer & Remote Access :

scp file user@host:/path → Securely copy files between systems.

rsync -avz file user@host:/path → Efficient file transfer/sync.

sftp user@host → Secure FTP.

ssh user@host → Remote login to another system.

🔹 Firewall & Security:

ufw status → Check firewall status (Ubuntu/Debian).

iptables -L → List firewall rules.

firewalld-cmd --list-all → Show firewall settings (RHEL/CentOS).

nmap <host> → Scan ports/services on a host.


🔹 Advanced Networking:

ethtool eth0 → Show Ethernet device settings.

mtr <host> → Continuous traceroute + ping.

arp -a → Display ARP table.

route -n → Show routing table (deprecated, use ip route).

iwconfig → Configure Wi-Fi interfaces.

nmcli → Control NetworkManager (modern tool for connections).

------------------------------------------------------------------------------------------------------

🔹 Basic Network Information
ip addr


👉 Shows IP addresses of all network interfaces. Example output:

2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> ...
    inet 192.168.1.10/24 brd 192.168.1.255 scope global eth0

ip route


👉 Displays the routing table:

default via 192.168.1.1 dev eth0
192.168.1.0/24 dev eth0 proto kernel scope link src 192.168.1.10

hostname -I


👉 Shows the IP address of your machine:

192.168.1.10


----

🔹 Connectivity Testing
ping google.com


👉 Test connectivity to Google’s server:

64 bytes from 142.250.183.110: icmp_seq=1 ttl=118 time=32.1 ms

traceroute google.com


👉 Shows the hops your packets take to reach Google.

curl -I https://openai.com


👉 Fetch only HTTP headers:

HTTP/2 200
date: Sun, 25 Aug 2025 17:00:00 GMT
content-type: text/html

-----

🔹 DNS Tools
dig openai.com


👉 Query DNS records:

;; ANSWER SECTION:
openai.com.    300 IN A 104.18.12.123

host openai.com


👉 Quick DNS lookup:

openai.com has address 104.18.12.123

---------------

🔹 Network Monitoring
ss -tulnp


👉 Show listening TCP/UDP ports and processes:

Netid State  Local Address:Port   Process
tcp   LISTEN 0.0.0.0:22           users:(("sshd",pid=1234,fd=3))

tcpdump -i eth0 port 80


👉 Capture HTTP packets on interface eth0.

iftop -i eth0


👉 Live bandwidth usage per connection:

192.168.1.10 => 93.184.216.34  1.56Mb

--------------------

🔹 File Transfer & Remote Access
scp file.txt user@192.168.1.20:/home/user/


👉 Copy file.txt to remote host.

rsync -avz /var/www/ user@192.168.1.20:/backup/www/


👉 Sync local /var/www/ to remote /backup/www/.

ssh user@192.168.1.20


👉 Login to remote server via SSH.

-------------

🔹 Firewall & Security
ufw status


👉 Shows allowed ports:

22/tcp ALLOW Anywhere
80/tcp ALLOW Anywhere

nmap -p 22,80 192.168.1.20


👉 Scan SSH and HTTP ports:

PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http

----------

🔹 Advanced Networking
ethtool eth0

👉 Show interface details like speed, duplex, etc.

arp -a


👉 Show ARP cache:

192.168.1.1   ether 00:1a:2b:3c:4d:5e   C eth0

nmcli device status


👉 Show connection status of all devices:

DEVICE  TYPE      STATE      CONNECTION
eth0    ethernet  connected  Wired connection 1
wlan0   wifi      disconnected  --
