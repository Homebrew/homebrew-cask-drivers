cask "elgato-control-center" do
  version "1.1.4,10368"
  sha256 "bc65b948bc417b9c2be3e993c1042da0ab8745fa9748e0a50179bfd544b46c93"

  url "https://edge.elgato.com/egc/macos/eccm/#{version.before_comma}/Control_Center_#{version.before_comma}.#{version.after_comma}.zip"
  name "Elgato Control Center"
  desc "Control your Elgato Key Lights"
  homepage "https://www.elgato.com/en/gaming/key-light"

  livecheck do
    url "https://gc-updates.elgato.com/mac/control-center-update/feed.xml"
    strategy :sparkle
  end

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
