cask "samsung-portable-ssd-t5" do
  version "1.6.10"
  sha256 :no_check

  url "https://s3.ap-northeast-2.amazonaws.com/global.semi.static/SAMSUNG_PORTABLE_SSD_T5_01060901/SW/E25128DB3EDE0CA39ADLA9CC47CKHA7A7O48XC88S7JGAHJ2KIA553/SamsungPortableSSD_Setup_Mac.zip",
      verified: "s3.ap-northeast-2.amazonaws.com/global.semi.static/SAMSUNG_PORTABLE_SSD_T5_01060901/"
  name "Samsung Portable SSD Software for T5"
  desc "Software for Samsung external storage drives"
  homepage "https://www.samsung.com/semiconductor/minisite/ssd/download/portable/"

  livecheck do
    url :homepage
    regex(/href=.*?SamsungPortableSSD[._-]Setup[._-]Mac[._-]v?(\d+(?:[._]\d+)+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match.first.tr("_", ".") }
    end
  end

  pkg "SamsungPortableSSD_Setup_Mac.pkg"

  uninstall quit:      [
    "com.samsung.portablessd.software",
    "Samsung.T3-Log-In-Activator-for-Mac-app",
    "/Applications/SamsungPortableSSD.app",
  ],
            launchctl: [
              "com.samsung.portablessd.mon",
              "com.srib.pssddaemon",
            ],
            kext:      "com.samsung.portablessd.driver",
            pkgutil:   [
              "com.samsung.portablessd.driverpkg",
              "com.samsung.portablessd.driverXpkg",
              "com.samsung.portablessd.softwarepkg",
              "com.samsung.portablessd.t3SecurityEnablerForMac",
              "com.samsung.portablessd.t3SecurityEnablerForMac.postflight",
              "com.samsung.portablessd.samsungPortableSsdDriver.postflight",
              "com.samsung.portablessd.samsungPortableSsdDriver.preflight",
              "com.samsung.portablessd.samsungPortableSsdSoftware.preflight",
            ],
            delete:    [
              "/Applications/SamsungPortableSSD.app",
              "/Library/Extensions/SamsungPortableSSDDriver*.kext",
            ]

  zap trash: [
    "~/Library/Application Support/PortableSSD",
    "~/Library/LaunchAgents/com.samsung.portablessd.mon.plist",
    "~/Library/LaunchAgents/com.srib.pssddaemon.plist",
    "~/Library/Saved Application State/com.samsung.portablessd.*",
  ]
end
