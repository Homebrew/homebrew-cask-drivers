cask "synology-drive" do
  version "2.0.2,11078"
  sha256 "196865f411631103958d71e3dc0c640909e53ef5e3cb44013a22d66ae4f1ec85"

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-drive-client-#{version.after_comma}.dmg"
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
