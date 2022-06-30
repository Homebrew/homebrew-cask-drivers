cask "samsung-portable-ssd-t5" do
  version "1.6.10"
  sha256 "ad7c20b57880120ba445192fdf7383658443a0398fa1dcdf42892ab711465f2c"

  url "https://semiconductor.samsung.com/resources/software-resources/SamsungPortableSSD_Setup_Mac_#{version.dots_to_underscores}.zip"
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
              "com.samsung.portablessduniversal.softwarepkg",
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
