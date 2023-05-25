# Check if Git is installed
$gitInstalled = Test-Path (Get-Command git -ErrorAction SilentlyContinue).Source

# Check if Chocolatey is installed
$chocoInstalled = Test-Path (Get-Command choco -ErrorAction SilentlyContinue).Source

# Install Chocolatey if not installed
if (-not $chocoInstalled) {
    Write-Host "Chocolatey is not installed. Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Git if not installed
if (-not $gitInstalled) {
    Write-Host "Git is not installed. Installing Git..."
    choco install git -y
}

# Verify Git installation
$gitInstalled = Test-Path (Get-Command git -ErrorAction SilentlyContinue).Source

if ($gitInstalled) {
    Write-Host "Git is installed."
} else {
    Write-Host "Git installation failed."
}

