#!/usr/bin/env pwsh

# Usage: ./rename-project.ps1 -OldName "old_name" -NewName "MyNewProject"

param(
    [string]$OldName = "__GODOT_TEMPLATE__",
    [string]$NewName = "",
    [switch]$Help
)

function Show-Help {
    Write-Host @"
Description: Helper script for renaming godot project
Usage:
    $($MyInvocation.MyCommand.Name) [options]

Options:
    -Help          Displays this dialog
    -OldName       The old project name to replace (default: __GODOT_TEMPLATE__)
    -NewName       The new project name to use (required)

Examples:
    $($MyInvocation.MyCommand.Name) -OldName "__GODOT_TEMPLATE__" -NewName "MyNewProject"
    $($MyInvocation.MyCommand.Name) -NewName "MyNewProject"
    $($MyInvocation.MyCommand.Name) -Help
"@
}

# Show help if requested
if ($Help) {
    Show-Help
    exit 0
}

# Check if NewName is provided
if ([string]::IsNullOrWhiteSpace($NewName)) {
    Write-Host "Error: NewName parameter is required" -ForegroundColor Red
    Show-Help
    exit 1
}

# Check if project.godot exists
if (-not (Test-Path "project.godot")) {
    Write-Host "Error: project.godot not found in current directory" -ForegroundColor Red
    exit 1
}

Write-Host "Replacing '$OldName' with '$NewName'" -ForegroundColor Green

try {
    # Read the content of project.godot
    $content = Get-Content "project.godot" -Raw
    
    # Replace all instances of OLD_NAME with NEW_NAME
    $newContent = $content -replace [regex]::Escape($OldName), $NewName
    
    # Write the updated content back to the file
    Set-Content "project.godot" -Value $newContent -NoNewline
    
    Write-Host "Successfully renamed project from '$OldName' to '$NewName'" -ForegroundColor Green
}
catch {
    Write-Host "Error occurred while updating project.godot: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}
