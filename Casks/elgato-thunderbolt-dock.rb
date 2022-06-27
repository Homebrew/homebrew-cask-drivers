cask "elgato-thunderbolt-dock" do
  version "1.2.10.131_40"
  sha256 "e76aff1d404451fa87d42c566475e83a09a15318cf33ad9219ed3792d5a7a098"

  url "https://edge.elgato.com/thunderbolt-dock/Elgato_Thunderbolt_Dock_Software_#{version}.pkg"
  name "Elgato Thunderbolt Dock"
  desc "Menu bar utility for Elgato Thunderbolt docks"
  homepage "https://www.elgato.com/en/dock/thunderbolt-3"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/Elgato[._-]Thunderbolt[._-]Dock[._-]Software[._-]v?(\d+(?:[._]\d+)+)\.pkg"}i)
  end

  depends_on macos: ">= :el_capitan"

  pkg "Elgato_Thunderbolt_Dock_Software_#{version}.pkg"

  uninstall pkgutil:    [
    "com.elgato.Elgato-Thunderbolt-Dock-Utility",
    "com.elgato.ElgatoThunderboltDockAudioRename",
    "com.Elgato.Thunderbolt2DockChargingSupport",
    "com.Elgato.ThunderboltDockChargingSupport",
  ],
            quit:       "com.elgato.Elgato-Thunderbolt-Dock-Utility",
            login_item: "Elgato Thunderbolt Dock Utility",
            delete:     [
              "/Applications/Elgato Thunderbolt Dock Utility.app",
              "/Library/Extensions/ElgatoThunderbolt2DockChargingSupport.kext",
              "/Library/Extensions/ElgatoThunderboltDockAudioRename.kext",
              "/Library/Extensions/ElgatoThunderboltDockChargingSupport.kext",
            ]

  zap trash: "~/Library/com.elgato.Elgato-Thunderbolt-Dock-Utility.plist"
end
