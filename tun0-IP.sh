#!/bin/bash

# VPN IP Monitor Script
# Displays VPN (TUN) IP address in yellow if available

# Get IP address from tun0 (VPN interface)
tunIP=$(ip -o -4 addr show tun0 2>/dev/null | awk '{print $4}' | cut -d/ -f1)

# Check if tun0 interface exists and has an IP
if [[ -n "$tunIP" ]]; then
    # Output VPN IP in yellow
    echo "<txt><span fgcolor='Yellow'>${tunIP}</span></txt> <tool><span fgcolor='Yellow'>VPN</span></tool>"
else
    # Optional: output blank or status message when VPN is not connected
    echo "<txt><span fgcolor='Gray'>No VPN</span></txt> <tool><span fgcolor='Gray'>VPN not connected</span></tool>"
fi

