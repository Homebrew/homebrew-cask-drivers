cask "loupedeck" do
  version "5.0.3"
  sha256 "7e7ec5d88f8bd239d7261c720c98115afc49b8c6171bb9e779ecb111ac38a9b0"

  url "https://f.hubspotusercontent40.net/hubfs/5145542/Knowledge%20Base/LD%20Software%20Downloads/#{version}/Loupedeck%20#{version}.dmg",
      verified: "f.hubspotusercontent40.net/"
  name "Loupdeck"
  desc "Software for Loupedeck consoles"
  homepage "https://loupedeck.com/"

  livecheck do
    url "https://support.loupedeck.com/loupedeck-software-download"
    regex(/Mac\sOS\s(\d+(?:\.\d+)+)/i)
  end

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
              "com.loupedeck.ImageLibraryInstaller",
              "com.loupedeck.LibraryInstaller",
              "com.loupedeck.LoupedeckLibraryPackageManagerMacPackageInstaller",
              "com.loupedeck.LoupedeckPackageInstaller",
              "com.loupedeck.MediaInstaller",
              "com.loupedeck.PluginPackageInstaller",
            ],
            delete:  "/Applications/Loupedeck.app"
  
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
