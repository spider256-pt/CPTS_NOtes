tags: [SMB, CPTS, Enumeration, Pentesting, OSCP, CTF]

# CPTS_NOtes
 Practical, command-focused notes for mastering
# 🛡️ CPTS_Notes

Practical, tool-based notes focused on **SMB enumeration**, **footprinting**, and **misconfiguration exploitation**. Created while preparing for the **Certified Penetration Testing Specialist (CPTS)** exam.

Ideal for:
- 🧠 CPTS / OSCP candidates
- 💻 CTF players (HTB, TryHackMe)
- 🛠️ Red teamers & beginner pentesters

---

## 📘 Contents

- ✅ SMB Sign-In Procedure
- ✅ Dangerous Samba Configuration Settings
- ✅ Tools & Commands:
  - `smbclient`
  - `rpcclient`
  - `smbmap`
  - `crackmapexec`
  - `samrdump.py` (Impacket)
  - `enum4linux-ng`
- ✅ RID Bruteforcing (RPC)
- ✅ Sample output for real-world context

---

## 📂 Directory Structure

```bash
CPTS_Notes/
├── smb_enum.md              # Main notes
├── smb_rid_bruteforce.sh    # RID bruteforce loop
├── tools/
│   ├── enum4linux-ng/       # Git clone of enum4linux-ng
│   └── samrdump.py          # From Impacket
└── references/
    └── sample_outputs.md    # Command outputs for reference
