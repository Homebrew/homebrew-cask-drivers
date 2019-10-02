cask 'synology-drive' do
  version '2.0.1-11061'
  sha256 '99d1dd5d6fd36c18e75fce0b038d3d2c3c5ad2132f95ca835450d052ab841634'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-client-#{version.sub(%r{.*-}, '')}.dmg"
  appcast 'https://archive.synology.com/download/Tools/SynologyDriveClient/'
  name 'Synology Drive'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Synology Drive Client.pkg'

  uninstall quit:      [
                         'io.com.synology.CloudStationUI',
                         'com.synology.CloudStationUI',
                       ],

            pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
