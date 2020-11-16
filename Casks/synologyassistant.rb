cask "synologyassistant" do
  version "6.2-24922"
  sha256 "b586a41cf390586bdc29ab4d6ee7abbca2e435c74426b194997f35553f1ef7ae"

  url "https://global.download.synology.com/download/Tools/Assistant/#{version}/Mac/synology-assistant-#{version}.dmg"
  appcast "https://www.synology.com/en-us/releaseNote/Assistant"
  name "Synology Assistant"
  homepage "https://www.synology.com/"

  app "SynologyAssistant.app"

  zap trash: "~/Library/Preferences/com.synology.DSAssistant.plist"
end
