cask "synology-surveillance-station-client" do
  version "1.2.9-1082"
  sha256 "cda1fb645c34d84b56c821caa70c69de159218a9c3bd12c60934cf8adbf976f1"

  url "https://global.download.synology.com/download/Tools/SurveillanceStationClient/#{version}/Mac/Synology%20Surveillance%20Station%20Client-#{version}.dmg"
  appcast "https://www.synology.com/en-us/releaseNote/SurveillanceStationClient"
  name "Synology Surveillance Station Client"
  homepage "https://www.synology.com/surveillance/"

  pkg "Install Synology Surveillance Station Client.pkg"

  uninstall launchctl: "com.synology.svsclient-SurveillanceStationClient",
            delete:    "/Applications/Synology Surveillance Station Client.app",
            quit:      "com.synology.svsclient-SurveillanceStationClient",
            pkgutil:   [
              "com.synology.svsclient-Live-View",
              "com.synology.svsclient-Recording",
              "com.synology.svsclient-Timeline",
              "com.synology.svsclient-SurveillanceStationClient",
            ]
end
