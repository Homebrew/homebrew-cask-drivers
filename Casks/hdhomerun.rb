cask "hdhomerun" do
  version "20210301"
  sha256 "377b478ed89065f56e85d0267138e9b22ceb4ece8fba8531c4701fc43efff1d8"

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
