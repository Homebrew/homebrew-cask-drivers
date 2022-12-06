cask "elgato-control-center" do
  version "1.4.0.10462"
  sha256 "19fb311146a92a19b1a754bb10f5062ee1fe1cd63d141e80a84a31726fc10773"

  url "https://edge.elgato.com/egc/macos/eccm/#{version.major_minor}/ControlCenterMac-#{version}.app.zip"
  name "Elgato Control Center"
  desc "Control your Elgato Key Lights"
  homepage "https://www.elgato.com/en/gaming/key-light"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/ControlCenterMac[._-]v?(\d+(?:[._]\d+)+)\.app\.zip"}i)
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
