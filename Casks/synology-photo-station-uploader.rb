cask "synology-photo-station-uploader" do
  version "1.4.5,093"
  sha256 "16191318254ad221f52fa1c2b6ed1509d9cc22349c3129935f717fca7f0d44f1"

  url "https://global.download.synology.com/download/Tools/PhotoStationUploader/#{version.csv.first}-#{version.csv.second}/Mac/SynologyPhotoStationUploader-#{version.csv.second}-Mac-Installer.dmg"
  appcast "https://www.synology.com/en-us/releaseNote/PhotoStationUploader"
  name "Synology Photo Station Uploader"
  desc "Bulk upload photos and videos to Synology Photo Station"
  homepage "https://www.synology.com/"

  pkg "SynologyPhotoStationUploader-#{version.after_comma}-Mac-Installer.pkg"

  uninstall pkgutil:   "com.synology.photostationuploader.installer",
            quit:      "com.synology.PhotoStationUploader",
            launchctl: [
              "com.synology.PhotoUploaderFinderSync",
              "com.synology.PhotoUploaderShellApp",
              "com.synology.SynoSIMBL_RefreshFinder",
            ]
end
