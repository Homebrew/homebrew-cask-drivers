cask "elgato-thunderbolt-dock" do
  version "1.2.10,131"
  sha256 :no_check

  url "https://update.elgato.com/mac/thunderbolt-dock-update/download.php"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://update.elgato.com/mac/thunderbolt-dock-update/download.php"
  name "Elgato Thunderbolt Dock"
  desc "Menu bar utility for Elgato Thunderbolt docks"
  homepage "https://www.elgato.com/en/dock/thunderbolt-3"

  depends_on macos: ">= :el_capitan"
  container type: :pkg

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
