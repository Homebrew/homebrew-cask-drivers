cask "hdhomerun" do
  version "20211212"
  sha256 "9a86962ff9de7e6f0b3af4f1978e04c29e4c0dd26df4134fae98e80053eb89a0"

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
