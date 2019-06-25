cask 'wacom-tablet' do
  version '6.3.35-2'
  sha256 'c9d537a54032efb7b18c274b8803bd67cdfae5648e14433e5217554b036d754b'

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
                         'com.silabs.driver.CP210xVCPDriver',
                         'com.silabs.driver.CP210xVCPDriver64',
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
