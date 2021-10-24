cask "synologyassistant" do
  version "7.0.1-50044"
  sha256 "4a0ccc688e90f48668985a36a2bfbccc56e4f5b064dfa003009e75626cf68433"

  url "https://global.download.synology.com/download/Utility/Assistant/#{version}/Mac/synology-assistant-#{version}.dmg"
  name "Synology Assistant"
  desc "Tool to manage Synology NAS's across a LAN"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/Assistant"
    regex(/Version: (\d+\.\d+(\.\d+)?-\d+)/i)
  end

  app "SynologyAssistant.app"

  zap trash: "~/Library/Preferences/com.synology.DSAssistant.plist"
end
