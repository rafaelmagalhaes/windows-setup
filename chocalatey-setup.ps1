$DevPackages = 'webstorm',
               'nodejs',
               'docker-desktop',
               'git',
               'vscode',
               'dbeaver',
               'postman',
               'jetbrainstoolbox',
               'slack',
               'nvm'

$AllPackages = 'qbittorrent',
               'logitechgaming',
               'logitech-options',
               'steam-client', 
               'discord',
               'vlc'

$EssentialsPackages = 'whatsapp',
                      'powertoys'#

# Ask the user what they want to install
$choice = Read-Host "Install type? (dev/all)"

# Combine package list based on user input
If ($choice -eq 'dev') {
    $PackagesToInstall = $DevPackages + $EssentialsPackages
}
ElseIf ($choice -eq 'all') {
    $PackagesToInstall = $DevPackages + $AllPackages + EssentialsPackages
}
Else {
    Write-Host "Invalid choice. Please run the script again and enter 'dev' or 'all'."
    exit
}

If (Test-Path -Path "$env:ProgramData\Chocolatey") {
    ForEach ($PackageName in $PackagesToInstall) {
        choco install $PackageName -y
    }
}
Else {
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    ForEach ($PackageName in $PackagesToInstall) {
        choco install $PackageName -y
    }
}