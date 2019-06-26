cask 'wacom-bamboo-tablet' do
  version '5.3.7-6'
  sha256 '9de34abf8a8697e9d04a54503d5d73174e8b0ca6096d9b5011f5f7f1dd152c10'

  url "https://cdn.wacom.com/u/productsupport/drivers/mac/consumer/pentablet_#{version}.dmg"
  appcast 'https://www.wacom.com/support/product-support/drivers'
  name 'Wacom Bamboo Tablet'
  homepage 'https://www.wacom.com/support/product-support/drivers'

  depends_on macos: '<= :sierra'

  pkg 'Install Wacom Tablet.pkg'

  uninstall launchctl: 'com.wacom.pentablet',
            quit:      [
                         'com.wacom.ConsumerTouchDriver',
                         'com.wacom.RemovePenTablet',
                         'com.wacom.TabletDriver',
                         'com.wacom.pentablet',
                       ],
            pkgutil:   'com.wacom.PenTabletInstaller'

  zap trash: [
               '~/Library/Application Scripts/com.wacom.DataStoreMgr',
               '~/Library/Caches/com.wacom.Wacom-Desktop-Center',
               '~/Library/Containers/com.wacom.DataStoreMgr',
               '~/Library/Group Containers/*.com.wacom.WacomTabletDriver',
               '~/Library/Preferences/com.wacom.pentablet.prefs',
               '~/Library/Preferences/com.wacom.touch.prefs',
             ]
end
