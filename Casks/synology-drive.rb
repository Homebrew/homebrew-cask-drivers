cask 'synology-drive' do
  version '1.1.3-10570'
  sha256 '6e1d6d16954e0f5207a6a3e71c3e55a7a4ce3d588401fc0ed62712408edb9c71'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-#{version.sub(%r{.*-}, '')}.dmg"
  appcast 'https://www.synology.com/en-global/releaseNote/SynologyDriveClient'
  name 'Synology Drive'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Synology Drive.pkg'

  uninstall quit:      'io.com.synology.CloudStationUI',
            pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
