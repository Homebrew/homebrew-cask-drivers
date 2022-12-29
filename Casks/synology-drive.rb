cask "synology-drive" do
  version "3.2.1,13271"
  sha256 "6db43fd276471a0dd9d7d8d60c719837d5ef9390210ff6147ec40ccaa9bca8aa"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.csv.first}-#{version.csv.second}/Mac/Installer/synology-drive-client-#{version.csv.second}.dmg"
  name "Synology Drive"
  desc "Sync and backup service to Synology NAS drives"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/SynologyDriveClient"
    regex(/>\s*Version:\s*(\d+(?:\.\d+)+)-(\d+)\s*</i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
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
