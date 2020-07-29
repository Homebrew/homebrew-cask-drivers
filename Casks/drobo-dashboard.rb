cask "drobo-dashboard" do
  version "3.5.0,113780"
  sha256 "2ba60ae2b1f9c382977fdc26e0424241637c519e9aa2f2aeaab2183be82099c0"

  url "https://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.before_comma}.dmg"
  appcast "https://www.drobo.com/docs/start-drobo/"
  name "Drobo Dashboard"
  homepage "https://www.drobo.com/"

  depends_on macos: ">= :sierra"

  pkg "Install.app/Contents/Resources/Drobo_Dashboard_Installer_#{version.before_comma}_#{version.after_comma}.pkg"

  uninstall launchctl: "com.datarobotics.ddservice64d",
            quit:      [
              "com.datarobotics.drobo",
              "com.datarobotics.drobodashboard",
            ],
            kext:      [
              "com.TrustedData.driver.VendorSpecificType00",
              "com.drobo.SCSI.ThunderBolt",
            ],
            script:    [
              { executable: "#{staged_path}/Uninstall.app/Contents/Resources/Scripts/Drobo_Dashboard_uninstall.sh",
                sudo:       true },
            ],
            pkgutil:   "com.datarobotics.droboDashboard*",
            delete:    [
              "/Library/Application Support/Data Robotics/Drobo Dashboard",
              "/Library/Extensions/DroboTBT.kext",
              "/Library/Extensions/TrustedDataSCSIDriver.kext",
            ]

  zap trash: [
    "~/Library/Application Support/Drobo Dashboard",
    "~/Library/Preferences/com.datarobotics.drobo.plist",
    "~/Library/Saved Application State/com.datarobotics.drobodashboard.savedState",
  ]
end
