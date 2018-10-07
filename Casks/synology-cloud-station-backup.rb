cask 'synology-cloud-station-backup' do
  version '4.2.8-4421'
  sha256 '70cbe39729bc841d6e9d8aedd1d90b6c1058630ed53f0d8f272fd6b88f42cc91'

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
