cask "steelseries-engine" do
  version "3.18.14"
  sha256 "f1d07c68d9a67c69649bd1ee416b55893a9e528f8e9ad437f1bfbf8897ca2629"

  url "https://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg",
      verified: "steelseriescdn.com/"
  appcast "https://steelseries.com/engine"
  name "SteelSeries Engine #{version.major}"
  desc "Settings for SteelSeries peripherals and accessories"
  homepage "https://steelseries.com/engine"

  auto_updates true
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
