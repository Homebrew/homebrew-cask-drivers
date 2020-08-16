cask "wacom-tablet" do
  version "6.3.40-2"
  sha256 "4d8a1594ee2cb24af2ec1dcf381a68147be9c8fbed6a46e9f29494800eb7773a"

  url "https://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  appcast "https://www.wacom.com/en-de/support/product-support/drivers"
  name "Wacom Intuos 4/5/Pro Tablet"
  homepage "https://www.wacom.com/en-us/support/product-support/drivers"

  conflicts_with cask: "wacom-intuos-3-tablet"

  pkg "Install Wacom Tablet.pkg"

  uninstall launchctl: [
    "com.wacom.wacomtablet",
    "com.wacom.UpdateHelper",
    "com.wacom.displayhelper",
    "com.wacom.DataStoreMgr",
    "com.wacom.DisplayMgr",
  ],
            quit:      [
              "com.wacom.DisplayMgr",
              "com.wacom.RemoveWacomTablet",
              "com.wacom.TabletDriver",
              "com.wacom.Wacom-Desktop-Center",
              "com.wacom.WacomTouchDriver",
              "com.wacom.wacomtablet",
            ],
            kext:      [
              "com.wacom.kext.ftdi",
              "com.wacom.kext.wacomtablet",
            ],
            pkgutil:   "com.wacom.TabletInstaller",
            delete:    "/Applications/Wacom Tablet.localized"

  zap trash: [
    "~/Library/Application Scripts/com.wacom.DataStoreMgr",
    "~/Library/Application Scripts/com.wacom.Wacom-Desktop-Center",
    "~/Library/Application Scripts/com.wacom.wacomtablet",
    "~/Library/Application Scripts/com.wacom.Wacom-Display-Settings",
    "~/Library/Application Scripts/com.wacom.TabletDriver",
    "~/Library/Application Scripts/com.wacom.IOManager",
    "~/Library/Application Scripts/com.wacom.WacomTouchDriver",
    "~/Library/Application Scripts/com.wacom.RemoveWacomTablet",
    "~/Library/Caches/com.wacom.Wacom-Desktop-Center",
    "~/Library/Containers/com.wacom.DataStoreMgr",
    "~/Library/Containers/com.wacom.wacomtablet",
    "~/Library/Containers/com.wacom.Wacom-Display-Settings",
    "~/Library/Containers/com.wacom.TabletDriver",
    "~/Library/Containers/com.wacom.IOManager",
    "~/Library/Containers/com.wacom.WacomTouchDriver",
    "~/Library/Containers/com.wacom.RemoveWacomTablet",
    "~/Library/Containers/com.wacom.Wacom-Desktop-Center",
    "~/Library/Group Containers/*.com.wacom.WacomTabletDriver",
    "~/Library/Group Containers/group.com.wacom.TabletDriver",
    "~/Library/Preferences/com.wacom.wacomtablet.plist",
    "~/Library/Preferences/com.wacom.wacomtablet.prefs",
    "~/Library/Preferences/com.wacom.wacomtouch.prefs",
    "~/Library/Preferences/com.wacom.RemoveWacomTablet.plist",
    "~/Library/Preferences/com.wacom.Wacom-Desktop-Center.plist",
  ]
end
