cask "steelseries-gg" do
  version "33.0.0"
  sha256 "f0d6692e25a74d81ee3cb9cfc817440ad2fee2490020bf277a8560b587b72394"

  url "https://engine.steelseriescdn.com/SteelSeriesGG#{version}.pkg",
      verified: "engine.steelseriescdn.com/"
  name "SteelSeries GG #{version.major}"
  desc "Settings for SteelSeries peripherals and accessories"
  homepage "https://steelseries.com/gg"

  livecheck do
    url "https://techblog.steelseries.com"
    regex(/GG[._-]notes[._-]v?(\d+(?:\.\d+)+)\.html/i)
  end

  auto_updates true
  conflicts_with cask: "steelseries-engine"
  depends_on macos: ">= :sierra"

  pkg "SteelSeriesGG#{version}.pkg"

  uninstall launchctl: "com.steelseries.SSENext",
            quit:      [
              "com.steelseries.gg.client",
              "com.steelseries.gg.client.*",
              "com.steelseries.gg.uninstaller",
              "com.steelseries.SteelSeries-GG",
            ],
            kext:      [
              "com.steelseries.ssenext.driver",
              "com.highpoint-tech.kext.HighPointIOP",
              "com.highpoint-tech.kext.HighPointRR",
            ],
            script:    [
              { executable: "/Applications/SteelSeries GG/SteelSeries GG Uninstaller.app/Contents/Resources/Uninstall.sh",
                sudo:       true },
            ],
            pkgutil:   [
              "com.steelseries.gg.engine"
              "com.steelseries.gg.installer",
              "com.steelseries.gg.prismSyncV2",
              "com.steelseries.gg.uninstaller",
              "com.steelseries.installer.driver",
              "com.steelseries.gg.engine",
              "com.steelseries.gg.installer",
              "com.steelseries.gg.prismSyncV2",
              "com.steelseries.gg.uninstaller",
              "com.steelseries.installer.driver",
            ],
            delete:    "/Library/Application Support/SteelSeries GG"

  zap trash: [
    "~/Library/Application Support/steelseries-gg-client",
    "~/Library/Caches/com.steelseries.SteelSeries-GG",
    "~/Library/Preferences/com.steelseries.gg.client.plist",
    "~/Library/Preferences/com.steelseries.SteelSeries-GG.plist",
    "~/Library/Saved Application State/com.steelseries.gg.client.savedState",
    "~/Library/Saved Application State/com.steelseries.gg.uninstaller.savedState",
  ]
end
