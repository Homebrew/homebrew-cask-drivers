cask "synology-photo-station-uploader" do
  version "1.4.6,098"
  sha256 "6969aa9d75e8b8a57e64db6ff81e9fc8826c5a08432ccea7713b589cad9f7895"

  url "https://global.download.synology.com/download/Utility/PhotoStationUploader/#{version.csv.first}-#{version.csv.second}/Mac/SynologyPhotoStationUploader-#{version.csv.second}-Mac-Installer.dmg"
  appcast "https://www.synology.com/en-us/releaseNote/PhotoStationUploader"
  name "Synology Photo Station Uploader"
  desc "Bulk upload photos and videos to Synology Photo Station"
  homepage "https://www.synology.com/"

  pkg "SynologyPhotoStationUploader-#{version.after_comma}-Mac-Installer.pkg"

  uninstall pkgutil:   [
              "com.synology.photostationuploader.installer",
              "inc.synology.photostationuploader",
            ],
            quit:      "com.synology.PhotoStationUploader",
            launchctl: [
              "com.synology.PhotoUploaderFinderSync",
              "com.synology.PhotoUploaderShellApp",
              "com.synology.PhotoUploaderUninstaller",
              "com.synology.SynoSIMBL_RefreshFinder",
            ]
end
