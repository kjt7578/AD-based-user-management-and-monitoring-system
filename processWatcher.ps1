# Monitor process creation
Register-WmiEvent -Query "SELECT * FROM __InstanceCreationEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_Process'" -Action {
    Write-Host "Process created: $($EventArgs.NewEvent.TargetInstance.Name)"
}

# Monitor process termination
Register-WmiEvent -Query "SELECT * FROM __InstanceDeletionEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_Process'" -Action {
    Write-Host "Process terminated: $($EventArgs.NewEvent.TargetInstance.Name)"
}

Write-Host "Monitoring processes Press Ctrl+C to stop."

# Keep the watcher running
while ($true) {
    
    Start-Sleep 1
}
