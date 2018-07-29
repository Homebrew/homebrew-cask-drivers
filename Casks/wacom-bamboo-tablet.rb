cask 'wacom-bamboo-tablet' do
  version '5.3.7-6'
  sha256 '9de34abf8a8697e9d04a54503d5d73174e8b0ca6096d9b5011f5f7f1dd152c10'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/consumer/pentablet_#{version}.dmg"
  name 'Wacom Bamboo Tablet'
  homepage 'https://www.wacom.com/support/product-support/drivers'

  pkg 'Install Wacom Tablet.pkg'

  uninstall launchctl: 'com.wacom.pentablet',
            quit:      [
                         'com.wacom.TabletDriver',
                         'com.wacom.PenTabletDriver',
                         'com.wacom.ConsumerTouchDriver',
                       ],
            pkgutil:   'com.wacom.PenTabletInstaller'
end
