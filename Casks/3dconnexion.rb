cask "3dconnexion" do
  if MacOS.version < :catalina
    version "10-6-7,r3287,36E24890-6B5F-443a-8A9F-1851F9ADB985"
    sha256 "4752bd4297733743fb512121116b536ffe260152f97134398d028b9936bc26f9"
  else
    version "10-7-2,r3454,A2E276BD-4DEB-4343-BA4C-591FE7958ED9"
    sha256 "a53258a8b89d511182dd5427140ba7d1c539a152d87b255f1553704bab7413ad"
  end

  url "https://download.3dconnexion.com/drivers/mac/#{version.csv.first}_#{version.csv.third}/3DxWareMac_v#{version.csv.first}_#{version.csv.second}.dmg"
  name "3Dconnexion"
  desc "3DxWare Driver"
  homepage "https://3dconnexion.com/"

  livecheck do
    url "https://3dconnexion.com/us/drivers/"
    regex(%r{href=.*?_([\dA-F]+(?:-[\dA-F]+)*)/3DxWareMac_v(\d+(?:-\d+)*)_(r\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[2]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "Install 3Dconnexion software.pkg"

  uninstall pkgutil:   "com.3dconnexion.*",
            launchctl: [
              "com.3dconnexion.helper",
              "com.3dconnexion.nlserverIPalias",
            ],
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
