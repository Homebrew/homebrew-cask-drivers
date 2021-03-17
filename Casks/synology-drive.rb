cask "synology-drive" do
  version "2.0.4,11112"
  sha256 "19b8f03ece1dc8443da1e6df469d2ddf8916c4d2d15d7c9a04c0e84deb93c33b"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-drive-client-#{version.after_comma}.dmg"
  appcast "https://www.synology.com/en-us/releaseNote/SynologyDriveClient"
  name "Synology Drive"
  desc "Sync and backup service to Synology NAS drives"
  homepage "https://www.synology.com/"

  auto_updates true

  pkg "Install Synology Drive Client.pkg"

  uninstall quit:      [
    "io.com.synology.CloudStationUI",
    "com.synology.CloudStation",
    "com.synology.CloudStationUI",
  ],
            pkgutil:   "com.synology.CloudStation",
            launchctl: "com.synology.Synology Cloud Station"
end
