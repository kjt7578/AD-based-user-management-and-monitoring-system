Day2
----
userSearch.ps1
LADP connect.ps1
fileWatcher.ps1
processWatcher.ps1
logHistory.ps1

Problem & solved
-----------------
fileWatcher.ps1 didn't print the log to the console. So I modified into writing logs into txt file. I figured out detecting was wroking and there might be a problem with printing. So I changed Write-Output into Write-Host, and I is working.


Why LDAP authentication?
----------------------------
LDAP is the standard protocol for accessing AD.
Active Directory is designed to ensure that only authenticated users have access to the system. If LDAP authentication is successful, the user can view or change information according to their permissions.

Day1
----
1) Created AWS instance
Remote connection ip: 52.73.47.46

2) Server Manager
Active Directory setup

3) User added
kjt7578@JKIM.management

4) Shared folder created
Memory from Internship: There was I drive and O drive
Everyone can acees to I drive. There is basic information to use ERP system.
O drive has limited access only to AR, Acounting, Legal, ECOM, IT etc.. Because O drive had sensitive data such as the Manufacturing cost of the product and total company sales.

5) Test-Connection -ComputerName "JKIM.management"

reference link
https://www.youtube.com/watch?v=hZHKBbrCA54
