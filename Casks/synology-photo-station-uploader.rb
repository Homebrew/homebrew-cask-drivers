cask 'synology-photo-station-uploader' do
  version '1.4.1-083'
  sha256 '89394fa8d268c74aba56ebf1fbd293c95f340b9750d16cbe14c6e675dd74726b'

  url "https://global.download.synology.com/download/Tools/PhotoStationUploader/#{version}/Mac/PhotoStationUploader-#{version.sub(%r{.*-}, '')}-Mac-Installer.dmg"
  name 'Synology Photo Station Uploader'
  homepage 'https://www.synology.com/'

  pkg "PhotoStationUploader-#{version.sub(%r{.*-}, '')}-Mac-Installer.pkg"

  uninstall pkgutil: 'com.synology.photostationuploader.installer'
end
