# Download .NET Framework 4.8 Installer
$url = "https://download.visualstudio.microsoft.com/download/pr/2d6bb6b2-226a-4baa-bdec-798822606ff1/8494001c276a4b96804cde7829c04d7f/ndp48-x86-x64-allos-enu.exe"
$output = "$env:TEMP\ndp48-x86-x64-allos-enu.exe"
Invoke-WebRequest -Uri $url -OutFile $output

# Install .NET Framework 4.8 (Silent install)
Start-Process -FilePath $output -ArgumentList "/q /norestart" -Wait

# Reboot the system
Restart-Computer -Force
