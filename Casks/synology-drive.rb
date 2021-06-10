cask "synology-drive" do
  version "3.0.1,12664"
  sha256 "c3df3c20b506e84656ede14a150164fcacd15570fab43c87933223ce1a2ed86e"

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
