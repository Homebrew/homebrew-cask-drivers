cask 'synology-photo-station-uploader' do
  version '1.4.3-087'
  sha256 'dcc1b8d3e145d85df955914b842c624d759089b5d1023fb264fdedf39b448e6e'

  url "https://global.download.synology.com/download/Tools/PhotoStationUploader/#{version}/Mac/PhotoStationUploader-#{version.sub(%r{.*-}, '')}-Mac-Installer.dmg"
  name 'Synology Photo Station Uploader'
  homepage 'https://www.synology.com/'

  pkg "PhotoStationUploader-#{version.sub(%r{.*-}, '')}-Mac-Installer.pkg"

  uninstall pkgutil: 'com.synology.photostationuploader.installer'
end
