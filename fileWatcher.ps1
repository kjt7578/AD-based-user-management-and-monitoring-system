# Set path to monitor
$pathToMonitor = "C:\Manager\FileServer"

# Create a new file system watcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $pathToMonitor
$watcher.Filter = "*.*"  # Monitor all file types
$watcher.IncludeSubdirectories = $true
$watcher.NotifyFilter = [IO.NotifyFilters]'FileName, LastWrite, DirectoryName'
$watcher.EnableRaisingEvents = $true

# Define event handler to log to file and console
$logFile = "C:\Manager\FileLog\FileServerLog.txt"

$onCreate = Register-ObjectEvent $watcher "Created" -Action {
    Add-Content -Path $logFile -Value "File created: $($EventArgs.FullPath) at $(Get-Date)"
    Write-Host "File created: $($EventArgs.FullPath) at $(Get-Date)"  # Output to console
}

$onChange = Register-ObjectEvent $watcher "Changed" -Action {
    Add-Content -Path $logFile -Value "File changed: $($EventArgs.FullPath) at $(Get-Date)"
    Write-Host "File changed: $($EventArgs.FullPath) at $(Get-Date)"  # Output to console
}

$onDelete = Register-ObjectEvent $watcher "Deleted" -Action {
    Add-Content -Path $logFile -Value "File deleted: $($EventArgs.FullPath) at $(Get-Date)"
    Write-Host "File deleted: $($EventArgs.FullPath) at $(Get-Date)"  # Output to console
}

# Keep the watcher running
while ($true) {
    Start-Sleep 1
}
