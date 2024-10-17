# Set LDAP path and user credentials
$LDAPPath = "LDAP://dc=JKIM,dc=management"
$Username = "test1234"  # Actual Active Directory user account
$Password = "Kjt027578!"  # Actual password

# Create DirectoryEntry object for LDAP authentication
$cred = New-Object System.DirectoryServices.DirectoryEntry($LDAPPath, $Username, $Password)

# Attempt to authenticate
try {
    # Access NativeObject to trigger authentication
    $null = $cred.NativeObject
    Write-Output "LDAP authentication successful"
} catch {
    Write-Output "LDAP authentication failed: $_"
}

pause
