cask 'synology-cloud-station-backup' do
  version '4.3.1-4437'
  sha256 'e1faf8be16ab3e39cf0efe086f5e3b746285b4aec970c1d8c25502cf820ca6ca'

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version}/Mac/Installer/synology-cloud-station-backup-#{version.sub(%r{.*-}, '')}.dmg"
  appcast 'https://archive.synology.com/download/Tools/CloudStationBackup/'
  name 'Synology Cloud Station Backup'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Cloud Station Backup.pkg'

  uninstall quit:      'com.synology.CloudStationBackupUI',
            pkgutil:   [
                         'com.synology.CloudStationBackup',
                         'com.synology.CloudStationBackupUI',
                       ],
            launchctl: 'com.synology.Synology Cloud Station Backup'

  zap trash: '~/Library/Preferences/com.synology.CloudStationBackupUI.plist'
end
