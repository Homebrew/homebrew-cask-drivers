cask 'synology-cloud-station-backup' do
  version '4.3.3,4468'
  sha256 '534f66cfa3bba5b66841e5eeb452412c51f66b14e68d3877e63a18c6c351ede4'

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-cloud-station-backup-#{version.after_comma}.dmg"
  appcast 'https://archive.synology.com/download/Tools/CloudStationBackup/'
  name 'Synology Cloud Station Backup'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Cloud Station Backup.pkg'

  uninstall quit:      [
                         'com.synology.CloudStationBackup',
                         'com.synology.CloudStationBackupUI',
                       ],
            pkgutil:   [
                         'com.synology.CloudStationBackup',
                         'com.synology.CloudStationBackupUI',
                       ],
            launchctl: 'com.synology.Synology Cloud Station Backup'

  zap trash: '~/Library/Preferences/com.synology.CloudStationBackupUI.plist'
end
