cask "hdhomerun" do
  version "20200907"
  sha256 "f234aab75b2581b4244cd320cc9d0435797ee806d5d172a320ed663f99c6074a"

  url "https://download.silicondust.com/hdhomerun/hdhomerun_mac_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.silicondust.com/hdhomerun/hdhomerun_mac.dmg"
  name "HDHomeRun"
  homepage "https://www.silicondust.com/support/downloads/"

  pkg "HDHomeRun Installer.pkg"

  uninstall pkgutil: "com.silicondust.*hdhomerun"

  zap trash: [
    "~/Library/Caches/com.silicondust.hdhomerun",
    "~/Library/Saved Application State/com.silicondust.hdhomerun.savedState",
    "~/Library/WebKit/com.silicondust.hdhomerun",
  ]
end
