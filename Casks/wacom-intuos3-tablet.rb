cask 'wacom-intuos3-tablet' do
  version '6.3.34-2'
  sha256 'e4b40734864b93a4a85ac3970ef70cc6bcbb7854ed73d3ff4580d17e9a9324ce'

  url "https://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name 'Wacom Intuos3 Tablet'
  homepage 'https://www.wacom.com/support/product-support/drivers'

  depends_on macos: '<= :el_capitan'

  pkg 'Install Wacom Tablet.pkg'

  uninstall launchctl: [
                         'com.wacom.wacomtablet',
                         'com.wacom.DataStoreMgr',
                         'com.wacom.DisplayMgr',
                         'com.wacom.UpdateHelper',
                         'com.wacom.displayhelper',
                       ],
            quit:      [
                         'com.google.android.mtpagent',
                         'com.google.android.mtpviewer',
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
            delete:    [
                         '/Applications/Wacom Tablet.localized',
                         '/Library/Receipts/Wacom Tablet Docs.txt',
                       ]

  zap trash: [
               '~/Library/Preferences/com.wacom.Wacom-Desktop-Center.plist',
               '~/Library/Preferences/com.wacom.wacomtablet.prefs',
               '~/Library/Preferences/com.wacom.wacomtouch.prefs',
             ]
end
