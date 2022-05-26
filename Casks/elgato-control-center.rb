cask "elgato-control-center" do
  version "1.2.0,10411"
  sha256 "b7a81c663cd165da16e2ad75b928f9ed03e0eb0408b4ae7d08885a4b1a6e348b"

  url "https://edge.elgato.com/egc/macos/eccm/#{version.csv.first.major_minor}/ControlCenterMac-#{version.csv.first}.#{version.csv.second}.app.zip"
  name "Elgato Control Center"
  desc "Control your Elgato Key Lights"
  homepage "https://www.elgato.com/en/gaming/key-light"

  livecheck do
    url "https://gc-updates.elgato.com/mac/control-center-update/feed.xml"
    regex(/[_-]v?(\d+(?:\.\d{1,3})+)(?:\.(\d{4,}))?\D+?$/i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
    end
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
