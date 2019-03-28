cask 'synology-photo-station-uploader' do
  version '1.4.4-091'
  sha256 'f25e009170387720291570d3acfef048d9ee05477c5a0b207df965ddf924d4cb'

  url "https://global.download.synology.com/download/Tools/PhotoStationUploader/#{version}/Mac/PhotoStationUploader-#{version.sub(%r{.*-}, '')}-Mac-Installer.dmg"
  appcast 'https://archive.synology.com/download/Tools/PhotoStationUploader/'
  name 'Synology Photo Station Uploader'
  homepage 'https://www.synology.com/'

  pkg "PhotoStationUploader-#{version.sub(%r{.*-}, '')}-Mac-Installer.pkg"

  uninstall pkgutil:   'com.synology.photostationuploader.installer',
            quit:      'com.synology.PhotoStationUploader',
            launchctl: [
                         'com.synology.PhotoUploaderFinderSync',
                         'com.synology.PhotoUploaderShellApp',
                         'com.synology.SynoSIMBL_RefreshFinder',
                       ]
end
