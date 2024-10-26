$filePath = "$PSScriptRoot\myData.txt"
$contents = Get-Content $filePath

$idLine = $contents | Where-Object { $_ -like "ID=*" }
$id = $idLine -replace "ID=", ""
Write-Host "ID: $id"

$pw = Read-Host "Enter the Password: " -AsSecureString

$LDAPPath = "LDAP://52.73.47.46:389/dc=JKIM,dc=management"
$cred = New-Object System.DirectoryServices.DirectoryEntry($LDAPPath, $id, $pw)

# Attempt to authenticate
try {
    # Perform an LDAP search to ensure authentication occurs
    $searcher = New-Object System.DirectoryServices.DirectorySearcher($cred)
    $searcher.Filter = "(objectClass=user)"
    $result = $searcher.FindOne()

    if ($result -ne $null) {
        Write-Output "LDAP authentication successful"
    } else {
        Write-Output "LDAP authentication failed"
    }
} catch {
    Write-Output "LDAP authentication failed: $_"
}


$number = Read-Host "Enter a number"

switch ($number) {
	1 {
		Write-Host "Running script1.ps1 in the user_manager folder"
		& "$PSScriptRoot\user_manager\script1.ps1"
	}
	2 {
		Write-Host "This is number 2"
	}
	3 {
		Write-Host "This is number 3"
	}
	default{
		Write-Host "You entered Wrong Number!"
	}

}

pause