cask "loupedeck" do
  version "5.2.1"
  sha256 "24378c159688c1219365bb3599bb638bf60a0a59ee36224570f5011cfc2f385e"

  url "https://5145542.fs1.hubspotusercontent-na1.net/hubfs/5145542/Knowledge%20Base/LD%20Software%20Downloads/#{version.major_minor_patch}/LoupedeckInstaller_%20#{version}.dmg",
      verified: "5145542.fs1.hubspotusercontent-na1.net/hubfs/5145542/"
  name "Loupdeck"
  desc "Software for Loupedeck consoles"
  homepage "https://loupedeck.com/"

  livecheck do
    url "https://loupedeck.com/get-started/"
    regex(/href=.*?LoupedeckInstaller(?:[._\s-]|%20)+v?(\d+(?:\.\d+)+)\.dmg/i)
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
