cask 'wacom-intuos-tablet' do
  version '6.3.24-1'
  sha256 '550e6c98dc30536cbc5c5095dba87070cb58da26e88a5506afdf5f3af3c5e97a'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name 'Wacom Intuos 4/5/Pro Tablet'
  homepage 'https://www.wacom.com/support/product-support/drivers'

  conflicts_with cask: 'wacom-intuos-3-tablet'

  pkg 'Install Wacom Tablet.pkg'

  uninstall launchctl: 'com.wacom.wacomtablet',
            quit:      [
                         'com.wacom.TabletDriver',
                         'com.wacom.WacomTabletDriver',
                         'com.wacom.WacomTouchDriver',
                       ],
            kext:      [
                         'com.wacom.kext.ftdi',
                         'com.wacom.kext.wacomtablet',
                         'com.silabs.driver.CP210xVCPDriver',
                         'com.silabs.driver.CP210xVCPDriver64',
                       ],
            pkgutil:   'com.wacom.TabletInstaller',
            delete:    '/Applications/Wacom Tablet.localized'

  zap delete: [
                '~/Library/Preferences/com.wacom.wacomtablet.plist',
                '~/Library/Preferences/com.wacom.wacomtablet.prefs',
                '~/Library/Preferences/com.wacom.wacomtouch.prefs',
                '~/Library/Preferences/com.wacom.RemoveWacomTablet.plist',
                '~/Library/Preferences/com.wacom.Wacom-Desktop-Center.plist',
              ]
end
