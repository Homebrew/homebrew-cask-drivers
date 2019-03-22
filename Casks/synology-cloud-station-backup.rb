cask 'synology-cloud-station-backup' do
  version '4.3.0-4435'
  sha256 'f0c83e70578fd209ad46aef2c14767b78b14fb0d62c23daf5f655802fa9c578a'

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version}/Mac/Installer/synology-cloud-station-backup-#{version.sub(%r{.*-}, '')}.dmg"
  appcast 'https://archive.synology.com/download/Tools/CloudStationBackup/'
  name 'Synology Cloud Station Backup'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Cloud Station Backup.pkg'

  uninstall pkgutil:   'com.synology.CloudStationBackup',
            launchctl: 'com.synology.Synology Cloud Station Backup'

  zap trash: '~/Library/Preferences/com.synology.CloudStationBackupUI.plist'
end
