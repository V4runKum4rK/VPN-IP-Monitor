# VPN-IP-Monitor
A simple script to display VPN IP address (tun0) in Kali Linux



# VPN IP Monitor Script
This is a lightweight Bash script that displays the VPN IP address (from `tun0`) in a format compatible with panel tools like **Argos**, **Xfce panel plugins**, or **Polybar**.
The script checks if the `tun0` interface is active (commonly used by VPNs) and shows the IP address in **yellow**. If the VPN is not connected, it shows a "No VPN" message in gray.

## 📌 Features
- Detects VPN interface (`tun0`)
- Displays VPN IP in yellow
- Compatible with panel bar tools that support XML-like output (e.g., Argos)
- Designed with **Kali Linux** in mind

## 💻 Tested On
- Kali Linux (Rolling Release)
- Bash 5.x
- NetworkManager/OpenVPN

## 📦 Dependencies
- `ip`
- `awk`
- `cut`

These are already available in Kali by default.
## 🚀 Usage
1. **Clone the repository**

   ```bash
   git clone https://github.com/V4runKum4rK/vpn-ip-monitor.git
   cd vpn-ip-monitor
   # Clone the repo (replace with your repo URL)
git clone https://github.com/your-username/vpn-ip-monitor.git

# Move into the repo
cd vpn-ip-monitor

# Copy your script
cp /path/to/vpn-ip-monitor.sh .

# Make it executable just in case
chmod +x vpn-ip-monitor.sh

# Add the script
git add vpn-ip-monitor.sh

# Add a README file
nano README.md

Make sure you chmod +x widget.sh (or whatever you named it) to give it the appropriate execution permissions, then right-click your panel and select Panel > Add New Items... Your experience may vary depending on exactly which distribution you're working with. Within new items, you're looking for Generic Monitor.
Panel > Add New Items > Generic Monitor

Once you've added it, right-click and "Move," then slide that bad boy over to where you'd like it to be, then right-click and select Properties. Within properties, you want to click the ... and find the file location for your script, then uncheck the label box, and if so desired, change the Period (s) to something like 5s, so it updates a little faster. It's not too taxing on the system, so running it fairly often shouldn't affect anything. The last thing to do is just save it and enjoy your new IP Address Widget!
   
