cask "hdhomerun" do
  version "20201023"
  sha256 "8841c347b5ad3d7d9a80bcf32bcc058559094a6e5ad0e4b5983ae56d08753c81"

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
