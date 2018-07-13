cask 'synology-drive' do
  version '1.1.0-10544'
  sha256 'aa1281d9e926d5acb9baba78bda7b6b853ad25ee6c2647fcb5be0eba344d9c5a'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-#{version.sub(%r{.*-}, '')}.dmg"
  appcast 'https://www.synology.com/en-global/releaseNote/SynologyDriveClient'
  name 'Synology Drive'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Synology Drive.pkg'

  uninstall pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
