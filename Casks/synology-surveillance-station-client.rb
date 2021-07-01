cask "synology-surveillance-station-client" do
  version "1.2.10-2174"
  sha256 "b396cf0650cfb807560a254da34f33f3b3e4500c4c24c2fa0e4a89d0c5e7e515"

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
              "com.synology.svsclient-Recording",
              "com.synology.svsclient-Timeline",
              "com.synology.svsclient-SurveillanceStationClient",
            ]
end
