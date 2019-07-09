cask 'synology-drive' do
  version '2.0.0-11050'
  sha256 '6b4228ce50b0151bb636653b42f02198ecab471de75defa19925d90abe9063c0'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-client-#{version.sub(%r{.*-}, '')}.dmg"
  appcast 'https://archive.synology.com/download/Tools/SynologyDriveClient/'
  name 'Synology Drive'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Synology Drive Client.pkg'

  uninstall quit:      'io.com.synology.CloudStationUI',
            pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
