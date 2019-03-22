cask 'synology-drive' do
  version '1.1.4-10580'
  sha256 '6be8292b697f2fa7eaa3b3aab09cbb66ee7f73ca18b99cd20865bc32834b09af'

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
