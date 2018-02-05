cask 'wacom-graphire2-tablet' do
  version '6.2.0w4'
  sha256 'b9e7c758f56595b73eb77eeaca7599da1852d914b50a8bf7ba58b897e21dbe07'

  url "http://cdn.wacom.com/U/drivers/mac/pro/WacomTablet_#{version}.dmg"
  name 'Graphire2 Wacom Tablet'
  homepage 'https://www.wacom.com/support/graphire-support'

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
            pkgutil:   'com.wacom.installwacomtablet'

  zap trash: [
               '~/Library/Preferences/com.wacom.wacomtablet.prefs',
               '~/Library/Preferences/com.wacom.wacomtouch.prefs',
             ]
end
