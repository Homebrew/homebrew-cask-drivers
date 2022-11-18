cask "elgato-control-center" do
  version "1.3.1.10420"
  sha256 "6a4926c774192ccac43d06d4dbd35adf34a3d36ae661dea5400a44e756f5ece2"

  url "https://edge.elgato.com/egc/macos/eccm/#{version.major_minor_patch}/Control_Center_#{version}.zip"
  name "Elgato Control Center"
  desc "Control your Elgato Key Lights"
  homepage "https://www.elgato.com/en/gaming/key-light"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/Control[._-]Center[._-]v?(\d+(?:[._]\d+)+)\.zip"}i)
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
