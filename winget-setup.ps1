$DevPackages = @(
    'JetBrains.WebStorm',
    'OpenJS.NodeJS',
    'Docker.DockerDesktop',
    'Git.Git',
    'Microsoft.VisualStudioCode',
    'dbeaver.dbeaver',
    'JetBrains.Toolbox',
    'Postman.Postman',
    'SlackTechnologies.Slack',
    'CoreyButler.NVMforWindows'
)

$EssentialsPackages = @(
    'WhatsApp.WhatsApp',
    'Microsoft.PowerToys'
)

$GeneralPackages = @(
    'qBittorrent.qBittorrent',
    'Logitech.GHUB',
    'Logitech.Options',
    'Valve.Steam',
    'Discord.Discord',
    'VideoLAN.VLC'
)

# Prompt user for selection
Write-Host "`nSelect install type:`n"
Write-Host "1. Dev packages only"
Write-Host "2. All packages (Dev + General)"

$selection = Read-Host "`nEnter your choice (1 or 2)"

switch ($selection) {
    '1' {
        $PackagesToInstall = $DevPackages + $EssentialsPackages
    }
    '2' {
        $PackagesToInstall = $DevPackages + $EssentialsPackages + $GeneralPackages
    }
    default {
        Write-Host "Invalid selection. Please run the script again and enter 1 or 2."
        exit
    }
}

ForEach ($PackageName in $PackagesToInstall) {
    winget install -e --no-upgrade --accept-source-agreements --accept-package-agreements --id $PackageName
}