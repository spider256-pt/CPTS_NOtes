#samrdump.py is a script from the Impacket toolkit that allows enumeration of domain users, groups, and policy info via the SAMR (Security Account Manager Remote) protocol over SMB.
It works even with anonymous access, and is often used for RID cycling or gathering user information from misconfigured servers.

# Clone the Impacket repo
git clone https://github.com/fortra/impacket.git

# Go to examples directory
cd impacket/examples

# Optional: install dependencies
pip3 install -r requirements.txt
