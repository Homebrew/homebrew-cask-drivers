cask "wacom-tablet" do
  version "6.4.0-5"
  sha256 "cf61837bd6768aa167cd0bdcfa0acdc109c46b59ad8f3b4b0d565f8f6ef5cac5"

  url "https://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name "Wacom Tablet"
  desc "Resources for Wacom tablets"
  homepage "https://www.wacom.com/en-us/support/product-support/drivers"

  livecheck do
    url :homepage
    regex(%r{/WacomTablet[._-]?(\d+(?:\.\d+)+(?:[_-]\d+)?)\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  pkg "Install Wacom Tablet.pkg"

  uninstall pkgutil:   "com.wacom.TabletInstaller",
            quit:      [
              "com.wacom.DisplayMgr",
              "com.wacom.RemoveWacomTablet",
              "com.wacom.TabletDriver",
              "com.wacom.UpdateHelper",
              "com.wacom.UpgradeHelper",
              "com.wacom.Wacom-Desktop-Center",
              "com.wacom.wacomtablet",
              "com.wacom.WacomTouchDriver",
            ],
            launchctl: [
              "com.wacom.DataStoreMgr",
              "com.wacom.displayhelper",
              "com.wacom.IOManager",
              "com.wacom.UpdateHelper",
              "com.wacom.wacomtablet",
            ],
            kext:      [
              "com.wacom.kext.ftdi",
              "com.wacom.kext.wacomtablet",
            ],
            delete:    "/Applications/Wacom Tablet.localized/"

  zap trash: [
    "~/Library/Application Scripts/com.wacom.DataStoreMgr",
    "~/Library/Application Scripts/com.wacom.IOManager",
    "~/Library/Application Scripts/com.wacom.RemoveWacomTablet",
    "~/Library/Application Scripts/com.wacom.TabletDriver",
    "~/Library/Application Scripts/com.wacom.Wacom-Desktop-Center",
    "~/Library/Application Scripts/com.wacom.Wacom-Display-Settings",
    "~/Library/Application Scripts/com.wacom.wacomtablet",
    "~/Library/Application Scripts/com.wacom.WacomTouchDriver",
    "~/Library/Caches/com.wacom.Wacom-Desktop-Center",
    "~/Library/Containers/com.wacom.DataStoreMgr",
    "~/Library/Containers/com.wacom.IOManager",
    "~/Library/Containers/com.wacom.RemoveWacomTablet",
    "~/Library/Containers/com.wacom.TabletDriver",
    "~/Library/Containers/com.wacom.Wacom-Desktop-Center",
    "~/Library/Containers/com.wacom.Wacom-Display-Settings",
    "~/Library/Containers/com.wacom.wacomtablet",
    "~/Library/Containers/com.wacom.WacomTouchDriver",
    "~/Library/Group Containers/*.com.wacom.WacomTabletDriver",
    "~/Library/Group Containers/group.com.wacom.TabletDriver",
    "~/Library/Preferences/com.wacom.RemoveWacomTablet.plist",
    "~/Library/Preferences/com.wacom.Wacom-Desktop-Center.plist",
    "~/Library/Preferences/com.wacom.wacomtablet.plist",
    "~/Library/Preferences/com.wacom.wacomtablet.prefs",
    "~/Library/Preferences/com.wacom.wacomtouch.prefs",
  ]
end
