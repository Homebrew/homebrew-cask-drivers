cask "synology-drive" do
  version "3.0.1,12667"
  sha256 "2fd2ad2d5ee1de87531e016931dae14c14f44febd33992c156f14c0295dd2485"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-drive-client-#{version.after_comma}.dmg"
  name "Synology Drive"
  desc "Sync and backup service to Synology NAS drives"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/SynologyDriveClient"
    strategy :page_match do |page|
      page.scan(/>\s*Version:\s*(\d+(?:\.\d+)*)-(\d+)\s*</i).map do |match|
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
