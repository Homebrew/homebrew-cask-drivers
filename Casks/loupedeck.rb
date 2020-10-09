cask "loupedeck" do
  version "4.0.1.4477"
  sha256 "55c429fcafc6aba063a73fc11949774c2057e6f1620736c6bfac400754e0bb48"

  # loupedeck-software-release.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://loupedeck-software-release.s3.amazonaws.com/Loupedeck+Software+#{version.major_minor_patch}/MacOS/LoupedeckSoftware_v#{version.major_minor_patch}.dmg"
  name "Loupdeck"
  desc "Software for Loupedeck consoles"
  homepage "https://loupedeck.com/"

  depends_on macos: ">= :sierra"

  pkg "LoupedeckInstaller_#{version}.pkg"

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
