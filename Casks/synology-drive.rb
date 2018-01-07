cask 'synology-drive' do
  version '1.0.0-10240'
  sha256 'eb70f0ba4b6b4f44e83d75407cb1be49201170fdac0de9ac490de905558c3c37'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Drive'
  homepage 'https://www.synology.com/'

  pkg 'Install Synology Drive.pkg'

  uninstall pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
