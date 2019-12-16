Write-Host "Installing IIS";
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45 -All;
Add-WindowsFeature -Name NET-WCF-HTTP-Activation45;
Add-WindowsFeature -Name NET-Framework-Core;

Write-Host "Free Port 80";
Set-WebBinding -Name "Default Web Site" -PropertyName Port -Value 8080;