cask "steelseries-engine" do
  version "3.18.1"
  sha256 "e10bb8586e4e77769b91155b6f891aa8e922b7e9d0c866e4629f26c8087be9dd"

  # steelseriescdn.com/ was verified as official when first introduced to the cask
  url "https://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg"
  appcast "https://steelseries.com/engine"
  name "SteelSeries Engine #{version.major}"
  homepage "https://steelseries.com/engine"

  auto_updates
  depends_on macos: ">= :yosemite"

  pkg "SteelSeriesEngine#{version}.pkg"

  uninstall launchctl: "com.steelseries.SSENext",
            quit:      [
              "com.steelseries.SteelSeries-Engine-#{version.major}",
              "com.steelseries.ssenext.client.*",
              "com.steelseries.ssenext.uninstaller",
            ],
            kext:      "com.steelseries.ssenext.driver",
            script:    [
              { executable: "/Applications/SteelSeries Engine #{version.major}/SteelSeries Engine #{version.major} Uninstaller.app/Contents/Resources/Uninstall.sh",
                sudo:       true },
            ],
            pkgutil:   "com.steelseries.*",
            delete:    "/Library/Application Support/SteelSeries Engine #{version.major}"

  zap trash: [
    "~/Library/Application Support/steelseries-engine-#{version.major}-client",
    "~/Library/Caches/com.steelseries.SteelSeries-Engine-#{version.major}",
    "~/Library/Logs/SteelSeries Engine #{version.major} Client",
    "~/Library/Preferences/com.steelseries.SteelSeries-Engine-#{version.major}.plist",
    "~/Library/Preferences/com.steelseries.ssenext.client.helper.plist",
    "~/Library/Preferences/com.steelseries.ssenext.client.plist",
    "~/Library/Saved Application State/com.steelseries.ssenext.client.savedState",
  ]
end
