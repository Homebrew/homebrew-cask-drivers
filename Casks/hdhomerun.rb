cask "hdhomerun" do
  version "20221024"
  sha256 "12ab27ec6f6f52cd5f58315fe09611119314d3ab4353ee4fe0a4a857dbe434c9"

  url "https://download.silicondust.com/hdhomerun/hdhomerun_mac_#{version}.dmg"
  name "HDHomeRun"
  desc "Watch, schedule and record terrestrial HDTV"
  homepage "https://www.silicondust.com/support/downloads/"

  livecheck do
    url "https://download.silicondust.com/hdhomerun/hdhomerun_mac.dmg"
    strategy :header_match
  end

  pkg "HDHomeRun Installer.pkg"

  uninstall pkgutil: "com.silicondust.*hdhomerun"

  zap trash: [
    "~/Library/Caches/com.silicondust.hdhomerun",
    "~/Library/Saved Application State/com.silicondust.hdhomerun.savedState",
    "~/Library/WebKit/com.silicondust.hdhomerun",
  ]
end
