$Packages = 'webstorm', 
            'nodejs',
            'docker-desktop',
            'git',
            'vscode',
            'qbittorrent',
            'logitechgaming',
            'logitech-options',
            'whatsapp',
            'signal',
            'slack',
            'steam-client',
            'origin',
            'winrar',
            'vlc',
            'zoom',
            'battle.net',
            'dbeaver',
            'discord'

 
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
