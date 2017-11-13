cask 'synology-cloud-station-backup' do
  version '4.2.5-4396'
  sha256 '420784b2defc921f4072f4f2577b413a4e6462cac74a4cc298e5109b0ccf5a57'

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version}/Mac/Installer/synology-cloud-station-backup-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Cloud Station Backup'
  homepage 'https://www.synology.com/'

  pkg 'Install Cloud Station Backup.pkg'

  uninstall pkgutil:   'com.synology.CloudStationBackup',
            launchctl: 'com.synology.Synology Cloud Station Backup'

  zap trash: '~/Library/Preferences/com.synology.CloudStationBackupUI.plist'
end
