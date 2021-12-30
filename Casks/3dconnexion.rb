cask "3dconnexion" do
  if MacOS.version <= :catalina
    version "10-6-7,r3287,36E24890-6B5F-443a-8A9F-1851F9ADB985"
    sha256 "4752bd4297733743fb512121116b536ffe260152f97134398d028b9936bc26f9"

    url "https://download.3dconnexion.com/drivers/mac/#{version.csv[0]}_#{version.csv[2]}/3DxWareMac_v#{version.csv[0]}_#{version.csv[1]}.dmg"

    livecheck do
      url "https://3dconnexion.com/us/drivers/"
      strategy :page_match do |page|
        match = page.match(%r{href=.*?_([\dA-F]+(?:-[\dA-F]+)*)/3DxWareMac_v(\d+(?:-\d+)*)_(r\d+)\.dmg}i)
        next if match.blank?

        "#{match[2]},#{match[3]},#{match[1]}"
      end
    end
  else
    version "10-7-0_r3411"
    sha256 "2ea64ab96f9d9d91c76f2b774e5e109bace2f85dea98991411ea544c2e1fda74"

    url "https://download.3dconnexion.com/drivers/technical_support/3DxWareMac_v#{version}.dmg"

    livecheck do
      url "https://3dconnexion.com/us/support/faq/beta-driver-for-macos-11-big-sur/"
      regex(/href=.*?3DxWareMac_v(\d+(?:-\d+)*_r\d+)\.dmg/i)
    end
  end

  name "3Dconnexion"
  desc "3DxWare Driver"
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
