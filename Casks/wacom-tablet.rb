cask 'wacom-tablet' do
  version '6.3.38-2'
  sha256 'b7ea1f65dd47e9f8d436107c0425b26a2339f7a94996bd4cc7f6b26225a79ceb'

  url "https://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  appcast 'https://www.wacom.com/en-de/support/product-support/drivers'
  name 'Wacom Intuos 4/5/Pro Tablet'
  homepage 'https://www.wacom.com/en-us/support/product-support/drivers'

  conflicts_with cask: 'wacom-intuos-3-tablet'

  pkg 'Install Wacom Tablet.pkg'

  uninstall launchctl: [
                         'com.wacom.wacomtablet',
                         'com.wacom.UpdateHelper',
                         'com.wacom.displayhelper',
                         'com.wacom.DataStoreMgr',
                         'com.wacom.DisplayMgr',
                       ],
            quit:      [
                         'com.wacom.DisplayMgr',
                         'com.wacom.RemoveWacomTablet',
                         'com.wacom.TabletDriver',
                         'com.wacom.Wacom-Desktop-Center',
                         'com.wacom.WacomTouchDriver',
                         'com.wacom.wacomtablet',
                       ],
            kext:      [
                         'com.wacom.kext.ftdi',
                         'com.wacom.kext.wacomtablet',
                       ],
            pkgutil:   'com.wacom.TabletInstaller',
            delete:    '/Applications/Wacom Tablet.localized'

  zap trash: [
               '~/Library/Application Scripts/com.wacom.DataStoreMgr',
               '~/Library/Caches/com.wacom.Wacom-Desktop-Center',
               '~/Library/Containers/com.wacom.DataStoreMgr',
               '~/Library/Group Containers/*.com.wacom.WacomTabletDriver',
               '~/Library/Preferences/com.wacom.wacomtablet.plist',
               '~/Library/Preferences/com.wacom.wacomtablet.prefs',
               '~/Library/Preferences/com.wacom.wacomtouch.prefs',
               '~/Library/Preferences/com.wacom.RemoveWacomTablet.plist',
               '~/Library/Preferences/com.wacom.Wacom-Desktop-Center.plist',
             ]
end
