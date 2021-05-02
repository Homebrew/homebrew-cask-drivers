cask "synologyassistant" do
  version "7.0-50029"
  sha256 "1c7c913b056b855ed07bce5e6dafc23b1ea154b1a7fc06ec800affc1cc235ff5"

  url "https://global.download.synology.com/download/Utility/Assistant/#{version}/Mac/synology-assistant-#{version}.dmg"
  name "Synology Assistant"
  desc "Tool to manage Synology NAS's across a LAN"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/Assistant"
    regex(/Version: (\d+.\d+-\d+)/i)
  end

  app "SynologyAssistant.app"

  zap trash: "~/Library/Preferences/com.synology.DSAssistant.plist"
end
