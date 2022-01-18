cask "synology-drive" do
  version "3.0.3,12689"
  sha256 "8c5507fb67e20395c1a70c6f0cb78f4eb82a4ca733a8c0926cd9f6bd4d0fc86f"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.csv.first}-#{version.csv.second}/Mac/Installer/synology-drive-client-#{version.csv.second}.dmg"
  name "Synology Drive"
  desc "Sync and backup service to Synology NAS drives"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/SynologyDriveClient"
    strategy :page_match do |page|
      page.scan(/>\s*Version:\s*(\d+(?:\.\d+)+)-(\d+)\s*</i).map do |match|
        "#{match[0]},#{match[1]}"
      end
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
            launchctl: "com.synology.Synology Cloud Station",
            delete:    "/Applications/Synology Drive Client.app"
end
