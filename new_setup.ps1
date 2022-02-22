$Packages = 'pycharm', 
            'nodejs --version=14.17.5',
            'docker-desktop',
            'git',
            'vscode',
            'utorrent',
            'logitechgaming',
            'logitech-options',
            'whatsapp',
            'signal',
            'slack',
            'steam-client',
            'origin',
            'winrar'

 
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
