cask "drobo-dashboard" do
  version "3.6.1,115880"
  sha256 "65379a749af92e520d59560c5270e4e29888553f14f29626db90ea89f9e87fab"

  url "https://files.drobo.com/webrelease/dashboard/Drobo-Dashboard-#{version.before_comma}.dmg"
  name "Drobo Dashboard"
  desc "Management software and drivers for Data Robotics storage devices"
  homepage "https://www.drobo.com/"

  livecheck do
    skip "No version information available"
  end

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
