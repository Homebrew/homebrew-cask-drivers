cask "loupedeck" do
  version "4.1.1"
  sha256 "2c78d44f51cf8173fad8eb5de62b147bc54eb211dc41e6c58df5289ebbe15178"

  url "https://loupedeck-software-release.s3.amazonaws.com/Software+version+#{version}/MacOS/Loupedeck-MacOS-v+#{version}.dmg",
      verified: "loupedeck-software-release.s3.amazonaws.com/"
  name "Loupdeck"
  desc "Software for Loupedeck consoles"
  homepage "https://loupedeck.com/"

  depends_on macos: ">= :sierra"

  pkg "LoupedeckInstaller.pkg"

  uninstall signal:  [
    ["TERM", "com.loupedeck.Loupedeck2"],
    ["QUIT", "com.loupedeck.Loupedeck2"],
    ["INT", "com.loupedeck.Loupedeck2"],
    ["HUP", "com.loupedeck.Loupedeck2"],
    ["KILL", "com.loupedeck.Loupedeck2"],
  ],
            pkgutil: [
              "com.loupedeck.PluginPackageInstaller",
              "com.loupedeck.ImageLibraryInstaller",
              "com.loupedeck.LoupedeckPackageInstaller",
            ],
            delete:  [
              "~/Library/Application Support/Capture One/KeyboardShortcuts/Loupedeck_beta.plist",
              "~/Library/Application Support/Adobe/CameraRaw/Settings/Loupedeck - Loke Roos",
              "~/Library/Application Support/Adobe/CameraRaw/Settings/Loupedeck - Karo Holmberg",
              "~/Library/Application Support/Adobe/Lightroom/Export Presets/Loupedeck Exports",
              "~/Library/Application Support/Adobe/Lightroom/Modules/loupedeck2.lrplugin",
              "~/Library/Application Support/LoupedeckConfig",
              "~/Library/Logs/LoupedeckConfig",
            ]
end
