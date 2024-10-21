# Active Directory-Based User Management and Monitoring System

### Project Overview
This project aims to develop a **user management and monitoring system** that integrates with **Active Directory (AD)**. The system provides IT administrators with tools to monitor user activities, manage access rights, and detect abnormal behaviors within an organization’s network. Currently, the project leverages **PowerShell** for handling Active Directory operations such as user authentication, access rights, and real-time activity logging. Future plans include expanding functionality using **C language** to implement system-level monitoring for more comprehensive tracking and control.

### Key Features
- **User Authentication & Role Management**:  
  Leverages PowerShell to interact with Active Directory, retrieving user roles and managing access permissions automatically.
  
- **Activity Monitoring**:  
  Tracks user login/logout events, file access attempts, and command execution within the system. All logs are stored securely and accessible to administrators for review.
  
- **Abnormal Activity Detection**:  
  Real-time detection of unusual activities, such as unauthorized access to restricted files or abnormal process creation. Notifications are triggered to inform administrators immediately.
  
- **Automated Reports**:  
  Generates detailed weekly and monthly reports summarizing user activities, resource access, and any potential security threats. These reports help maintain a secure IT environment and provide audit-ready data.

### Planned Enhancements (C Language Integration)
In the next phase of development, **C language** will be used to expand monitoring capabilities to the system level. This will include tracking low-level processes such as:
- File system access and modification tracking.
- Process creation and termination monitoring.
- Real-time system call logging for deeper analysis of user behavior.

These enhancements will provide more comprehensive monitoring and control, integrating both Active Directory management and system-level tracking for a complete IT operations management solution.

### Technology Stack
- **PowerShell**: Used for Active Directory integration, including user authentication, access rights management, and activity logging.
- **Active Directory**: Centralized directory service for managing network resources and user accounts.
- **LDAP (Lightweight Directory Access Protocol)**: For querying and interacting with Active Directory to retrieve user and group data.
- **C Language (Planned)**: To be implemented in the next phase for system-level monitoring and process control.

### Practical Applications
This project is designed to solve real-world challenges in IT operations, particularly in enterprise environments where Active Directory is used to manage a large number of users and resources. The ability to monitor user activities and generate automated reports makes this system valuable for:
- **Security monitoring**: Detect and prevent unauthorized access or abnormal system behavior in real-time.
- **IT operations efficiency**: Automate the management of user accounts and permissions, reducing manual effort.
- **Audit and compliance**: Maintain logs and reports for internal audits, regulatory compliance, and post-incident analysis.
