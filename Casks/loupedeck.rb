cask "loupedeck" do
  version "5.1.0.12046"
  sha256 "341cda78311bd58255e236819ebed1fc0d7b03f1a6ba1f31a58e6d6e068d704d"

  url "https://support.loupedeck.com/hubfs/Knowledge%20Base/LD%20Software%20Downloads/#{version.major_minor}/Loupedeck%20#{version}.dmg"
  name "Loupdeck"
  desc "Software for Loupedeck consoles"
  homepage "https://loupedeck.com/"

  livecheck do
    url "https://loupedeck.com/get-started/"
    regex(/href=.*?Loupedeck(?:[._\s-]|%20)v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "LoupedeckInstaller.pkg"

  uninstall signal:    [
              ["TERM", "com.loupedeck.Loupedeck2"],
              ["QUIT", "com.loupedeck.Loupedeck2"],
              ["INT", "com.loupedeck.Loupedeck2"],
              ["HUP", "com.loupedeck.Loupedeck2"],
              ["KILL", "com.loupedeck.Loupedeck2"],
            ],
            launchctl: "com.loupedeck.loupedeck2.launch",
            pkgutil:   [
              "com.loupedeck.ImageLibraryInstaller",
              "com.loupedeck.LibraryInstaller",
              "com.loupedeck.LoupedeckLibraryPackageManagerMacPackageInstaller",
              "com.loupedeck.LoupedeckPackageInstaller",
              "com.loupedeck.LoupedeckServiceToolPackageInstaller",
              "com.loupedeck.MediaInstaller",
              "com.loupedeck.PluginPackageInstaller",
            ],
            delete:    "/Applications/Loupedeck.app"

  zap trash: [
    "~/Library/Application Support/Adobe/CameraRaw/Settings/Loupedeck - Karo Holmberg",
    "~/Library/Application Support/Adobe/CameraRaw/Settings/Loupedeck - Loke Roos",
    "~/Library/Application Support/Adobe/Lightroom/Export Presets/Loupedeck Exports",
    "~/Library/Application Support/Adobe/Lightroom/Modules/loupedeck2.lrplugin",
    "~/Library/Application Support/Capture One/KeyboardShortcuts/Loupedeck_beta.plist",
    "~/Library/Application Support/LoupedeckConfig",
    "~/Library/Logs/LoupedeckConfig",
  ]
end
