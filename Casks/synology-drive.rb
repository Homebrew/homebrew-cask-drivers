cask 'synology-drive' do
  version '2.0.2,11076'
  sha256 '946e712f410b66333b62d6feef0f52991f69fe000ec12be967651b3adcf3ef4c'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-drive-client-#{version.after_comma}.dmg"
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
