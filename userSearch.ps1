# Setup LDAP domain
$LDAPDomain = "LDAP://dc=JKIM,dc=management"

# DirectorySearcher Object create
$searcher = New-Object DirectoryServices.DirectorySearcher
$searcher.SearchRoot = [ADSI]$LDAPDomain

# Search all user
$searcher.Filter = "(objectClass=user)"
$results = $searcher.FindAll()

# Print
foreach ($result in $results) {
    $user = $result.GetDirectoryEntry()
    Write-Output $user.cn  # Print users
}

pause