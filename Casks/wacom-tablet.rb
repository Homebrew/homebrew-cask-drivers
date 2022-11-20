cask "wacom-tablet" do
  version "6.4.0-8"
  sha256 "374a146dabe6c8af9dea636bbc8b3a6429f87571e4bc11c9cf22a3eed095e382"

  url "https://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name "Wacom Tablet"
  desc "Resources for Wacom tablets"
  homepage "https://www.wacom.com/en-us/support/product-support/drivers"

  livecheck do
    url :homepage
    regex(%r{/WacomTablet[._-]?(\d+(?:\.\d+)+(?:[_-]\d+)?)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  pkg "Install Wacom Tablet.pkg"

  uninstall pkgutil:   "com.wacom.TabletInstaller",
            quit:      [
              "com.wacom.WacomTouchDriver",
            ],
            launchctl: [
              "application.com.wacom.TabletDriver",
              "application.com.wacom.UpgradeHelper",
              "application.com.wacom.WacomCenter",
              "application.com.wacom.WacomExperienceProgram",
              "com.wacom.DataStoreMgr",
              "com.wacom.IOManager",
              "com.wacom.UpdateHelper",
              "com.wacom.wacomtablet",
            ]
end
