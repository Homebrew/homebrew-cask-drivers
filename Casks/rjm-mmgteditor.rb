cask "rjm-mmgteditor" do
  version "5.0.1"
  sha256 "f21c3590caa9d804b36c5123a75c8864ba466e8ed7f08971853d40db536ef882"

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
