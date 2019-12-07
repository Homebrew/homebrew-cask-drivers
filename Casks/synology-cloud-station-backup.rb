cask 'synology-cloud-station-backup' do
  version '4.3.2-4450'
  sha256 '8adb2a853853d6106784570734c9739d684600890cd6b797d88dc2785e0b8b86'

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version}/Mac/Installer/synology-cloud-station-backup-#{version.sub(%r{.*-}, '')}.dmg"
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
