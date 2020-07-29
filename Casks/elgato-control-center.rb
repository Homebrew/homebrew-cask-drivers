cask "elgato-control-center" do
  version "1.1.2,10315"
  sha256 "c8dc50483b295f334a9b9aedf2b16367c3b7586ed9d270b6d663867e76806073"

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
