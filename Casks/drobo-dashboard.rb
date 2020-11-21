cask "drobo-dashboard" do
  version "3.5.2,115659"
  sha256 "6094b749c2389d9edd49f423b7f77ae9e36e6d35c1db28b7f3424814ac96afce"

  url "https://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.before_comma}.dmg"
  appcast "https://www.drobo.com/docs/start-drobo/"
  name "Drobo Dashboard"
  desc "Management software and drivers for Data Robotics storage devices"
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
