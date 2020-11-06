cask "3dconnexion" do
  version "10-6-6,r3234:360DF97D-ED08-4ccf-A55E-0BF905E58476"
  sha256 "6c52a57a538ef10fda6611b186b13897aade6ff827ce3cb53ea16b6109942aec"

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
