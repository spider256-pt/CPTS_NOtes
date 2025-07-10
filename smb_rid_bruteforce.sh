#!/bin/bash
# 🔐 RID Enumeration Script using rpcclient (Anonymous SMB Enumeration)
# 📌 Loops through RIDs (500–1100), converts them to hex, and queries each user via RPC.

# Set your target IP or hostname here
TARGET="192.168.94.140"

# Start a loop from RID 500 to 1100 (common user RID range)
for i in $(seq 500 1100); do

  # Convert decimal RID to hexadecimal (required format for rpcclient)
  HEX=$(printf '%x' $i)

  # Query the target's RPC service for user information tied to this RID
  # -N : No password prompt (anonymous login)
  # -U "" : Empty username (anonymous login)
  # -c : Command to run inside rpcclient ("queryuser 0xRID")
  # 2>/dev/null : Suppress error messages (e.g., invalid RIDs)
  rpcclient -N -U "" $TARGET -c "queryuser 0x$HEX" 2>/dev/null |

  # Filter and display only important lines: username and RIDs
  grep -E "User Name|user_rid|group_rid" &&

  # Print a blank line for readability between entries
  echo ""

done
