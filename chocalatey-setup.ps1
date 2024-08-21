$Packages = 'webstorm', 
            'nodejs',
            'docker-desktop',
            'git',
            'vscode',
            'qbittorrent',
            'logitechgaming',
            'logitech-options',
            'whatsapp',
            'slack',
            'steam-client',
            'vlc',
            'dbeaver',
            'discord',
            'powertoys',
            'jetbrainstoolbox',
            'postman'

 
If(Test-Path -Path "$env:ProgramData\Chocolatey") {
  # DoYourPackageInstallStuff
  ForEach ($PackageName in $Packages)
    {
        choco install $PackageName -y
    }
}
Else {
  # InstallChoco
  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
  # DoYourPackageInstallStuff
  ForEach ($PackageName in $Packages)
    {
        choco install $PackageName -y
    }
}
