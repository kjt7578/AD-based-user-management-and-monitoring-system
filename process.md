## Day 2
### Summarize
User List and LDAP connect
Activity tracking (User log history, process watch, file watch) 

### Scripts Overview
- **userSearch.ps1**
- **LDAPConnect.ps1**
- **fileWatcher.ps1**
- **processWatcher.ps1**
- **logHistory.ps1**

### Problem & Solution
- **Issue**: The `fileWatcher.ps1` script was not printing logs to the console.
- **Solution**: 
  - I modified the script to write logs into a text file.
  - Detected that the file monitoring functionality was working, indicating the issue was likely related to console output.
  - Changed `Write-Output` to `Write-Host`, which resolved the issue, and the logs are now correctly displayed in the console.

### Why LDAP Authentication?
- **Purpose of LDAP**: LDAP (Lightweight Directory Access Protocol) is the standard protocol for accessing and managing directory services such as Active Directory (AD).
- **Authentication Importance**: 
  - Active Directory is designed to ensure that only authenticated users have access to the system.
  - Successful LDAP authentication allows users to view or modify information based on their assigned permissions, enhancing security and access control.

---

## Day 1
### Setup and Configuration
1. **Created AWS Instance**
   - **Remote Connection IP**: `52.73.47.46`

2. **Server Manager Configuration**
   - Set up Active Directory on the AWS instance.

3. **User Addition**
   - Added user: `kjt7578@JKIM.management`

4. **Shared Folder Creation**
   - **Memory from Internship**:
     - **I Drive**: Accessible to everyone. Contains basic information needed for the ERP system.
     - **O Drive**: Restricted access to specific departments (e.g., AR, Accounting, Legal, ECOM, IT) due to sensitive data, such as:
       - Manufacturing costs of products
       - Total company sales

5. **Testing Connection**
   - Executed command: `Test-Connection -ComputerName "JKIM.management"`

### Reference
https://www.youtube.com/watch?v=hZHKBbrCA54
