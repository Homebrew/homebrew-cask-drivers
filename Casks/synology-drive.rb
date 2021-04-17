cask "synology-drive" do
  version "2.0.4,11112"
  sha256 "19b8f03ece1dc8443da1e6df469d2ddf8916c4d2d15d7c9a04c0e84deb93c33b"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-drive-client-#{version.after_comma}.dmg"
  name "Synology Drive"
  desc "Sync and backup service to Synology NAS drives"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/SynologyDriveClient"
    strategy :page_match do |page|
      match = page.match(/Version:\s*(\d+(?:\.\d+)*)-(\d+)/i)
      "#{match[1]},#{match[2]}"
    end
  end

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
