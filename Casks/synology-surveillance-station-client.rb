cask "synology-surveillance-station-client" do
  version "2.0.1-2304"
  sha256 "6611b1768882a488f4c6af20b13aa71e1fd2f0563373a99d1d5dc92496075575"

  url "https://global.download.synology.com/download/Utility/SurveillanceStationClient/#{version}/Mac/Synology%20Surveillance%20Station%20Client-#{version}.dmg"
  name "Synology Surveillance Station Client"
  desc "Desktop utility to access Surveillance Station on Synology products"
  homepage "https://www.synology.com/surveillance/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/SurveillanceStationClient"
    regex(/>\s*Version:\s*(\d+(?:\.\d+)*-\d+)\s*</i)
  end

  pkg "Install Synology Surveillance Station Client.pkg"

  uninstall launchctl: "com.synology.svsclient-SurveillanceStationClient",
            delete:    "/Applications/Synology Surveillance Station Client.app",
            quit:      "com.synology.svsclient-SurveillanceStationClient",
            pkgutil:   [
              "com.synology.svsclient-Live-View",
              "com.synology.svsclient-Monitor-Center",
              "com.synology.svsclient-Recording",
              "com.synology.svsclient-Timeline",
              "com.synology.svsclient-SurveillanceStationClient",
            ]
end
