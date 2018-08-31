cask 'synology-drive' do
  version '1.1.2-10562'
  sha256 '335a5a379f25c9e23b6988b8eea4e9dbd538d3f325f90bc3c219a1dbfb1a4f3d'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-#{version.sub(%r{.*-}, '')}.dmg"
  appcast 'https://www.synology.com/en-global/releaseNote/SynologyDriveClient'
  name 'Synology Drive'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Synology Drive.pkg'

  uninstall quit: 'io.com.synology.CloudStationUI',
            pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
