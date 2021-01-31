cask "hdhomerun" do
  version "20210103"
  sha256 "c938fad2c9b25f504f34c1885224ee9d13fb85dd5ed23668ee993a743c1df496"

  url "https://download.silicondust.com/hdhomerun/hdhomerun_mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.silicondust.com/hdhomerun/hdhomerun_mac.dmg"
  name "HDHomeRun"
  desc "Watch, schedule and record terrestrial HDTV"
  homepage "https://www.silicondust.com/support/downloads/"

  pkg "HDHomeRun Installer.pkg"

  uninstall pkgutil: "com.silicondust.*hdhomerun"

  zap trash: [
    "~/Library/Caches/com.silicondust.hdhomerun",
    "~/Library/Saved Application State/com.silicondust.hdhomerun.savedState",
    "~/Library/WebKit/com.silicondust.hdhomerun",
  ]
end
