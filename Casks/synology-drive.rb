cask 'synology-drive' do
  version '1.1.1-10551'
  sha256 '5cd4d88bc40853a24901ef82e85257de98f5240f5244e9d2760210bd8e95f8f8'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-#{version.sub(%r{.*-}, '')}.dmg"
  appcast 'https://www.synology.com/en-global/releaseNote/SynologyDriveClient'
  name 'Synology Drive'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Synology Drive.pkg'

  uninstall pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
