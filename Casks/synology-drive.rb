cask 'synology-drive' do
  version '2.0.0,11044'
  sha256 '39148b4d4d589bd7d92fdf79fd011a85e98c6b4cedcf30c4e1b308d8c4e3287f'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-drive-client-#{version.after_comma}.dmg"
  appcast 'https://archive.synology.com/download/Tools/SynologyDriveClient/'
  name 'Synology Drive'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Synology Drive Client.pkg'

  uninstall quit:      [
                         'io.com.synology.CloudStationUI',
                         'com.synology.CloudStation',
                       ],
            pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
