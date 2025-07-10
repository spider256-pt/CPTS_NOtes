'''samrdump.py is a script from the Impacket toolkit that allows enumeration of domain users, groups, and policy info via the SAMR (Security Account Manager Remote) protocol over SMB.
It works even with anonymous access, and is often used for RID cycling or gathering user information from misconfigured servers.'''

# Clone the Impacket repo
#git clone https://github.com/fortra/impacket.git
# Go to examples directory
#cd impacket/examples
# Optional: install dependencies
#pip3 install -r requirements.txt

#!/bin/bash
# 🛠️ SAMR Enumeration using Impacket's samrdump.py

# Target IP
TARGET="192.168.94.140"

# Navigate to Impacket's example scripts (adjust if installed globally)
cd ~/tools/impacket/examples

# Run samrdump against the target
python3 samrdump.py $TARGET

# samrdump will attempt to connect anonymously and dump:
# - Domain info
# - Usernames and RIDs
# - Account status (disabled, expired, etc.)

