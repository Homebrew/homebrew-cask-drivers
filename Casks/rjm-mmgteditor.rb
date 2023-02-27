cask "rjm-mmgteditor" do
  version "5.0.0"
  sha256 "c55b8141e66294dd15a220adb1b72078ff989d49f057bcbd61194ccef7490278"

  url "https://www.rjmmusic.com/downloads/MMGT/MMGTEditor-#{version}.dmg"
  name "RJM Music Mastermind GT Editor"
  desc "Editor software to configure RJM Mastermind GT midi pedalboard"
  homepage "https://www.rjmmusic.com/"

  livecheck do
    url "https://www.rjmmusic.com/wp-json/wp/v2/pages/6614"
    regex(/href=.*?MMGTEditor[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "MMGTEditor.app"

  zap trash: [
    "~/Library/Preferences/com.rjmmusic.MMGTEditor.plist",
    "~/Library/Preferences/com.RJMMusicTechnology.MMGTEditor.plist",
    "~/Library/Saved Application State/com.RJMMusicTechnology.MMGTEditor.savedState",
  ]
end
