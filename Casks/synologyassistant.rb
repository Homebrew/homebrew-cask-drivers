cask "synologyassistant" do
  version "7.0.1,50044"
  sha256 "4a0ccc688e90f48668985a36a2bfbccc56e4f5b064dfa003009e75626cf68433"

  url "https://global.download.synology.com/download/Utility/Assistant/#{version.before_comma}-#{version.after_comma}/Mac/synology-assistant-#{version.before_comma}-#{version.after_comma}.dmg"
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
