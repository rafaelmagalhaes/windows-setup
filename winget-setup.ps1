$Packages = 'JetBrains.WebStorm',
            'OpenJS.NodeJS',
            'Docker.DockerDesktop',
            'Git.Git',
            'Microsoft.VisualStudioCode',
            'qBittorrent.qBittorrent',
            'Logitech.GHUB',
            'Logitech.Options',
            'WhatsApp.WhatsApp',
            'SlackTechnologies.Slack',
            'Valve.Steam',
            'VideoLAN.VLC',
            'dbeaver.dbeaver',
            'Discord.Discord',
            'Microsoft.PowerToys',
            'JetBrains.Toolbox',
            'Postman.Postman'


ForEach ($PackageName in $Packages) {
    winget install -e --no-upgrade --accept-source-agreements --accept-package-agreements --id $PackageName
}
