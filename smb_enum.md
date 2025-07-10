#Smb smb (Server message BLock) sign in procedure
Known Port 137, 138, 139(smb) and 445 (samba)
smbclient -N -L //<target>

# Dangerous Settings:
1. browseable = yes | Allow listing in the server
2. read only = no | Forbid the creation and modification of the files
3. writable = yes | allow user to modify the files
4. guest ok = yes | allow connecting to the server without password
5. enable privileges = yes | Can be escalated to higher privilege using SID
6. create mask = 0777 | wht permission assigned to the newly crearted files
7. directory mask = 0777 | wht permission assigned to the newly created directories
8. logon script = script.sh | wht script should be executed on the user's login 
9. magic script = script.sh | which script should be executed when the scripts get closed.
10. magic output = script.out | where the output of the magic.sh needs to be stored.

## Shares are referred to files that are present in the smb server use help command to list the all available task in the smb server.

a. get command is use to download a share from smb serve to our local machine
b. put is use to upload a share from local machine to the sever.

A. smbstatus: To check the connection of the server.

```shell-session
root@samba:~# smbstatus

Samba version 4.11.6-Ubuntu
PID     Username     Group        Machine                                   Protocol Version  Encryption           Signing              
----------------------------------------------------------------------------------------------------------------------------------------
75691   sambauser    samba        10.10.14.4 (ipv4:10.10.14.4:45564)      SMB3_11           -                    -                    
```

# Footpriting of SMB server:



1. RPC(remote procedure call)- rpcclient -U " " <target>

	**rpcclient** offers different requests with which we can execute function on the server to get information.
	
	**Queries**
	
	
	1. srvinfo  | server information 
	2. enumdomains | enumerate all domains that are deployed in the network
	3. querydominfo | provides all the information of the deployed domains 
	4. netshareenumall |  enumerate all available shares 
	5. netsharegetinfo <share> | provide information about specific share 
	6. enumdomusers | enumerate all domain users 
	7. quesryusers <RID> |  provide information about a specific user
	
	##rpcbruteforce RIDs to get the information:
	
	`for i in $(seq 500 1100); do rpcclient -N -U "" <target> -c  "queryuser 0x$(printf '%x\n' $i)" 2>/dev/null  | grep -E "User Name\|user_rid\|group_rid" && echo ""; done` 
	
		1. Alternative tool is **smardump.py** 
			

2. SMBmap | almost same as rpcclient | smbmap -H <target>
3. CrackMapexec | " | crackmappexec smb <target> --shares -u '' -p ''





	
	


[[Nmap Basics]]
[[Footprinting important commands]]
