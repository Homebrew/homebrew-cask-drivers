cask "loupedeck" do
  version "4.0"
  sha256 "0c7e02b73a28a4c31f7f450c8a470518157a633fe3e9470e74ca986aefc41189"

  # loupedeck-software-release.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://loupedeck-software-release.s3.amazonaws.com/Loupedeck+Software+v#{version}/Mac/Loupedeck_Software_v#{version}_MacOS.dmg"
  name "Loupdeck"
  homepage "https://loupedeck.com/"

  depends_on macos: ">= :sierra"

  pkg "LoupedeckInstaller #{version}.pkg"

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
