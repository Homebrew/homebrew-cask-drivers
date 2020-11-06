cask "elgato-control-center" do
  version "1.1.3,10337"
  sha256 "cb8978a4951ab137eb7a7e7e055700c343379b4efa8d0ae3fc714fe6fc8303cb"

  url "https://edge.elgato.com/egc/macos/eccm/#{version.before_comma}/Control_Center_#{version.before_comma}.#{version.after_comma}.zip"
  appcast "https://gc-updates.elgato.com/mac/control-center-update/feed.xml"
  name "Elgato Control Center"
  homepage "https://www.elgato.com/en/gaming/key-light"

  depends_on macos: ">= :mojave"

  app "Elgato Control Center.app"

  uninstall quit: "com.corsair.ControlCenter"

  zap trash: [
    "~/Library/Application Scripts/com.corsair.ControlCenterLauncher",
    "~/Library/Application Support/com.corsair.ControlCenter",
    "~/Library/Caches/com.corsair.ControlCenter",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.corsair.ControlCenter",
    "~/Library/Containers/com.corsair.ControlCenterLauncher",
    "~/Library/Preferences/com.corsair.ControlCenter.plist",
  ]
end
