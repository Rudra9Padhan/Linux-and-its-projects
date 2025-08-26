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

🔹 DNS Tools

nslookup <domain> → Query DNS records (simple).

dig <domain> → Detailed DNS lookup.

host <domain> → Resolve a domain name to an IP.

🔹 Network Monitoring

netstat -tulnp → Show active connections, listening ports, and processes (deprecated).

ss -tulnp → Replacement for netstat; show sockets and listening ports.

lsof -i → List open network connections.

tcpdump -i eth0 → Capture packets on an interface.

wireshark → GUI packet analyzer.

iftop → Monitor bandwidth usage per connection.

nload → Real-time incoming/outgoing traffic monitor.

🔹 File Transfer & Remote Access

scp file user@host:/path → Securely copy files between systems.

rsync -avz file user@host:/path → Efficient file transfer/sync.

sftp user@host → Secure FTP.

ssh user@host → Remote login to another system.

🔹 Firewall & Security

ufw status → Check firewall status (Ubuntu/Debian).

iptables -L → List firewall rules.

firewalld-cmd --list-all → Show firewall settings (RHEL/CentOS).

nmap <host> → Scan ports/services on a host.

🔹 Advanced Networking

ethtool eth0 → Show Ethernet device settings.

mtr <host> → Continuous traceroute + ping.

arp -a → Display ARP table.

route -n → Show routing table (deprecated, use ip route).

iwconfig → Configure Wi-Fi interfaces.

nmcli → Control NetworkManager (modern tool for connections).



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
