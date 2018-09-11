cask 'synology-drive' do
  version '1.1.2-10562'
  sha256 '65c5725febae0b8200c53e8bc43bce165012b81d851ddd59352e26c8f092d9de'

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
