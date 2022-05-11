cask "synologyassistant" do
  version "7.0.3,50049"
  sha256 "fd86f91a58a598f69805fe1e4165989930225d9d27e26c061c0f6c1669339a2f"

  url "https://global.download.synology.com/download/Utility/Assistant/#{version.csv.first}-#{version.csv.second}/Mac/synology-assistant-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Synology Assistant"
  desc "Tool to manage Synology NAS's across a LAN"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/Assistant"
    regex(/Version:\s+(\d+(?:\.\d+)+)-(\d+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "SynologyAssistant.app"

  zap trash: "~/Library/Preferences/com.synology.DSAssistant.plist"
end
