cask "3dconnexion" do
  version "11-12-13"
  sha256 "4811c5c00d9af8b1bacaf4248dc3f332bf2e3cfaf9bf5f25b16d1847c721d853"

  url "https://download.3dconnexion.com/drivers/mac/#{version.before_comma}_#{version.after_colon}/3DxWareMac_v#{version.before_comma}_#{version.after_comma.before_colon}.dmg"
  appcast "https://3dconnexion.com/us/drivers/"
  name "3Dconnexion"
  homepage "https://3dconnexion.com/"

  depends_on macos: ">= :yosemite"

  pkg "Install 3Dconnexion software.pkg"

  uninstall pkgutil:   "com.3dconnexion.*",
            launchctl: "com.3dconnexion.nlserverIPalias",
            quit:      [
              "com.3Dconnexion.3DxUpdater",
              "com.3dconnexion.*",
            ],
            script:    [
              { executable: "#{appdir}/3Dconnexion/Uninstall 3Dconnexion Driver.app/Contents/Resources/rm3dcx",
                sudo:       true },
            ],
            delete:    [
              "/Applications/3Dconnexion",
              "/Library/Extensions/3Dconnexion.kext",
              "/Library/Frameworks/3DconnexionClient.framework",
            ]

  zap trash: [
    "/Library/Application Support/3Dconnexion",
    "/Library/LaunchDaemons/com.3dconnexion.nlserverIPalias.plist",
    "/Library/PreferencePanes/3Dconnexion.prefPane",
    "~/Library/Logs/3Dconnexion",
    "~/Library/Preferences/3Dconnexion",
    "~/Library/Preferences/com.3dconnexion.*.plist",
    "~/Library/Saved Application State/com.3dconnexion.*.savedState",
  ]

  caveats do
    reboot
  end
end
