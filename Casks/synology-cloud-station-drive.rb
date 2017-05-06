cask 'synology-cloud-station-drive' do
  version '4.2.3-4385'
  sha256 '0bf76452615a1bef2e8c3efdc9fe58b552842793c742b2e21f94ed89220a0c03'

  url "https://global.download.synology.com/download/Tools/CloudStationDrive/#{version}/Mac/Installer/synology-cloud-station-drive-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Cloud Station Drive'
  homepage 'https://www.synology.com/'

  pkg 'Install Cloud Station Drive.pkg'

  uninstall pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
