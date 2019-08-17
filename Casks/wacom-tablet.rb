cask 'wacom-tablet' do
  version '6.3.36-2'
  sha256 '76564e4ae5a12df04f55878c1d4212956179f702ac71a011cbb257a023bde7c5'

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
