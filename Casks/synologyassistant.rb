cask "synologyassistant" do
  version "7.0.2,50046"
  sha256 "415fd08346efb0619d9f1eaad0ca124f74ce4898374fcf50d16e63e924e6ca0f"

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
